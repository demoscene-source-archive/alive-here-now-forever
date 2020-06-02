
// Empathy - What Words Cannot Express
// Empathy - Sanattomuus

#pragma warning( disable : 4730 )
#pragma warning( disable : 4799 )

#define WIN32_LEAN_AND_MEAN
#define WIN32_EXTRA_LEAN
#include <windows.h>
#include <mmsystem.h>
#include <mmreg.h>
#include "../config.h"
#include <GL/gl.h>
#include "../glext.h"
#include "../oidos.h"

#define WRITEBITMAPS	0
#define WRITEWAV			0
#define VOLUME_SIZE		256
#define CHECK_ERRORS	0
#define REALMUSIC			1

#if WRITEBITMAPS
#include "../writebitmaps.h"
#endif



static const PIXELFORMATDESCRIPTOR pfd = {
    sizeof(PIXELFORMATDESCRIPTOR), 1, PFD_DRAW_TO_WINDOW|PFD_SUPPORT_OPENGL|PFD_DOUBLEBUFFER, PFD_TYPE_RGBA,
    32, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 32, 0, 0, PFD_MAIN_PLANE, 0, 0, 0, 0 };

static DEVMODE screenSettings = { {0},
    #if _MSC_VER < 1400
    0,0,148,0,0x001c0000,{0},0,0,0,0,0,0,0,0,0,{0},0,32,XRES,YRES,0,0,      // Visual C++ 6.0
    #else
    0,0,156,0,0x001c0000,{0},0,0,0,0,0,{0},0,32,XRES,YRES,{0}, 0,           // Visuatl Studio 2005
    #endif
    #if(WINVER >= 0x0400)
    0,0,0,0,0,0,
    #if (WINVER >= 0x0500) || (_WIN32_WINNT >= 0x0400)
    0,0
    #endif
    #endif
    };

#ifdef __cplusplus
extern "C" 
{
#endif
int  _fltused = 1;
#ifdef __cplusplus
}
#endif

//----------------------------------------------------------------------------

static const char *strs[] = {
	"glCreateShaderProgramv",
	"glUseProgram",
	"glUniform1i",
	"glDispatchCompute",
	"glTexStorage3D",
	"glActiveTexture",
	"glTexSubImage3D",
	"glBindImageTexture",
    };

#define NUMFUNCIONES (sizeof(strs)/sizeof(strs[0]))

#define oglCreateShaderProgramv	      ((PFNGLCREATESHADERPROGRAMVPROC)myglfunc[0])
#define oglUseProgram									((PFNGLUSEPROGRAMPROC)myglfunc[1])
#define oglUniform1i									((PFNGLUNIFORM1IPROC)myglfunc[2])
#define oglDispatchCompute						((PFNGLDISPATCHCOMPUTEPROC)myglfunc[3])
#define oglTexStorage3D  ((PFNGLTEXSTORAGE3DPROC)myglfunc[4])
#define oglActiveTexture  ((PFNGLACTIVETEXTUREPROC)myglfunc[5])
#define oglTexSubImage3D  ((PFNGLTEXSUBIMAGE3DPROC)myglfunc[6])
#define oglBindImageTexture ((PFNGLBINDIMAGETEXTUREPROC)myglfunc[7])

#define USE_SOUND_THREAD



