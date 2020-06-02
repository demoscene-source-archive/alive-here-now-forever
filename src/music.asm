; Music converted from music.xrns 2017-12-26 19:25:39

%define MUSIC_LENGTH 1472
%define TOTAL_SAMPLES 7733248
%define MAX_TOTAL_INSTRUMENT_SAMPLES 15794176

%define SAMPLES_PER_TICK 5088
%define TICKS_PER_SECOND 8.666666667

%define NUM_TRACKS_WITH_REVERB 5
%define NUM_TRACKS_WITHOUT_REVERB 2

%define REVERB_NUM_DELAYS   32
%define REVERB_MIN_DELAY    1024
%define REVERB_MAX_DELAY    18944
%define REVERB_ADD_DELAY    0
%define REVERB_RANDOMSEED   65536
%define REVERB_MAX_DECAY    0.742483484
%define REVERB_DECAY_MUL    1.000015718
%define REVERB_FILTER_HIGH  0x3F800000 ; 1.000000000
%define REVERB_FILTER_LOW   0x3B23D709 ; 0.002500000
%define REVERB_DAMPEN_HIGH  0x3F38F5C3 ; 0.722500026
%define REVERB_DAMPEN_LOW   0x3AD1B717 ; 0.001600000
%define REVERB_VOLUME_LEFT  0x3F9E894B ; 1.238564849
%define REVERB_VOLUME_RIGHT 0x3F9E894B ; 1.238564849


	section iparam data align=4

_InstrumentParams:
.i00:
	; 00|Basskick_01
	dd	16,1,58,28,0x3E000000,0x3D000000,0x3F500000,0x3F800000,0x41040000,0x00000000,0x41A00000,0x00000000,0xBE200000,0x00000000,0x3BA00000,0x3EA00000,65536,0xFF000000,0x3D800000,0x44200000
.i06:
	; 06|Congas
	dd	40,14,51,71,0x00000000,0x3F800000,0x3F800000,0xBF600000,0x3EF40000,0x00000000,0x42480000,0x00000000,0xBE000000,0x00000000,0x00000000,0x3FA00000,1048576,0xB7800000,0x37C00000,0x42C00000
.i07:
	; 07|Congas
	dd	40,14,48,67,0x00000000,0x3F800000,0x3F800000,0xBF400000,0x3EF40000,0x00000000,0x42800000,0x00000000,0xC0000000,0x00000000,0x00000000,0x3FA00000,917504,0xB7800000,0x37C00000,0x42C00000
.i09:
	; 09|Flute_01
	dd	32,15,76,58,0x00000000,0x3F800000,0x3F760000,0xBFC00000,0x3E800000,0x42E00000,0x00000000,0x3BE00000,0x00000000,0x00000000,0x00000000,0x41900000,720896,0xB7800000,0x37C00000,0x43400000
.i12:
	; 0C|Congas
	dd	10,10,24,60,0x30000000,0x3F700000,0x3F800000,0xBF800000,0x3DD00000,0x40000000,0x00000000,0x40000000,0x00000000,0x00000000,0x00000000,0x3F800000,327680,0xB7800000,0x3D800000,0x43500000
.i10:
	; 0A|Basskick_01
	dd	53,30,34,60,0xBF600000,0x3F780000,0x3F800000,0xBE400000,0x00000000,0x00000000,0x42A80000,0x00000000,0x00000000,0x00000000,0x00000000,0x3F900000,131072,0xBA000000,0x3C800000,0x43D00000
.i11:
	; 0B|Congas
	dd	10,10,24,60,0x30000000,0x3F700000,0x3F800000,0xBF800000,0x3DD00000,0x40000000,0x00000000,0x40000000,0x00000000,0x00000000,0x00000000,0x3F800000,327680,0xB7800000,0x3E800000,0x44500000



	section itones data align=1

_InstrumentTones:
.i00:
	; 00|Basskick_01
	db	48,-128
.i06:
	; 06|Congas
	db	12,3,2,2,1,11,3,2,2,1,9,3,2,2,1,-126
.i07:
	; 07|Congas
	db	15,2,2,1,4,10,2,2,1,4,5,3,2,2,1,-126
.i09:
	; 09|Flute_01
	db	39,2,2,1,1,1,2,2,1,2,2,1,1,1,2,2,1,2,2,-123
.i12:
	; 0C|Congas
	db	34,2,2,1,2,2,1,2,7,5,2,2,1,2,2,1,2,-128
.i10:
	; 0A|Basskick_01
	db	12,3,2,2,1,-125
.i11:
	; 0B|Congas
	db	46,2,2,1,2,2,1,2,2,2,1,2,2,1,2,-128


	section trdata data align=1

_TrackData:
.t_Track07_1:
	; Track 07, column 1
	db	0,0,1,0,2,0,3,0,8,-128
.t_Perc2_1:
	; Perc 2, column 1
	db	0,0,16,1,16,1,16,1,16,1,16,-128
.t_Perc2_3:
	; Perc 2, column 3
	db	0,5,8,1,8,1,8,1,8,1,8,-128
.t_Perc2_5:
	; Perc 2, column 5
	db	0,10,5,1,5,1,5,1,5,1,5,-128
.t_Perc2_2:
	; Perc 2, column 2
	db	0,0,16,1,16,1,16,1,16,1,16,-128
.t_Perc2_4:
	; Perc 2, column 4
	db	0,5,8,1,8,1,8,1,8,1,8,-128
.t_Perc2_6:
	; Perc 2, column 6
	db	0,10,5,1,5,1,5,1,5,1,5,-128
.t_Perc1_1:
	; Perc 1, column 1
	db	0,0,8,1,8,1,8,1,8,3,8,-128
.t_Perc1_2:
	; Perc 1, column 2
	db	0,2,8,1,8,1,8,1,8,1,8,2,8,-128
.t_Perc1_3:
	; Perc 1, column 3
	db	0,6,5,1,5,0,6,1,5,0,6,0,7,1,5,0,6,1,5,0,6,1,5,1,6,1,6,0,7,1,6,-128
.t_Perc1_4:
	; Perc 1, column 4
	db	0,2,7,2,6,1,8,2,7,2,6,-128
.t_Perc1_5:
	; Perc 1, column 5
	db	0,10,7,3,6,1,3,1,2,0,3,3,3,-128
.t_Perc1_6:
	; Perc 1, column 6
	db	0,13,3,1,3,1,3,1,3,1,3,1,3,-128
.t_Track11_1:
	; #Track 11, column 1
	db	0,0,8,1,8,1,3,0,8,1,3,0,7,1,7,1,2,0,6,1,1,0,5,1,4,1,8,1,6,0,8,1,8,1,3,0,8,1,8,1,8,1,8,1,8,1,8,-128
.t_Hhat2_1:
	; Hhat 2, column 1
	db	0,0,64,1,64,1,64,1,64,1,64,-128
.t_Hhat2_2:
	; Hhat 2, column 2
	db	0,0,36,1,36,1,36,1,36,1,36,-128
.t_Hhat2_3:
	; Hhat 2, column 3
	db	0,0,27,1,27,1,27,1,27,1,27,-128
.t_Hhat2_4:
	; Hhat 2, column 4
	db	0,0,24,1,24,1,24,1,24,1,24,-128
.t_Track05_1:
	; Track 05, column 1
	db	0,0,8,1,8,1,3,0,8,1,3,0,7,1,7,1,2,0,6,1,1,0,5,1,4,0,8,1,8,1,3,0,8,1,8,1,8,1,8,1,8,1,8,-128

	section notelen data align=1

_NoteLengths:
	; Track 07, column 1
L_Track07_1:
	db	32,64
	; Position 1, pattern 1
	db	64
	; Position 2, pattern 2
	db	64
	; Position 3, pattern 3
	db	64
	; Position 4, pattern 4
	db	64
	; Position 5, pattern 5
	db	64
	; Position 6, pattern 6
	db	64
	; Position 7, pattern 7
	db	64
	; Position 8, pattern 8
	db	64
	; Position 9, pattern 9
	db	64
	; Position 10, pattern 10
	db	64
	; Position 11, pattern 11
	db	64
	; Position 12, pattern 12
	db	64
	; Position 13, pattern 13
	db	64
	; Position 14, pattern 14
	db	64
	; Position 15, pattern 15
	db	64
	; Position 16, pattern 16
	db	64
	; Position 17, pattern 17
	db	64
	; Position 18, pattern 18
	db	64
	; Position 19, pattern 19
	db	32
	db	0

	; Perc 2, column 1
L_Perc2_1:
	db	-1,243
	; Position 3, pattern 3
	db	13
	; Position 4, pattern 4
	db	64
	; Position 5, pattern 5
	db	64
	; Position 6, pattern 6
	db	64
	; Position 7, pattern 7
	db	64
	; Position 8, pattern 8
	db	64
	; Position 9, pattern 9
	db	64
	; Position 10, pattern 10
	db	64
	; Position 11, pattern 11
	db	64
	; Position 12, pattern 12
	db	64
	; Position 13, pattern 13
	db	64
	; Position 14, pattern 14
	db	64
	; Position 15, pattern 15
	db	64
	; Position 16, pattern 16
	db	64
	; Position 17, pattern 17
	db	64
	; Position 18, pattern 18
	db	64
	; Position 19, pattern 19
	db	-1,192
	db	0

	; Perc 2, column 3
L_Perc2_3:
	db	-1,247
	; Position 3, pattern 3
	db	9
	; Position 4, pattern 4
	db	64
	; Position 5, pattern 5
	db	64
	; Position 6, pattern 6
	db	64
	; Position 7, pattern 7
	db	64
	; Position 8, pattern 8
	db	64
	; Position 9, pattern 9
	db	64
	; Position 10, pattern 10
	db	64
	; Position 11, pattern 11
	db	64
	; Position 12, pattern 12
	db	64
	; Position 13, pattern 13
	db	64
	; Position 14, pattern 14
	db	64
	; Position 15, pattern 15
	db	64
	; Position 16, pattern 16
	db	64
	; Position 17, pattern 17
	db	64
	; Position 18, pattern 18
	db	64
	; Position 19, pattern 19
	db	-1,144
	db	0

	; Perc 2, column 5
L_Perc2_5:
	db	-1,251
	; Position 3, pattern 3
	db	5
	; Position 4, pattern 4
	db	64
	; Position 5, pattern 5
	db	64
	; Position 6, pattern 6
	db	64
	; Position 7, pattern 7
	db	64
	; Position 8, pattern 8
	db	64
	; Position 9, pattern 9
	db	64
	; Position 10, pattern 10
	db	64
	; Position 11, pattern 11
	db	64
	; Position 12, pattern 12
	db	64
	; Position 13, pattern 13
	db	64
	; Position 14, pattern 14
	db	64
	; Position 15, pattern 15
	db	64
	; Position 16, pattern 16
	db	64
	; Position 17, pattern 17
	db	64
	; Position 18, pattern 18
	db	64
	; Position 19, pattern 19
	db	88
	db	0

	; Perc 2, column 2