void entrypoint( void )
{
    // full screen
    //if( ChangeDisplaySettings(&screenSettings,CDS_FULLSCREEN)!=DISP_CHANGE_SUCCESSFUL) return;
    ChangeDisplaySettings(&screenSettings,CDS_FULLSCREEN);
    ShowCursor( 0 );
    // create window
    HWND hWnd = CreateWindow( "edit",0,WS_POPUP|WS_VISIBLE,0,0,XRES,YRES,0,0,0,0);
//    if( !hWnd ) return;
    HDC hDC = GetDC(hWnd);
    // initalize opengl
    SetPixelFormat(hDC,ChoosePixelFormat(hDC,&pfd),&pfd);
    //if( !SetPixelFormat(hDC,ChoosePixelFormat(hDC,&pfd),&pfd) ) return;
    wglMakeCurrent(hDC,wglCreateContext(hDC));

	void *myglfunc[NUMFUNCIONES];

    for( int i=0; i<NUMFUNCIONES; i++ )
    {
        #ifdef WIN32
        myglfunc[i] = wglGetProcAddress( strs[i] );
        #endif
        #ifdef LINUX
        myglfunc[i] = glXGetProcAddress( (const unsigned char *)strs[i] );
        #endif
    }

#define ASCENESUNANGLE "a=1.8-t/65+.45;"

#define STRINGIFY2(x) #x
#define STRINGIFY(x) STRINGIFY2(x)
#define EVAL(x) x

//#define DOFF ((-3)+1*60+28)
//#define DOFF ((-3)+59)
#define DOFF ((-3))
#define TDIV 1
#define SUNANGLE 1.8
/*
#define T0 STRINGIFY(EVAL((0*60+0-DOFF)/TDIV))
#define T1 STRINGIFY(EVAL((0*60+26.5-DOFF)/TDIV))
#define T2 STRINGIFY(EVAL((0*60+40-DOFF)/TDIV))
#define T3 STRINGIFY(EVAL((0*60+56-DOFF)/TDIV))
#define T4 STRINGIFY(EVAL((1*60+11-DOFF)/TDIV))
#define T5 STRINGIFY(EVAL((1*60+25.5-DOFF)/TDIV))
#define T6 STRINGIFY(EVAL((1*60+40.5-DOFF)/TDIV))
#define T6B STRINGIFY(EVAL((1*60+48-DOFF)/TDIV))
#define T7 STRINGIFY(EVAL((1*60+55.5-DOFF)/TDIV))
#define T8 STRINGIFY(EVAL((2*60+10-DOFF)/TDIV))
#define T9 STRINGIFY(EVAL((2*60+27-DOFF)/TDIV))
*/
#define T0 STRINGIFY(EVAL((3)))
#define T1 STRINGIFY(EVAL((29.5)))
#define T2 STRINGIFY(EVAL((43)))
#define T3 STRINGIFY(EVAL((59)))
#define T4 STRINGIFY(EVAL((74)))
#define T5 STRINGIFY(EVAL((88.5)))
#define T6 STRINGIFY(EVAL((60+43.5)))
#define T6B STRINGIFY(EVAL((60+48+3)))
#define T7 STRINGIFY(EVAL((60+55.5+3)))
#define T8 STRINGIFY(EVAL((120+10+3)))
#define T9 STRINGIFY(EVAL((120+27+3)))

    const char csSrc[] =
        "#version 430\n"
				"uniform layout(binding=0)writeonly image3D d0;"
				"layout(location=4)uniform int time;"
         "layout(local_size_x=" STRINGIFY(VOLUME_SIZE) ") in;"
					"shared float s[" STRINGIFY(VOLUME_SIZE) "];"
					"layout(binding=0)uniform sampler3D r;"
					"float f(vec3 p)"
					"{"
						"float f=0,e=1;"
						"for(int i=0;i<7;++i)"
							"f+=(textureLod(r,p*e/64,0).z-.5)/e,e*=2;"
						"return f;"
					"}"
         "void main(){"
					"vec4 r;"
					"for(int i=0;i<2;++i){"
							"float sf=float(i+1),sd=pow(.945,sqrt(sf)),se=.9*sqrt(sf),t=float(time)/1000,d=0,h=1e4,a;"
							"vec3 v=(vec3(gl_GlobalInvocationID.yxz)/128.-1)*.8*sf*.6,ov=v;"

							"if(t>" T9 "){" // F
								"a=1.5;"
							"}else if(t>" T8 "){" // K
								"a=1.1;"
							"}else if(t>" T7 "){" // H
								"a=-3.43;"
							"}else if(t>" T6 "){" // J
								"a=.1;"
							"}else if(t>" T5 "){" // I
								"a=.1;"
							"}else if(t>" T4 "){" // G
								"a=.1;"
							"}else if(t>" T3 "){" // D
								"a=.7;"
							"}else if(t>" T2 "){" // C
								"a=-.05;"
							"}else if(t>" T1 "){" // B
								"a=.7;"
							"}else{" // A
								ASCENESUNANGLE
							"}"

							"v.xy*=mat2(cos(-a),sin(-a),-sin(-a),cos(-a));"


							"if(t>" T9 "){t-=" T9 ";" // F
								"d=max(d,clamp(mix(0.,.06,1.0-smoothstep(-.02,.02,t/135+f(v)+2*f(v*2.+20-vec3(-1,0,-.5)*t*.02)*.4+(smoothstep(.1,.7,abs(v.y)-.1)))),0.,1.));"
								"d=clamp(d/1.01+.0005/2,0.,1.);"
							"}else if(t>" T8 "){t-=" T8 ";" // K
								"h=-.1+f(vec3(v.xz,1));"
								"float n=clamp((v.y-h)*5,0,1);"
								"d=max(d,clamp(mix(0.,.06,1.-smoothstep(-.1,.1,abs(v.y-h/2.+f(v+t/20*vec3(0,0,-1))/4)-.1)),0,1));"
								"d=max(d,n);"
								"d=clamp(d/1.01*.05+.0005/2,0,1);"
							"}else if(t>" T7 "){t-=" T7 "+765.1;" // H
								"d=max(d,clamp(mix(0.,.06,1.0-smoothstep(-.012,.012,f(v)+2*f(v*2.+20-vec3(1,0,-.5)*t*.02)*.4+(smoothstep(.1,.7,abs(v.y)-.1)))),0.,1.));"
								"d=clamp(d/1.0+.0005,0.,1.);"
							"}else if(t>" T6 "){t-=" T6 ";" // J
								"d=clamp(d/1.01+.0005/2,0.,1.);"
								"h=-0.1+f(vec3(v.xz,1));\n"
								"float n=clamp((v.y-h)*3,0,1);"
								"d=max(d,clamp(mix(0.,.06,1.-smoothstep(-.02,.02,abs(v.y-h/2.+f(v+t/20*vec3(0,0,-1))/10+f(v*8+t/20*vec3(0,0,-1))/4)-.1)),0,1));"
								"d=max(d,n);"
							"}else if(t>" T5 "){t-=" T5 ";" // I
					      "d=clamp(d/1.01+.0005,0.,1.);"
								"h=-0.1+f(vec3(v.xz,1));\n"
								"float n=clamp((v.y-h)*5.,0,1);"
								"d=max(d,clamp(mix(0.,.06,1.-smoothstep(-.02,.02,abs(v.y-h/3.+f(v+t/20*vec3(0,0,-1))/10+f(v*8+t/20*vec3(0,0,-1))/4)-.1)),0,1));"
								"d=max(d,n);"
							"}else if(t>" T4 "){t-=" T4 ";" // G
								"d=max(d,clamp(mix(0.,.06,1.-smoothstep(-.02,.02,abs(v.y+f(v+t/20*vec3(1,0,1))/10+f(v*8+t/20*vec3(1,0,1))/4)-.1)),0,1));"
								"d=clamp(d/1.01+.0005/2,0.,1.);"
							"}else if(t>" T3 "){t-=" T3 ";" // D
								"d=max(d,clamp(mix(0.,.06,1.0-smoothstep(-.012,.012,f(v)+2*f(v*2.+20-vec3(1,0,-.5)*t*.02)*.4+(smoothstep(.1,.7,abs(v.y)-.1)))),0.,1.));"
								"d=clamp(d/1.0+.0005,0.,1.);"
							"}else if(t>" T2 "){t-=" T2 ";" // C
								"d=max(d,clamp(mix(0.,.06,1.0-smoothstep(-.012,.012,f(v)+2*f(v*2.+20-vec3(1,0,-.5)*t*.02)*.4+(smoothstep(.1,.7,abs(v.y)-.1)))),0.,1.));"
								"d=clamp(d/1.0+.0005,0.,1.);"
							"}else if(t>" T1 "){t-=" T1 ";" // B
								"d=max(d,clamp(mix(0.,.06,1.0-smoothstep(-.012,.012,f(v)+2*f(v*2.+20-vec3(1,0,-.5)*t*.02)*.4+(smoothstep(.1,.7,abs(v.y)-.1)))),0.,1.));"
								"d=clamp(d/1.0+.0005,0.,1.);"
							"}else{" // A
								"d=max(d,clamp(mix(0.,.06,1.0-smoothstep(-.012,.012,f(v)+.03+2*f(v*2.+20-vec3(1,0,-.5)*t*.01)*.4+(smoothstep(.1,.7,abs(v.y)-.06)))),0.,1.));"
//								"d=max(d,clamp(mix(0.,.06,1.-smoothstep(-.02,.02,abs(v.y+f(v+t/10*vec3(1,0,0))/16+f(v*12+t/10*vec3(1,0,0))/16)-.01)),0,1));"
								"d=clamp(d/1.01+.0005/2,0.,1.);"
							"}"

							"s[gl_LocalInvocationID.x]=d;"
							"barrier();"
							"if(gl_LocalInvocationID.x==0)"
							"{"
									"float a=0;"
									"for(int j=0;j<" STRINGIFY(VOLUME_SIZE) ";j++)"
										"a*=sd,a+=s[j]*se,s[j]=a;"
							"}"
							"barrier();"
							"r.xy=vec2(d,1.-s[gl_LocalInvocationID.x]);"
							"if(float(time)>(" T8 "*1000)&&float(time)<=(" T9 "*1000)){r.y*=mix(.1,1.,smoothstep(-.025*2,.025*2,f(vec3(ov.xz*4+t/16.+7,5))-.1));}"
				      "r.y*=1-smoothstep(.0,.01,v.y-h+.01);"
							//"r.y*=1-smoothstep(.0,.01,v.y-h+.01);"
						//	"if(0>1){r.y*=mix(.1,1.,smoothstep(-.025*2,.025*2,f(vec3(ov.xz*4+t/16.+7,5))-.1));}"
							"r=r.zwxy;"
	         "}"
					"imageStore(d0,ivec3(gl_GlobalInvocationID),r);"
         "}"
    ;

    static const char csSrc2[] =
        "#version 430\n"
				"layout(location=4)uniform int time;"
				"layout(binding=1)uniform sampler3D v;"
				"layout(binding=0)uniform sampler3D r;"
				"vec2 box2(vec3 ro,vec3 rd)"
				"{"
					"return vec2(max((-sign(rd.x)-ro.x)/rd.x,max((-sign(rd.y)-ro.y)/rd.y,(-sign(rd.z)-ro.z)/rd.z)),min((sign(rd.x)-ro.x)/rd.x,min((sign(rd.y)-ro.y)/rd.y,(sign(rd.z)-ro.z)/rd.z)));"
				"}"
         "void main(){"
					"uint x=uint(gl_FragCoord.x);"
					"uint y=uint(gl_FragCoord.y);"
						"float t=float(time)/1000,a,b,e=1;"
						"vec2 uv=vec2(float(x)/" STRINGIFY(XRES) ".,float(y)/" STRINGIFY(YRES) ".);"
						"vec3 ro,rd=vec3(uv*2.0-1.0,-4.8),lc=vec3(0),cp=vec3(1,2,3);"

						"if(t>" T9 "){" // F
							"ro=vec3(.2,0,3.2);"
							"a=.8;b=.6;"
						"}else if(t>" T8 "){" // K
							"ro=vec3(0,.05,3.6);"
							"a=.2;b=1.2;"
							"cp=vec3(1);"
						"}else if(t>" T7 "){" // H
							"ro=vec3(-.2,.03,3.18);"
							"a=-5.08;b=-17.18;"
						"}else if(t>" T6 "){" // J
							"ro=vec3(0,0.05,2.*1.8);"
							"if(t>" T6B "){rd.z*=1.25;ro.x-=.3;}"
							"a=.45;b=1.2;"
						"}else if(t>" T5 "){" // I
							"ro=vec3(0,0,3.6);"
							"a=.4;b=1.2;"
						"}else if(t>" T4 "){" // G
							"ro=vec3(0,0,3.6);"
							"a=.5;b=1.2;"
						"}else if(t>" T3 "){" // D
							"ro=vec3(.2,0,4.2);"
							"a=.5;b=.9;"
							"cp=vec3(1);"
						"}else if(t>" T2 "){" // C
							"ro=vec3(.05,0,3.29);"
							"a=-1.12;b=-.67;"
						"}else if(t>" T1 "){" // B
							"ro=vec3(.2,0,4.2);"
							"a=-.5;b=.9;"
						"}else{" // A
							"ro=vec3(0,0.05,2.52);"
							"a=-.25;b=1.2;"
						"}"

						"rd.y/=" STRINGIFY(XRES) "./" STRINGIFY(YRES) ".;"
						"rd=normalize(rd);"

						"ro.yz*=mat2(cos(a),sin(a),-sin(a),cos(a));rd.yz*=mat2(cos(a),sin(a),-sin(a),cos(a));"
						"ro.xz*=mat2(cos(b),sin(b),-sin(b),cos(b));rd.xz*=mat2(cos(b),sin(b),-sin(b),cos(b));"

							"if(t>" T9 "){" // F
								"a=1.5;"
							"}else if(t>" T8 "){" // K
								"a=1.1;"
							"}else if(t>" T7 "){" // H
								"a=-3.43;"
							"}else if(t>" T6 "){" // J
								"a=.1;"
							"}else if(t>" T5 "){" // I
								"a=.1;"
							"}else if(t>" T4 "){" // G
								"a=.1;"
							"}else if(t>" T3 "){" // D
								"a=.7;"
							"}else if(t>" T2 "){" // C
								"a=-.05;"
							"}else if(t>" T1 "){" // B
								"a=.7;"
							"}else{" // A
								ASCENESUNANGLE
							"}"

							"ro.xy*=mat2(cos(a),sin(a),-sin(a),cos(a));rd.xy*=mat2(cos(a),sin(a),-sin(a),cos(a));"

						//"{float xa="STRINGIFY(SUNANGLE)";""ro.xy*=mat2(cos(xa),sin(xa),-sin(xa),cos(xa));rd.xy*=mat2(cos(xa),sin(xa),-sin(xa),cos(xa));}"

						"vec2 boxi=max(box2(ro*1.01,rd*1.01),.0);"
						"ro+=rd*texelFetch(r,ivec3(x,y,0)&63,0).z/128+rd*boxi.x;"
						 "rd*=boxi.y-boxi.x;"
							"ro=-ro.yxz;rd=-rd.yxz;"
							"for(int i=0;i<512;++i)"
							"{"
									"vec3 rp=ro+rd*float(i)/512.;"
									"vec2 d;"
									"if(max(abs(rp.x),max(abs(rp.y),abs(rp.z)))>.49)d=textureLod(v,rp*.5+.5,0).zw;else d=textureLod(v,rp+.5,0).xy;"
									"lc+=pow(vec3(d.y),cp)*e*d.x;"
									"e*=1.-d.x;"
							"}"
						"vec3 c=lc+(vec3(1,.9,.4)*.08/max(.1,length((uv-vec2(-.1,1.1))*vec2(16./9.,1))-.04)+vec3(.4,.4,1)/18.+(t>" T3 "&&t<=" T4 "?vec3(.25,.25,1)/4:vec3(0)))*mix(.2,1.,e)*mix(1.5,.9,uv.y);"
						"if(t<" T1 "){b=max(0,length(uv*vec2(16./9.,1)-vec2(.45,.55))-.1);c=e*(mix(vec3(.5,.5,1)/10.,vec3(1,1,.8),exp(-b*200)/2+exp(-b*10)/2)/2.+step(.93,textureLod(r,vec3(uv*vec2(16./9.,1)*2.,.7),0).w)/20.)+vec3(.4,.4,1)/65.;}"
						"if(t>" T9 "){"
							"c=lc*vec3(1,.45,.4)*.8*mix(vec3(1),vec3(1.,.2,.2),clamp((t-" T9 ")/20.,0,1));"
							"c*=1.-clamp((t-" T9 ")/20.,0,1);"
						"}"
						"c*=vec3(1.-(pow(abs(uv.x*2-1),6)+pow(abs(uv.y*2-1),6))*.35)*1.5;"
						"c=max(c-.004,0);"
						"c=(c*(c*6.2+.5))/(c*(c*6.2+1.7)+.06);"
						"gl_FragColor=vec4(c*1.02+texelFetch(r,ivec3(x,y,0)&63,0).w/128.,1.);"	
				"}"
    ;

		static const char* shp = csSrc;
		static const char* shp2 = csSrc2;

auto prog = oglCreateShaderProgramv(GL_COMPUTE_SHADER, 1, &shp);
auto prog2 = oglCreateShaderProgramv(GL_FRAGMENT_SHADER, 1, &shp2);

#if CHECK_ERRORS
{
GLint val=0;
			((PFNGLGETPROGRAMIVPROC)wglGetProcAddress("glGetProgramiv"))(prog, GL_LINK_STATUS, &val);

if(!val)
{
        static GLchar log[10240];
        GLsizei length;
        ((PFNGLGETPROGRAMINFOLOGPROC)wglGetProcAddress("glGetProgramInfoLog"))(prog, 10239, &length, log);
MessageBoxA(hWnd,log,"bad1",MB_OK);
ExitProcess(-1);
}
}
{
GLint val=0;
			((PFNGLGETPROGRAMIVPROC)wglGetProcAddress("glGetProgramiv"))(prog2, GL_LINK_STATUS, &val);

if(!val)
{
        static GLchar log[10240];
        GLsizei length;
        ((PFNGLGETPROGRAMINFOLOGPROC)wglGetProcAddress("glGetProgramInfoLog"))(prog2, 10239, &length, log);
MessageBoxA(hWnd,log,"bad2",MB_OK);
ExitProcess(-1);
}
}
#endif



#if WRITEWAV
{
		_4klang_render(lpSoundBuffer);

    HANDLE hf = CreateFile("waveout.raw", 
                   GENERIC_READ | GENERIC_WRITE, 
                   (DWORD) 0, 
                    NULL, 
                   CREATE_ALWAYS, 
                   FILE_ATTRIBUTE_NORMAL, 
                   (HANDLE) NULL); 
    DWORD dwTmp; 

    // Copy the BITMAPFILEHEADER into the .BMP file.  
    if (!WriteFile(hf, lpSoundBuffer, sizeof(lpSoundBuffer), 
        (LPDWORD) &dwTmp,  NULL)) 
    {
    }

		ExitProcess(0);
}
#else

	Oidos_FillRandomData();

#endif

GLuint ts[2];
	glGenTextures(2,ts);

		oglActiveTexture(GL_TEXTURE0);
		glBindTexture(GL_TEXTURE_3D,ts[0]);
		oglTexStorage3D(GL_TEXTURE_3D,1,GL_RGBA8,64,64,64);
		oglTexSubImage3D(GL_TEXTURE_3D,0,0,0,0,64,64,64,GL_RGBA,GL_UNSIGNED_BYTE,Oidos_RandomData);
	
#if 0
    HANDLE hf = CreateFile("random.dat", 
                   GENERIC_READ | GENERIC_WRITE, 
                   (DWORD) 0, 
                    NULL, 
                   CREATE_ALWAYS, 
                   FILE_ATTRIBUTE_NORMAL, 
                   (HANDLE) NULL); 
    DWORD dwTmp; 

    // Copy the BITMAPFILEHEADER into the .BMP file.  
    if (!WriteFile(hf, Oidos_RandomData, 64*64*64*4, 
        (LPDWORD) &dwTmp,  NULL)) 
    {
    }

#endif

		oglActiveTexture(GL_TEXTURE1);
		glBindTexture(GL_TEXTURE_3D,ts[1]);
		oglTexStorage3D(GL_TEXTURE_3D,1,GL_RGBA16,VOLUME_SIZE,VOLUME_SIZE,VOLUME_SIZE);
		oglBindImageTexture(0,ts[1],0,GL_TRUE,0,GL_WRITE_ONLY,GL_RGBA16);

float musicticks=0.0f;

#if !WRITEBITMAPS
#if REALMUSIC
	//CreateThread(0, 0, (LPTHREAD_START_ROUTINE)Oidos_GenerateMusic, NULL, 0, 0);
	Oidos_GenerateMusic();
#else
	{sample sa = {0,0};for(unsigned long int i=0;i<Oidos_MusicLength;++i)Oidos_MusicBuffer[i]=sa;}
#endif
	Oidos_StartMusic();
#endif

    do 
    {

#if WRITEBITMAPS
static long int counter=0;
		const long int t = counter * 40;
		//const long int t = counter * 2000;
		if(t>(3*60*1000))break;
++counter;
#else

	musicticks = Oidos_GetPosition();
	const long int t = int((musicticks / Oidos_TicksPerSecond) * 1000.0f);
	
#endif

		oglUseProgram(prog);
		oglUniform1i(4,t);
		oglDispatchCompute(1,VOLUME_SIZE,VOLUME_SIZE);

		oglUseProgram(prog2);
		oglUniform1i(4,t);
		glRects(-1,-1,1,1);

#if CHECK_ERRORS
GLuint err=glGetError();
if(err)
{
MessageBoxA(hWnd,"ogl err","ogl err",MB_OK);
ExitProcess(-1);
}
#endif

 
		glFinish(); // MIGHT not be needed...

#if WRITEBITMAPS
static unsigned char framepixels[XRES*YRES*4];
glReadBuffer(GL_BACK);
glPixelStorei(GL_PACK_ALIGNMENT, 1);
glReadPixels(0,0,XRES,YRES,GL_BGRA,GL_UNSIGNED_BYTE,framepixels);
//for(int i=0;i<sizeof(framepixels);++i)framepixels[i]=255+i;
for(int y=0;y<(YRES+1)/2;++y)for(int x=0;x<XRES;++x)for(int c=0;c<4;++c){auto b=framepixels[(x+y*XRES)*4+c];framepixels[(x+y*XRES)*4+c]=framepixels[(x+(YRES-1-y)*XRES)*4+c];framepixels[(x+(YRES-1-y)*XRES)*4+c]=b;}
HBITMAP bitmap=CreateBitmap(XRES,YRES,1,32,framepixels);
PBITMAPINFO bitmapinfo=CreateBitmapInfoStruct(hWnd, bitmap);
static char filename[1024];
wsprintf(filename, "frames\\frame%06d.bmp", counter);
CreateBMPFile(hWnd, filename, bitmapinfo, bitmap, hDC);
DeleteObject(bitmap);
#endif

//        SwapBuffers( hDC );
        wglSwapLayerBuffers( hDC, WGL_SWAP_MAIN_PLANE ); //SwapBuffers( hDC );

		PeekMessageA(0, 0, 0, 0, PM_REMOVE); // <-- "fake" message handling.

 //   }while ( !GetAsyncKeyState(VK_ESCAPE) );
	} while (musicticks < Oidos_MusicLength && !GetAsyncKeyState(VK_ESCAPE));

    #ifdef CLEANDESTROY
    sndPlaySound(0,0);
    ChangeDisplaySettings( 0, 0 );
    ShowCursor(1);
    #endif

    ExitProcess(0);
	}