L_Perc2_2:
	db	-1,245
	; Position 3, pattern 3
	db	11
	; Position 4, pattern 4
	db	64
	; Position 5, pattern 5
	db	64
	; Position 6, pattern 6
	db	64
	; Position 7, pattern 7
	db	64
	; Position 8, pattern 8
	db	64
	; Position 9, pattern 9
	db	64
	; Position 10, pattern 10
	db	64
	; Position 11, pattern 11
	db	64
	; Position 12, pattern 12
	db	64
	; Position 13, pattern 13
	db	64
	; Position 14, pattern 14
	db	64
	; Position 15, pattern 15
	db	64
	; Position 16, pattern 16
	db	64
	; Position 17, pattern 17
	db	64
	; Position 18, pattern 18
	db	64
	; Position 19, pattern 19
	db	-1,160
	db	0

	; Perc 2, column 4
L_Perc2_4:
	db	-1,249
	; Position 3, pattern 3
	db	7
	; Position 4, pattern 4
	db	64
	; Position 5, pattern 5
	db	64
	; Position 6, pattern 6
	db	64
	; Position 7, pattern 7
	db	64
	; Position 8, pattern 8
	db	64
	; Position 9, pattern 9
	db	64
	; Position 10, pattern 10
	db	64
	; Position 11, pattern 11
	db	64
	; Position 12, pattern 12
	db	64
	; Position 13, pattern 13
	db	64
	; Position 14, pattern 14
	db	64
	; Position 15, pattern 15
	db	64
	; Position 16, pattern 16
	db	64
	; Position 17, pattern 17
	db	64
	; Position 18, pattern 18
	db	64
	; Position 19, pattern 19
	db	-1,128
	db	0

	; Perc 2, column 6
L_Perc2_6:
	db	-1,253
	; Position 3, pattern 3
	db	3
	; Position 4, pattern 4
	db	64
	; Position 5, pattern 5
	db	64
	; Position 6, pattern 6
	db	64
	; Position 7, pattern 7
	db	64
	; Position 8, pattern 8
	db	64
	; Position 9, pattern 9
	db	64
	; Position 10, pattern 10
	db	64
	; Position 11, pattern 11
	db	64
	; Position 12, pattern 12
	db	64
	; Position 13, pattern 13
	db	64
	; Position 14, pattern 14
	db	64
	; Position 15, pattern 15
	db	64
	; Position 16, pattern 16
	db	64
	; Position 17, pattern 17
	db	64
	; Position 18, pattern 18
	db	64
	; Position 19, pattern 19
	db	72
	db	0

	; Perc 1, column 1
L_Perc1_1:
	db	-1,248
	; Position 3, pattern 3
	db	8
	; Position 4, pattern 4
	db	64
	; Position 5, pattern 5
	db	64
	; Position 6, pattern 6
	db	64
	; Position 7, pattern 7
	db	64
	; Position 8, pattern 8
	db	64
	; Position 9, pattern 9
	db	64
	; Position 10, pattern 10
	db	64
	; Position 11, pattern 11
	db	64
	; Position 12, pattern 12
	db	64
	; Position 13, pattern 13
	db	64
	; Position 14, pattern 14
	db	64
	; Position 15, pattern 15
	db	64
	; Position 16, pattern 16
	db	64
	; Position 17, pattern 17
	db	64
	; Position 18, pattern 18
	db	64
	; Position 19, pattern 19
	db	120
	db	0

	; Perc 1, column 2
L_Perc1_2:
	db	-1,250
	; Position 3, pattern 3
	db	6
	; Position 4, pattern 4
	db	64
	; Position 5, pattern 5
	db	64
	; Position 6, pattern 6
	db	64
	; Position 7, pattern 7
	db	64
	; Position 8, pattern 8
	db	64
	; Position 9, pattern 9
	db	64
	; Position 10, pattern 10
	db	64
	; Position 11, pattern 11
	db	64
	; Position 12, pattern 12
	db	64
	; Position 13, pattern 13
	db	64
	; Position 14, pattern 14
	db	64
	; Position 15, pattern 15
	db	64
	; Position 16, pattern 16
	db	64
	; Position 17, pattern 17
	db	64
	; Position 18, pattern 18
	db	64
	; Position 19, pattern 19
	db	112
	db	0

	; Perc 1, column 3
L_Perc1_3:
	db	-1,252
	; Position 3, pattern 3
	db	4
	; Position 4, pattern 4
	db	28,36
	; Position 5, pattern 5
	db	28,36
	; Position 6, pattern 6
	db	28,36
	; Position 7, pattern 7
	db	28,20,16
	; Position 8, pattern 8
	db	28,16,20
	; Position 9, pattern 9
	db	28,16,20
	; Position 10, pattern 10
	db	28,36
	; Position 11, pattern 11
	db	28,36
	; Position 12, pattern 12
	db	28,36
	; Position 13, pattern 13
	db	28,16,20
	; Position 14, pattern 14
	db	28,36
	; Position 15, pattern 15
	db	28,36
	; Position 16, pattern 16
	db	28,36
	; Position 17, pattern 17
	db	28,16,20
	; Position 18, pattern 18
	db	28,36
	; Position 19, pattern 19
	db	104
	db	0

	; Perc 1, column 4
L_Perc1_4:
	db	-3,0
	; Position 8, pattern 8
	db	64
	; Position 9, pattern 9
	db	64
	; Position 10, pattern 10
	db	64
	; Position 11, pattern 11
	db	64
	; Position 12, pattern 12
	db	-1,128
	; Position 14, pattern 14
	db	64
	; Position 15, pattern 15
	db	64
	; Position 16, pattern 16
	db	-1,128
	; Position 18, pattern 18
	db	64
	; Position 19, pattern 19
	db	96
	db	0

	; Perc 1, column 5
L_Perc1_5:
	db	-2,236
	; Position 7, pattern 7
	db	28
	; Position 8, pattern 8
	db	-1,164
	; Position 10, pattern 10
	db	16,4
	; Position 11, pattern 11
	db	28,32,4
	; Position 12, pattern 12
	db	60,4
	; Position 13, pattern 13
	db	56,8
	; Position 14, pattern 14
	db	20,8,28,8
	; Position 15, pattern 15
	db	28,36
	; Position 16, pattern 16
	db	60,4
	; Position 17, pattern 17
	db	56,8
	; Position 18, pattern 18
	db	20,8,28,8
	; Position 19, pattern 19
	db	80
	db	0

	; Perc 1, column 6
L_Perc1_6:
	db	-1,252
	; Position 3, pattern 3
	db	4
	; Position 4, pattern 4
	db	56,8
	; Position 5, pattern 5
	db	56,8
	; Position 6, pattern 6
	db	60,4
	; Position 7, pattern 7
	db	64
	; Position 8, pattern 8
	db	56,8
	; Position 9, pattern 9
	db	56,8
	; Position 10, pattern 10
	db	56,8
	; Position 11, pattern 11
	db	56,8
	; Position 12, pattern 12
	db	56,8
	; Position 13, pattern 13
	db	64
	; Position 14, pattern 14
	db	52,12
	; Position 15, pattern 15
	db	56,8
	; Position 16, pattern 16
	db	56,8
	; Position 17, pattern 17
	db	64
	; Position 18, pattern 18
	db	52,12
	; Position 19, pattern 19
	db	64
	db	0

	; #Track 11, column 1
L_Track11_1:
	; Position 0, pattern 0
	db	16,16,32
	; Position 1, pattern 1
	db	16,16,28,2,14
	; Position 2, pattern 2
	db	4,44,2,2
	; Position 3, pattern 3
	db	12,4,48
	; Position 4, pattern 4
	db	16,16,32
	; Position 5, pattern 5
	db	16,16,28,2,14
	; Position 6, pattern 6
	db	4,44,2,2
	; Position 7, pattern 7
	db	12,4,48
	; Position 8, pattern 8
	db	16,16,16,16
	; Position 9, pattern 9
	db	16,16,16,12,4
	; Position 10, pattern 10
	db	16,14,2,24,8
	; Position 11, pattern 11
	db	14,2,12,4,32
	; Position 12, pattern 12
	db	16,16,32
	; Position 13, pattern 13
	db	16,14,2,28,2,8
	; Position 14, pattern 14
	db	6,20,6,6,8,8,4
	; Position 15, pattern 15
	db	64
	; Position 16, pattern 16
	db	0

	; Hhat 2, column 1
L_Hhat2_1:
	db	-2,0
	; Position 4, pattern 4
	db	8,8,8,8,8,8,8,8
	; Position 5, pattern 5
	db	8,8,8,8,8,8,8,8
	; Position 6, pattern 6
	db	8,8,8,8,8,8,8,8
	; Position 7, pattern 7
	db	8,8,8,8,8,8,8,8
	; Position 8, pattern 8
	db	8,8,8,8,8,8,8,8
	; Position 9, pattern 9
	db	8,8,8,8,8,8,8,8
	; Position 10, pattern 10
	db	8,8,8,8,8,8,8,8
	; Position 11, pattern 11
	db	8,8,8,8,8,8,8,8
	; Position 12, pattern 12
	db	8,8,8,8,8,8,8,8
	; Position 13, pattern 13
	db	8,8,8,8,8,8,8,8
	; Position 14, pattern 14
	db	8,8,8,8,8,8,8,8
	; Position 15, pattern 15
	db	8,8,8,8,8,8,8,8
	; Position 16, pattern 16
	db	8,8,8,8,8,8,8,8
	; Position 17, pattern 17
	db	8,8,8,8,8,8,8,8
	; Position 18, pattern 18
	db	8,8,8,8,8,8,8,8
	; Position 19, pattern 19
	db	8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,24
	db	0

	; Hhat 2, column 2
L_Hhat2_2:
	db	-2,2
	; Position 4, pattern 4
	db	8,8,8,8,8,8,8,8
	; Position 5, pattern 5
	db	8,8,8,8,8,8,8,8
	; Position 6, pattern 6
	db	8,8,8,8,8,8,8,8
	; Position 7, pattern 7
	db	8,8,8,8,8,8,8,8
	; Position 8, pattern 8
	db	8,8,8,8,8,8,8,8
	; Position 9, pattern 9
	db	8,8,8,8,8,8,8,8
	; Position 10, pattern 10
	db	8,8,8,8,8,8,8,8
	; Position 11, pattern 11
	db	8,8,8,8,8,8,8,8
	; Position 12, pattern 12
	db	8,8,8,8,8,8,8,8
	; Position 13, pattern 13
	db	8,8,8,8,8,8,8,8
	; Position 14, pattern 14
	db	8,8,8,8,8,8,8,8
	; Position 15, pattern 15
	db	8,8,8,8,8,8,8,8
	; Position 16, pattern 16
	db	8,8,8,8,8,8,8,8
	; Position 17, pattern 17
	db	8,8,8,8,8,8,8,8
	; Position 18, pattern 18
	db	8,8,8,8,8,8,8,8
	; Position 19, pattern 19
	db	8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,22
	db	0

	; Hhat 2, column 3
L_Hhat2_3:
	db	-2,4
	; Position 4, pattern 4
	db	8,8,8,8,8,8,8,8
	; Position 5, pattern 5
	db	8,8,8,8,8,8,8,8
	; Position 6, pattern 6
	db	8,8,8,8,8,8,8,8
	; Position 7, pattern 7
	db	8,8,8,8,8,8,8,8
	; Position 8, pattern 8
	db	8,8,8,8,8,8,8,8
	; Position 9, pattern 9
	db	8,8,8,8,8,8,8,8
	; Position 10, pattern 10
	db	8,8,8,8,8,8,8,8
	; Position 11, pattern 11
	db	8,8,8,8,8,8,8,8
	; Position 12, pattern 12
	db	8,8,8,8,8,8,8,8
	; Position 13, pattern 13
	db	8,8,8,8,8,8,8,8
	; Position 14, pattern 14
	db	8,8,8,8,8,8,8,8
	; Position 15, pattern 15
	db	8,8,8,8,8,8,8,8
	; Position 16, pattern 16
	db	8,8,8,8,8,8,8,8
	; Position 17, pattern 17
	db	8,8,8,8,8,8,8,8
	; Position 18, pattern 18
	db	8,8,8,8,8,8,8,8
	; Position 19, pattern 19
	db	8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,20
	db	0

	; Hhat 2, column 4
L_Hhat2_4:
	db	-2,6
	; Position 4, pattern 4
	db	8,8,8,8,8,8,8,8
	; Position 5, pattern 5
	db	8,8,8,8,8,8,8,8
	; Position 6, pattern 6
	db	8,8,8,8,8,8,8,8
	; Position 7, pattern 7
	db	8,8,8,8,8,8,8,8
	; Position 8, pattern 8
	db	8,8,8,8,8,8,8,8
	; Position 9, pattern 9
	db	8,8,8,8,8,8,8,8
	; Position 10, pattern 10
	db	8,8,8,8,8,8,8,8
	; Position 11, pattern 11
	db	8,8,8,8,8,8,8,8
	; Position 12, pattern 12
	db	8,8,8,8,8,8,8,8
	; Position 13, pattern 13
	db	8,8,8,8,8,8,8,8
	; Position 14, pattern 14
	db	8,8,8,8,8,8,8,8
	; Position 15, pattern 15
	db	8,8,8,8,8,8,8,8
	; Position 16, pattern 16
	db	8,8,8,8,8,8,8,8
	; Position 17, pattern 17
	db	8,8,8,8,8,8,8,8
	; Position 18, pattern 18
	db	8,8,8,8,8,8,8,8
	; Position 19, pattern 19
	db	8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,18
	db	0

	; Track 05, column 1
L_Track05_1:
	; Position 0, pattern 0
	db	16,16,32
	; Position 1, pattern 1
	db	16,16,28,2,14
	; Position 2, pattern 2
	db	4,44,2,2
	; Position 3, pattern 3
	db	12,4,48
	; Position 4, pattern 4
	db	16,16,32
	; Position 5, pattern 5
	db	16,16,28,2,14
	; Position 6, pattern 6
	db	4,44,2,2
	; Position 7, pattern 7
	db	12,4,48
	; Position 8, pattern 8
	db	16,16,16,16
	; Position 9, pattern 9
	db	16,16,16,12,4
	; Position 10, pattern 10
	db	16,14,2,24,8
	; Position 11, pattern 11
	db	14,2,12,4,32
	; Position 12, pattern 12
	db	16,16,32
	; Position 13, pattern 13
	db	16,14,2,28,2,8
	; Position 14, pattern 14
	db	6,20,6,6,8,8,4
	; Position 15, pattern 15
	db	64
	; Position 16, pattern 16
	db	0


	section notesamp data align=1

_NoteSamples:
	; Track 07, column 1
S_Track07_1:
	db	0,1
	; Position 1, pattern 1
	db	1
	; Position 2, pattern 2
	db	2
	; Position 3, pattern 3
	db	3
	; Position 4, pattern 4
	db	4
	; Position 5, pattern 5
	db	4
	; Position 6, pattern 6
	db	4
	; Position 7, pattern 7
	db	4
	; Position 8, pattern 8
	db	4
	; Position 9, pattern 9
	db	4
	; Position 10, pattern 10
	db	4
	; Position 11, pattern 11
	db	4
	; Position 12, pattern 12
	db	4
	; Position 13, pattern 13
	db	4
	; Position 14, pattern 14
	db	4
	; Position 15, pattern 15
	db	4
	; Position 16, pattern 16
	db	4
	; Position 17, pattern 17
	db	4
	; Position 18, pattern 18
	db	4
	; Position 19, pattern 19
	db	4,0

	; Perc 2, column 1
S_Perc2_1:
	db	0
	; Position 3, pattern 3
	db	5
	; Position 4, pattern 4
	db	5
	; Position 5, pattern 5
	db	4
	; Position 6, pattern 6
	db	3
	; Position 7, pattern 7
	db	2
	; Position 8, pattern 8
	db	5
	; Position 9, pattern 9
	db	4
	; Position 10, pattern 10
	db	2
	; Position 11, pattern 11
	db	3
	; Position 12, pattern 12
	db	5
	; Position 13, pattern 13
	db	2
	; Position 14, pattern 14
	db	3
	; Position 15, pattern 15
	db	1
	; Position 16, pattern 16
	db	5
	; Position 17, pattern 17
	db	2
	; Position 18, pattern 18
	db	3
	; Position 19, pattern 19
	db	1,0

	; Perc 2, column 3
S_Perc2_3:
	db	0
	; Position 3, pattern 3
	db	5
	; Position 4, pattern 4
	db	5
	; Position 5, pattern 5
	db	4
	; Position 6, pattern 6
	db	3
	; Position 7, pattern 7
	db	2
	; Position 8, pattern 8
	db	5
	; Position 9, pattern 9
	db	4
	; Position 10, pattern 10
	db	2
	; Position 11, pattern 11
	db	3
	; Position 12, pattern 12
	db	5
	; Position 13, pattern 13
	db	2
	; Position 14, pattern 14
	db	3
	; Position 15, pattern 15
	db	1
	; Position 16, pattern 16
	db	5
	; Position 17, pattern 17
	db	2
	; Position 18, pattern 18
	db	3
	; Position 19, pattern 19
	db	1,0

	; Perc 2, column 5
S_Perc2_5:
	db	0
	; Position 3, pattern 3
	db	5
	; Position 4, pattern 4
	db	5
	; Position 5, pattern 5
	db	4
	; Position 6, pattern 6
	db	3
	; Position 7, pattern 7
	db	2
	; Position 8, pattern 8
	db	5
	; Position 9, pattern 9
	db	4
	; Position 10, pattern 10
	db	2
	; Position 11, pattern 11
	db	3
	; Position 12, pattern 12
	db	5
	; Position 13, pattern 13
	db	2
	; Position 14, pattern 14
	db	3
	; Position 15, pattern 15
	db	1
	; Position 16, pattern 16
	db	5
	; Position 17, pattern 17
	db	2
	; Position 18, pattern 18
	db	3
	; Position 19, pattern 19
	db	1,0

	; Perc 2, column 2
S_Perc2_2:
	db	0
	; Position 3, pattern 3
	db	4
	; Position 4, pattern 4
	db	4
	; Position 5, pattern 5
	db	3
	; Position 6, pattern 6
	db	2
	; Position 7, pattern 7
	db	1
	; Position 8, pattern 8
	db	4
	; Position 9, pattern 9
	db	3
	; Position 10, pattern 10
	db	1
	; Position 11, pattern 11
	db	2
	; Position 12, pattern 12
	db	4
	; Position 13, pattern 13
	db	1
	; Position 14, pattern 14
	db	2
	; Position 15, pattern 15
	db	5
	; Position 16, pattern 16
	db	4
	; Position 17, pattern 17
	db	1
	; Position 18, pattern 18
	db	2
	; Position 19, pattern 19
	db	5,0

	; Perc 2, column 4
S_Perc2_4:
	db	0
	; Position 3, pattern 3
	db	4
	; Position 4, pattern 4
	db	4
	; Position 5, pattern 5
	db	3
	; Position 6, pattern 6
	db	2
	; Position 7, pattern 7
	db	1
	; Position 8, pattern 8
	db	4
	; Position 9, pattern 9
	db	3
	; Position 10, pattern 10
	db	1
	; Position 11, pattern 11
	db	2
	; Position 12, pattern 12
	db	4
	; Position 13, pattern 13
	db	1
	; Position 14, pattern 14
	db	2
	; Position 15, pattern 15
	db	5
	; Position 16, pattern 16
	db	4
	; Position 17, pattern 17
	db	1
	; Position 18, pattern 18
	db	2
	; Position 19, pattern 19
	db	5,0

	; Perc 2, column 6
S_Perc2_6:
	db	0
	; Position 3, pattern 3
	db	5
	; Position 4, pattern 4
	db	5
	; Position 5, pattern 5
	db	4
	; Position 6, pattern 6
	db	3
	; Position 7, pattern 7
	db	2
	; Position 8, pattern 8
	db	5
	; Position 9, pattern 9
	db	4
	; Position 10, pattern 10
	db	2
	; Position 11, pattern 11
	db	3
	; Position 12, pattern 12
	db	5
	; Position 13, pattern 13
	db	2
	; Position 14, pattern 14
	db	3
	; Position 15, pattern 15
	db	1
	; Position 16, pattern 16
	db	5
	; Position 17, pattern 17
	db	2
	; Position 18, pattern 18
	db	3
	; Position 19, pattern 19
	db	1,0

	; Perc 1, column 1
S_Perc1_1:
	db	0
	; Position 3, pattern 3
	db	4
	; Position 4, pattern 4
	db	4
	; Position 5, pattern 5
	db	3
	; Position 6, pattern 6
	db	2
	; Position 7, pattern 7
	db	3
	; Position 8, pattern 8
	db	4
	; Position 9, pattern 9
	db	3
	; Position 10, pattern 10
	db	1
	; Position 11, pattern 11
	db	2
	; Position 12, pattern 12
	db	4
	; Position 13, pattern 13
	db	3
	; Position 14, pattern 14
	db	2
	; Position 15, pattern 15
	db	5
	; Position 16, pattern 16
	db	4
	; Position 17, pattern 17
	db	3
	; Position 18, pattern 18
	db	2
	; Position 19, pattern 19
	db	5,0

	; Perc 1, column 2
S_Perc1_2:
	db	0
	; Position 3, pattern 3
	db	5
	; Position 4, pattern 4
	db	5
	; Position 5, pattern 5
	db	4
	; Position 6, pattern 6
	db	3
	; Position 7, pattern 7
	db	4
	; Position 8, pattern 8
	db	5
	; Position 9, pattern 9
	db	4
	; Position 10, pattern 10
	db	1
	; Position 11, pattern 11
	db	2
	; Position 12, pattern 12
	db	5
	; Position 13, pattern 13
	db	4
	; Position 14, pattern 14
	db	2
	; Position 15, pattern 15
	db	6
	; Position 16, pattern 16
	db	5
	; Position 17, pattern 17
	db	4
	; Position 18, pattern 18
	db	2
	; Position 19, pattern 19
	db	6,0

	; Perc 1, column 3
S_Perc1_3:
	db	0
	; Position 3, pattern 3
	db	9
	; Position 4, pattern 4
	db	9,7
	; Position 5, pattern 5
	db	7,4
	; Position 6, pattern 6
	db	2,1
	; Position 7, pattern 7
	db	4,8,0
	; Position 8, pattern 8
	db	13,15,10
	; Position 9, pattern 9
	db	13,12,8
	; Position 10, pattern 10
	db	5,3
	; Position 11, pattern 11
	db	6,8
	; Position 12, pattern 12
	db	9,7
	; Position 13, pattern 13
	db	4,7,9
	; Position 14, pattern 14
	db	6,8
	; Position 15, pattern 15
	db	14,11
	; Position 16, pattern 16
	db	9,7
	; Position 17, pattern 17
	db	4,7,9
	; Position 18, pattern 18
	db	6,8
	; Position 19, pattern 19
	db	14,0

	; Perc 1, column 4
S_Perc1_4:
	db	0
	; Position 8, pattern 8
	db	5
	; Position 9, pattern 9
	db	2
	; Position 10, pattern 10
	db	3
	; Position 11, pattern 11
	db	1
	; Position 12, pattern 12
	db	0
	; Position 14, pattern 14
	db	1
	; Position 15, pattern 15
	db	4
	; Position 16, pattern 16
	db	0
	; Position 18, pattern 18
	db	1
	; Position 19, pattern 19
	db	4,0

	; Perc 1, column 5
S_Perc1_5:
	db	0
	; Position 7, pattern 7
	db	1
	; Position 8, pattern 8
	db	0
	; Position 10, pattern 10
	db	2,0
	; Position 11, pattern 11
	db	3,5,0
	; Position 12, pattern 12
	db	2,0
	; Position 13, pattern 13
	db	3,0
	; Position 14, pattern 14
	db	3,0,5,0
	; Position 15, pattern 15
	db	6,4
	; Position 16, pattern 16
	db	2,0
	; Position 17, pattern 17
	db	3,0
	; Position 18, pattern 18
	db	3,0,5,0
	; Position 19, pattern 19
	db	6,0

	; Perc 1, column 6
S_Perc1_6:
	db	0
	; Position 3, pattern 3
	db	2
	; Position 4, pattern 4
	db	2,0
	; Position 5, pattern 5
	db	3,0
	; Position 6, pattern 6
	db	2,0
	; Position 7, pattern 7
	db	1
	; Position 8, pattern 8
	db	4,0
	; Position 9, pattern 9
	db	5,0
	; Position 10, pattern 10
	db	6,0
	; Position 11, pattern 11
	db	5,0
	; Position 12, pattern 12
	db	2,0
	; Position 13, pattern 13
	db	1
	; Position 14, pattern 14
	db	5,0
	; Position 15, pattern 15
	db	2,0
	; Position 16, pattern 16
	db	2,0
	; Position 17, pattern 17
	db	1
	; Position 18, pattern 18
	db	5,0
	; Position 19, pattern 19
	db	2,0

	; #Track 11, column 1
S_Track11_1:
	; Position 0, pattern 0
	db	10,8,5
	; Position 1, pattern 1
	db	12,11,9,6,7
	; Position 2, pattern 2
	db	1,1,2,3
	; Position 3, pattern 3
	db	4,2,2
	; Position 4, pattern 4
	db	22,21,19
	; Position 5, pattern 5
	db	23,22,21,19,20
	; Position 6, pattern 6
	db	13,13,16,17
	; Position 7, pattern 7
	db	18,14,14
	; Position 8, pattern 8
	db	22,21,19,20
	; Position 9, pattern 9
	db	23,22,21,20,20
	; Position 10, pattern 10
	db	16,18,19,16,23
	; Position 11, pattern 11
	db	22,21,21,19,15
	; Position 12, pattern 12
	db	22,21,19
	; Position 13, pattern 13
	db	21,19,19,15,19,20
	; Position 14, pattern 14
	db	22,21,16,23,22,21,19
	; Position 15, pattern 15
	db	13
	; Position 16, pattern 16
	db	0

	; Hhat 2, column 1
S_Hhat2_1:
	db	0
	; Position 4, pattern 4
	db	5,5,5,5,5,5,5,5
	; Position 5, pattern 5
	db	4,4,4,4,4,4,4,4
	; Position 6, pattern 6
	db	3,3,3,3,3,3,3,3
	; Position 7, pattern 7
	db	2,2,2,2,2,2,2,2
	; Position 8, pattern 8
	db	5,5,5,5,5,5,5,5
	; Position 9, pattern 9
	db	4,4,4,4,4,4,4,4
	; Position 10, pattern 10
	db	2,2,2,2,2,2,2,2
	; Position 11, pattern 11
	db	3,3,3,3,3,3,3,3
	; Position 12, pattern 12
	db	5,5,5,5,5,5,5,5
	; Position 13, pattern 13
	db	2,2,2,2,2,2,2,2
	; Position 14, pattern 14
	db	3,3,3,3,3,3,3,3
	; Position 15, pattern 15
	db	1,1,1,1,1,1,1,1
	; Position 16, pattern 16
	db	5,5,5,5,5,5,5,5
	; Position 17, pattern 17
	db	2,2,2,2,2,2,2,2
	; Position 18, pattern 18
	db	3,3,3,3,3,3,3,3
	; Position 19, pattern 19
	db	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0

	; Hhat 2, column 2
S_Hhat2_2:
	db	0
	; Position 4, pattern 4
	db	5,5,5,5,5,5,5,5
	; Position 5, pattern 5
	db	4,4,4,4,4,4,4,4
	; Position 6, pattern 6
	db	3,3,3,3,3,3,3,3
	; Position 7, pattern 7
	db	2,2,2,2,2,2,2,2
	; Position 8, pattern 8
	db	5,5,5,5,5,5,5,5
	; Position 9, pattern 9
	db	4,4,4,4,4,4,4,4
	; Position 10, pattern 10
	db	2,2,2,2,2,2,2,2
	; Position 11, pattern 11
	db	3,3,3,3,3,3,3,3
	; Position 12, pattern 12
	db	5,5,5,5,5,5,5,5
	; Position 13, pattern 13
	db	2,2,2,2,2,2,2,2
	; Position 14, pattern 14
	db	3,3,3,3,3,3,3,3
	; Position 15, pattern 15
	db	1,1,1,1,1,1,1,1
	; Position 16, pattern 16
	db	5,5,5,5,5,5,5,5
	; Position 17, pattern 17
	db	2,2,2,2,2,2,2,2
	; Position 18, pattern 18
	db	3,3,3,3,3,3,3,3
	; Position 19, pattern 19
	db	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0

	; Hhat 2, column 3
S_Hhat2_3:
	db	0
	; Position 4, pattern 4
	db	5,5,5,5,5,5,5,5
	; Position 5, pattern 5
	db	4,4,4,4,4,4,4,4
	; Position 6, pattern 6
	db	3,3,3,3,3,3,3,3
	; Position 7, pattern 7
	db	2,2,2,2,2,2,2,2
	; Position 8, pattern 8
	db	5,5,5,5,5,5,5,5
	; Position 9, pattern 9
	db	4,4,4,4,4,4,4,4
	; Position 10, pattern 10
	db	2,2,2,2,2,2,2,2
	; Position 11, pattern 11
	db	3,3,3,3,3,3,3,3
	; Position 12, pattern 12
	db	5,5,5,5,5,5,5,5
	; Position 13, pattern 13
	db	2,2,2,2,2,2,2,2
	; Position 14, pattern 14
	db	3,3,3,3,3,3,3,3
	; Position 15, pattern 15
	db	1,1,1,1,1,1,1,1
	; Position 16, pattern 16
	db	5,5,5,5,5,5,5,5
	; Position 17, pattern 17
	db	2,2,2,2,2,2,2,2
	; Position 18, pattern 18
	db	3,3,3,3,3,3,3,3
	; Position 19, pattern 19
	db	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0

	; Hhat 2, column 4
S_Hhat2_4:
	db	0
	; Position 4, pattern 4
	db	5,5,5,5,5,5,5,5
	; Position 5, pattern 5
	db	4,4,4,4,4,4,4,4
	; Position 6, pattern 6
	db	3,3,3,3,3,3,3,3
	; Position 7, pattern 7
	db	2,2,2,2,2,2,2,2
	; Position 8, pattern 8
	db	5,5,5,5,5,5,5,5
	; Position 9, pattern 9
	db	4,4,4,4,4,4,4,4
	; Position 10, pattern 10
	db	2,2,2,2,2,2,2,2
	; Position 11, pattern 11
	db	3,3,3,3,3,3,3,3
	; Position 12, pattern 12
	db	5,5,5,5,5,5,5,5
	; Position 13, pattern 13
	db	2,2,2,2,2,2,2,2
	; Position 14, pattern 14
	db	3,3,3,3,3,3,3,3
	; Position 15, pattern 15
	db	1,1,1,1,1,1,1,1
	; Position 16, pattern 16
	db	5,5,5,5,5,5,5,5
	; Position 17, pattern 17
	db	2,2,2,2,2,2,2,2
	; Position 18, pattern 18
	db	3,3,3,3,3,3,3,3
	; Position 19, pattern 19
	db	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0

	; Track 05, column 1
S_Track05_1:
	; Position 0, pattern 0
	db	10,8,5
	; Position 1, pattern 1
	db	12,11,9,6,7
	; Position 2, pattern 2
	db	1,1,2,3
	; Position 3, pattern 3
	db	4,2,2
	; Position 4, pattern 4
	db	20,19,17
	; Position 5, pattern 5
	db	21,20,19,17,18
	; Position 6, pattern 6
	db	13,13,14,15
	; Position 7, pattern 7
	db	16,14,14
	; Position 8, pattern 8
	db	20,19,17,18
	; Position 9, pattern 9
	db	21,20,19,18,18
	; Position 10, pattern 10
	db	14,16,17,14,21
	; Position 11, pattern 11
	db	20,19,19,17,13
	; Position 12, pattern 12
	db	20,19,17
	; Position 13, pattern 13
	db	19,17,17,13,17,18
	; Position 14, pattern 14
	db	20,19,14,21,20,19,17
	; Position 15, pattern 15
	db	18
	; Position 16, pattern 16
	db	0

