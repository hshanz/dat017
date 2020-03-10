   1              		.arch armv6-m
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 6
   9              		.eabi_attribute 34, 0
  10              		.eabi_attribute 18, 4
  11              		.file	"pong.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.start_section,"ax",%progbits
  16              		.align	1
  17              		.global	startup
  18              		.syntax unified
  19              		.code	16
  20              		.thumb_func
  21              		.fpu softvfp
  23              	startup:
  24              	.LFB0:
  25              		.file 1 "C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG/pong.c"
   1:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** /*
   2:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c ****  * 	startup.c
   3:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c ****  *
   4:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c ****  */
   5:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   6:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
   7:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void startup ( void )
   8:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** {
  26              		.loc 1 8 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
   9:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** __asm volatile(
  31              		.loc 1 9 0
  32              		.syntax divided
  33              	@ 9 "C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG/pong.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  10:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  11:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	" MOV SP,R0\n"
  12:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	" BL main\n"				/* call main */
  13:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	"_exit: B .\n"				/* never return */
  14:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	) ;
  15:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
  40              		.loc 1 15 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.global	Segcodes
  48              		.data
  49              		.align	2
  52              	Segcodes:
  53 0000 3F       		.byte	63
  54 0001 06       		.byte	6
  55 0002 5B       		.byte	91
  56 0003 4F       		.byte	79
  57 0004 66       		.byte	102
  58 0005 6D       		.byte	109
  59 0006 7D       		.byte	125
  60 0007 07       		.byte	7
  61 0008 7F       		.byte	127
  62 0009 6F       		.byte	111
  63 000a 77       		.byte	119
  64 000b 7C       		.byte	124
  65 000c 39       		.byte	57
  66 000d 5E       		.byte	94
  67 000e 79       		.byte	121
  68 000f 71       		.byte	113
  69              		.global	Key
  70              		.align	2
  73              	Key:
  74 0010 01       		.byte	1
  75 0011 02       		.byte	2
  76 0012 03       		.byte	3
  77 0013 0A       		.byte	10
  78 0014 04       		.byte	4
  79 0015 05       		.byte	5
  80 0016 06       		.byte	6
  81 0017 0B       		.byte	11
  82 0018 07       		.byte	7
  83 0019 08       		.byte	8
  84 001a 09       		.byte	9
  85 001b 0C       		.byte	12
  86 001c 0E       		.byte	14
  87 001d 00       		.byte	0
  88 001e 0F       		.byte	15
  89 001f 0D       		.byte	13
  90              		.comm	AsciiOutPrint,4,4
  91              		.global	ball_geometry
  92              		.align	2
  95              	ball_geometry:
  96 0020 0C000000 		.word	12
  97 0024 04000000 		.word	4
  98 0028 04000000 		.word	4
  99 002c 00       		.byte	0
 100 002d 01       		.byte	1
 101 002e 00       		.byte	0
 102 002f 02       		.byte	2
 103 0030 01       		.byte	1
 104 0031 00       		.byte	0
 105 0032 01       		.byte	1
 106 0033 01       		.byte	1
 107 0034 01       		.byte	1
 108 0035 02       		.byte	2
 109 0036 01       		.byte	1
 110 0037 03       		.byte	3
 111 0038 02       		.byte	2
 112 0039 00       		.byte	0
 113 003a 02       		.byte	2
 114 003b 01       		.byte	1
 115 003c 02       		.byte	2
 116 003d 02       		.byte	2
 117 003e 02       		.byte	2
 118 003f 03       		.byte	3
 119 0040 03       		.byte	3
 120 0041 01       		.byte	1
 121 0042 03       		.byte	3
 122 0043 02       		.byte	2
 123 0044 00000000 		.space	4
 124              		.global	bouncer_geometry
 125              		.align	2
 128              	bouncer_geometry:
 129 0048 0E000000 		.word	14
 130 004c 02000000 		.word	2
 131 0050 06000000 		.word	6
 132 0054 00       		.byte	0
 133 0055 00       		.byte	0
 134 0056 01       		.byte	1
 135 0057 00       		.byte	0
 136 0058 00       		.byte	0
 137 0059 01       		.byte	1
 138 005a 01       		.byte	1
 139 005b 01       		.byte	1
 140 005c 00       		.byte	0
 141 005d 02       		.byte	2
 142 005e 01       		.byte	1
 143 005f 02       		.byte	2
 144 0060 00       		.byte	0
 145 0061 03       		.byte	3
 146 0062 01       		.byte	1
 147 0063 03       		.byte	3
 148 0064 00       		.byte	0
 149 0065 04       		.byte	4
 150 0066 01       		.byte	1
 151 0067 04       		.byte	4
 152 0068 00       		.byte	0
 153 0069 05       		.byte	5
 154 006a 01       		.byte	1
 155 006b 05       		.byte	5
 156 006c 00       		.byte	0
 157 006d 06       		.byte	6
 158 006e 01       		.byte	1
 159 006f 06       		.byte	6
 160              		.align	2
 163              	left_bouncer:
 164 0070 00000000 		.word	bouncer_geometry
 165 0074 00000000 		.word	0
 166 0078 00000000 		.word	0
 167 007c 0F000000 		.word	15
 168 0080 20000000 		.word	32
 169 0084 00000000 		.word	draw_object
 170 0088 00000000 		.word	clear_object
 171 008c 00000000 		.word	move_bouncer
 172 0090 00000000 		.word	set_object_speed
 173 0094 00000000 		.word	set_pos
 174 0098 00000000 		.space	4
 175              		.align	2
 178              	right_bouncer:
 179 009c 00000000 		.word	bouncer_geometry
 180 00a0 00000000 		.word	0
 181 00a4 00000000 		.word	0
 182 00a8 71000000 		.word	113
 183 00ac 20000000 		.word	32
 184 00b0 00000000 		.word	draw_object
 185 00b4 00000000 		.word	clear_object
 186 00b8 00000000 		.word	move_bouncer
 187 00bc 00000000 		.word	set_object_speed
 188 00c0 00000000 		.word	set_pos
 189 00c4 00000000 		.space	4
 190              		.align	2
 193              	ball:
 194 00c8 00000000 		.word	ball_geometry
 195 00cc 00000000 		.word	0
 196 00d0 00000000 		.word	0
 197 00d4 40000000 		.word	64
 198 00d8 20000000 		.word	32
 199 00dc 00000000 		.word	draw_object
 200 00e0 00000000 		.word	clear_object
 201 00e4 00000000 		.word	move_ball
 202 00e8 00000000 		.word	set_object_speed
 203 00ec 00000000 		.word	set_pos
 204 00f0 00000000 		.word	check_ball_collision
 205              		.align	2
 208              	Player1:
 209 00f4 70000000 		.word	left_bouncer
 210 00f8 00000000 		.word	0
 211 00fc 706C6179 		.ascii	"player1: \000"
 211      6572313A 
 211      2000
 212 0106 506C6179 		.ascii	"Player1 wins"
 212      65723120 
 212      77696E73 
 213 0112 0000     		.space	2
 214              		.align	2
 217              	Player2:
 218 0114 9C000000 		.word	right_bouncer
 219 0118 00000000 		.word	0
 220 011c 506C6179 		.ascii	"Player2: \000"
 220      6572323A 
 220      2000
 221 0126 504C6179 		.ascii	"PLayer2 wins"
 221      65723220 
 221      77696E73 
 222 0132 0000     		.space	2
 223              		.text
 224              		.align	1
 225              		.syntax unified
 226              		.code	16
 227              		.thumb_func
 228              		.fpu softvfp
 230              	graphic_ctrl_bit_set:
 231              	.LFB1:
  16:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** typedef unsigned int uint32_t;
  17:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** typedef unsigned short int uint16_t;
  18:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** typedef unsigned char uint8_t;
  19:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
  20:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** typedef struct GPIO { // Struct för GPIO Portar
  21:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	uint32_t	moder;
  22:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	uint16_t	otyper;
  23:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	uint16_t	otReserved;
  24:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	uint32_t	oSpeedr;
  25:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	uint32_t	pupdr;
  26:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	uint8_t		idr_low;
  27:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	uint8_t		idr_high;
  28:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	uint16_t	idr_reserved;
  29:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	uint8_t		odr_low;
  30:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	uint8_t		odr_high;
  31:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	uint16_t	odr_reserved;
  32:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	
  33:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** } GPIO;
  34:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** typedef volatile GPIO* gpioptr;
  35:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
  36:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** #define GPIO_E (*((gpioptr)0x40021000))
  37:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** #define GPIO_D (*((gpioptr)0x40020C00))
  38:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
  39:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** #define SysTick 0xE000E010
  40:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** #define STK_CTRL ((volatile unsigned int*) (SysTick))
  41:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** #define STK_LOAD ((volatile unsigned int*) (SysTick + 0x4))
  42:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** #define STK_VAL ((volatile unsigned int*) (SysTick + 0x8))
  43:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
  44:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** #define B_E 0x40 // Enable
  45:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** #define B_RST 0x20 // Reset
  46:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** #define B_CS2 0x10 // Controller Select 2
  47:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** #define B_CS1 8 // Controller Select 1
  48:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** #define B_SELECT 4 // 0 Graphics, 1 ASCII
  49:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** #define B_RW 2 // 0 Write, 1 Read
  50:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** #define B_RS 1 // 0 Command, 1 Data
  51:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
  52:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** #define LCD_ON 0x3F // Display on
  53:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** #define LCD_OFF 0x3E // Display off
  54:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** #define LCD_SET_ADD 0x40 // Set horizontal coordinate
  55:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** #define LCD_SET_PAGE 0xB8 // Set vertical coordinate
  56:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** #define LCD_DISP_START 0xC0 // Start address
  57:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** #define LCD_BUSY 0x80 // Read busy status
  58:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
  59:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** #define LCD_WIDTH 128 //LC skärmens bredd
  60:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** #define LCD_HEIGHT 64 //LC skärmens höjd
  61:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** #define MAX_POINTS 14 //max antal punkter som en Geometry får ha.
  62:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
  63:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** //#define SIMULATOR //Om man kör i labbsystemet kommentera ut hela raden.
  64:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** #define WinPoints 9 //Poängen man ska få för att vinna.
  65:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
  66:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
  67:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** unsigned char Segcodes[16] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7
  68:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** unsigned char Key[16]  = {1,2,3,0xA, 4, 5, 6 , 0xB, 7, 8, 9, 0xC, 0xE, 0, 0xF, 0xD};
  69:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** char *AsciiOutPrint; //Pekaren som i Print_To_Ascii
  70:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
  71:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** // Structs
  72:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** typedef struct tpoint{
  73:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	unsigned char x;
  74:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	unsigned char y;
  75:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }POINT;
  76:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** typedef struct tGeometry{
  77:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	int numPoints;
  78:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	int sizeX;
  79:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	int sizeY;
  80:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	POINT px[MAX_POINTS];
  81:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }GEOMETRY, *PGEOMETRY;
  82:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** typedef struct tObj{
  83:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	PGEOMETRY geo;
  84:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	int dirx,diry;
  85:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	int posx,posy;
  86:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	void (*draw)(struct tobj*);
  87:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	void (*clear)(struct tobj*);
  88:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	void (*move)(struct tobj*);
  89:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	void (*set_speed)(struct tobj*, int, int);
  90:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	void (*set_pos)(struct tobj*, int, int);
  91:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	void (*check_ball_collision)(struct tobj*);
  92:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }OBJECT, *POBJECT;
  93:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** typedef struct tPlayer{ //Spelar Structen
  94:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	POBJECT objct;
  95:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	int points;
  96:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	char PAscii[10];
  97:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	char winMsg[12];
  98:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
  99:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	
 100:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }PLAYER, *PPLAYER;
 101:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
 102:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
 103:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** //Funktions declarationer
 104:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void graphic_initialize(void);
 105:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** static void graphic_write_command(uint8_t command, uint8_t controller);
 106:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** static void graphic_write_data(uint8_t data, uint8_t controller);
 107:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** static void graphic_write(uint8_t value, uint8_t controller);
 108:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** static void graphic_ctrl_bit_clear(uint8_t x);
 109:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void move_bouncer(POBJECT O);
 110:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void move_ball(POBJECT O);
 111:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void clear_object(POBJECT O);
 112:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void draw_object(POBJECT O);
 113:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void set_object_speed(POBJECT O, int speedx, int speedy);
 114:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void set_pos(POBJECT O, int x, int y);
 115:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** unsigned char ascii_read_status(void);
 116:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void ascii_write_CMD(unsigned char command);
 117:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void check_ball_collision(POBJECT O);
 118:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
 119:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** GEOMETRY ball_geometry ={
 120:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.numPoints = 12,
 121:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.sizeX = 4,
 122:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.sizeY = 4,
 123:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	{
 124:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		/* px[0,1,2 ....] */
 125:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		{0,1}, {0,2}, {1,0}, {1,1}, {1,2},
 126:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		{1,3}, {2,0}, {2,1}, {2,2}, {2,3},
 127:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		{3,1}, {3,2}
 128:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 129:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** };
 130:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** GEOMETRY bouncer_geometry={
 131:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.numPoints = 14,
 132:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.sizeX = 2,
 133:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.sizeY = 6,
 134:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	{
 135:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		{0,0},{1,0},
 136:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		{0,1},{1,1},
 137:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		{0,2},{1,2},
 138:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		{0,3},{1,3},
 139:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		{0,4},{1,4},
 140:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		{0,5},{1,5},
 141:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		{0,6},{1,6}
 142:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 143:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** };
 144:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** static OBJECT left_bouncer ={ // Den vänstra "pinnen".
 145:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.geo = &bouncer_geometry,
 146:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.dirx = 0,
 147:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.diry = 0,
 148:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.posx = 15,
 149:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.posy = LCD_HEIGHT/2,
 150:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	draw_object,
 151:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	clear_object,
 152:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	move_bouncer,
 153:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	set_object_speed,
 154:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	set_pos,
 155:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** };
 156:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** static OBJECT right_bouncer ={ //Den högra "pinnen".
 157:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.geo = &bouncer_geometry,
 158:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.dirx = 0,
 159:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.diry = 0,
 160:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.posx = LCD_WIDTH-15,
 161:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.posy = LCD_HEIGHT/2,
 162:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	draw_object,
 163:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	clear_object,
 164:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	move_bouncer,
 165:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	set_object_speed,
 166:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	set_pos,
 167:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** };
 168:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
 169:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** static OBJECT ball = {
 170:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.geo = &ball_geometry,
 171:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.dirx = 0,
 172:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.diry = 0,
 173:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.posx = LCD_WIDTH/2,
 174:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.posy = LCD_HEIGHT/2,
 175:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	draw_object,
 176:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	clear_object,
 177:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	move_ball,
 178:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	set_object_speed,
 179:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	set_pos,
 180:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	check_ball_collision,
 181:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** };
 182:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** static PLAYER Player1 = { //Spelare 1
 183:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.objct = &left_bouncer,
 184:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.points = 0, //P1:s poäng.
 185:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.PAscii = "player1: ",
 186:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.winMsg = "Player1 wins"
 187:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** };
 188:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** static PLAYER Player2= { //Spelare 2
 189:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.objct = &right_bouncer,
 190:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.points = 0, //P2:s poäng.
 191:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.PAscii = "Player2: ",
 192:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	.winMsg = "PLayer2 wins",
 193:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** };
 194:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
 195:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** //                      Functions
 196:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** // LCD functions
 197:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** static void graphic_ctrl_bit_set(uint8_t x) {
 232              		.loc 1 197 0
 233              		.cfi_startproc
 234              		@ args = 0, pretend = 0, frame = 16
 235              		@ frame_needed = 1, uses_anonymous_args = 0
 236 0000 80B5     		push	{r7, lr}
 237              		.cfi_def_cfa_offset 8
 238              		.cfi_offset 7, -8
 239              		.cfi_offset 14, -4
 240 0002 84B0     		sub	sp, sp, #16
 241              		.cfi_def_cfa_offset 24
 242 0004 00AF     		add	r7, sp, #0
 243              		.cfi_def_cfa_register 7
 244 0006 0200     		movs	r2, r0
 245 0008 FB1D     		adds	r3, r7, #7
 246 000a 1A70     		strb	r2, [r3]
 198:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** uint8_t c;
 199:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** c = GPIO_E.odr_low;
 247              		.loc 1 199 0
 248 000c 0F4A     		ldr	r2, .L3
 249 000e 0F20     		movs	r0, #15
 250 0010 3B18     		adds	r3, r7, r0
 251 0012 127D     		ldrb	r2, [r2, #20]
 252 0014 1A70     		strb	r2, [r3]
 200:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** c &= ~B_SELECT;
 253              		.loc 1 200 0
 254 0016 3B18     		adds	r3, r7, r0
 255 0018 3A18     		adds	r2, r7, r0
 256 001a 1278     		ldrb	r2, [r2]
 257 001c 0421     		movs	r1, #4
 258 001e 8A43     		bics	r2, r1
 259 0020 1A70     		strb	r2, [r3]
 201:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** c |= (~B_SELECT & x);
 260              		.loc 1 201 0
 261 0022 FB1D     		adds	r3, r7, #7
 262 0024 1B78     		ldrb	r3, [r3]
 263 0026 5BB2     		sxtb	r3, r3
 264 0028 0422     		movs	r2, #4
 265 002a 9343     		bics	r3, r2
 266 002c 5AB2     		sxtb	r2, r3
 267 002e 3B18     		adds	r3, r7, r0
 268 0030 1B78     		ldrb	r3, [r3]
 269 0032 5BB2     		sxtb	r3, r3
 270 0034 1343     		orrs	r3, r2
 271 0036 5AB2     		sxtb	r2, r3
 272 0038 3B18     		adds	r3, r7, r0
 273 003a 1A70     		strb	r2, [r3]
 202:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** GPIO_E.odr_low = c;
 274              		.loc 1 202 0
 275 003c 034A     		ldr	r2, .L3
 276 003e 3B18     		adds	r3, r7, r0
 277 0040 1B78     		ldrb	r3, [r3]
 278 0042 1375     		strb	r3, [r2, #20]
 203:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 279              		.loc 1 203 0
 280 0044 C046     		nop
 281 0046 BD46     		mov	sp, r7
 282 0048 04B0     		add	sp, sp, #16
 283              		@ sp needed
 284 004a 80BD     		pop	{r7, pc}
 285              	.L4:
 286              		.align	2
 287              	.L3:
 288 004c 00100240 		.word	1073876992
 289              		.cfi_endproc
 290              	.LFE1:
 292              		.align	1
 293              		.syntax unified
 294              		.code	16
 295              		.thumb_func
 296              		.fpu softvfp
 298              	graphic_ctrl_bit_clear:
 299              	.LFB2:
 204:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** static void graphic_ctrl_bit_clear(uint8_t x) {
 300              		.loc 1 204 0
 301              		.cfi_startproc
 302              		@ args = 0, pretend = 0, frame = 16
 303              		@ frame_needed = 1, uses_anonymous_args = 0
 304 0050 80B5     		push	{r7, lr}
 305              		.cfi_def_cfa_offset 8
 306              		.cfi_offset 7, -8
 307              		.cfi_offset 14, -4
 308 0052 84B0     		sub	sp, sp, #16
 309              		.cfi_def_cfa_offset 24
 310 0054 00AF     		add	r7, sp, #0
 311              		.cfi_def_cfa_register 7
 312 0056 0200     		movs	r2, r0
 313 0058 FB1D     		adds	r3, r7, #7
 314 005a 1A70     		strb	r2, [r3]
 205:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** uint8_t c;
 206:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** c = GPIO_E.odr_low;
 315              		.loc 1 206 0
 316 005c 0F4A     		ldr	r2, .L6
 317 005e 0F20     		movs	r0, #15
 318 0060 3B18     		adds	r3, r7, r0
 319 0062 127D     		ldrb	r2, [r2, #20]
 320 0064 1A70     		strb	r2, [r3]
 207:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** c &= ~B_SELECT;
 321              		.loc 1 207 0
 322 0066 3B18     		adds	r3, r7, r0
 323 0068 3A18     		adds	r2, r7, r0
 324 006a 1278     		ldrb	r2, [r2]
 325 006c 0421     		movs	r1, #4
 326 006e 8A43     		bics	r2, r1
 327 0070 1A70     		strb	r2, [r3]
 208:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** c &= ~x;
 328              		.loc 1 208 0
 329 0072 FB1D     		adds	r3, r7, #7
 330 0074 1B78     		ldrb	r3, [r3]
 331 0076 5BB2     		sxtb	r3, r3
 332 0078 DB43     		mvns	r3, r3
 333 007a 5BB2     		sxtb	r3, r3
 334 007c 3A18     		adds	r2, r7, r0
 335 007e 1278     		ldrb	r2, [r2]
 336 0080 52B2     		sxtb	r2, r2
 337 0082 1340     		ands	r3, r2
 338 0084 5AB2     		sxtb	r2, r3
 339 0086 3B18     		adds	r3, r7, r0
 340 0088 1A70     		strb	r2, [r3]
 209:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** GPIO_E.odr_low = c;
 341              		.loc 1 209 0
 342 008a 044A     		ldr	r2, .L6
 343 008c 3B18     		adds	r3, r7, r0
 344 008e 1B78     		ldrb	r3, [r3]
 345 0090 1375     		strb	r3, [r2, #20]
 210:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 346              		.loc 1 210 0
 347 0092 C046     		nop
 348 0094 BD46     		mov	sp, r7
 349 0096 04B0     		add	sp, sp, #16
 350              		@ sp needed
 351 0098 80BD     		pop	{r7, pc}
 352              	.L7:
 353 009a C046     		.align	2
 354              	.L6:
 355 009c 00100240 		.word	1073876992
 356              		.cfi_endproc
 357              	.LFE2:
 359              		.align	1
 360              		.syntax unified
 361              		.code	16
 362              		.thumb_func
 363              		.fpu softvfp
 365              	select_controller:
 366              	.LFB3:
 211:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** static void select_controller(uint8_t controller){
 367              		.loc 1 211 0
 368              		.cfi_startproc
 369              		@ args = 0, pretend = 0, frame = 8
 370              		@ frame_needed = 1, uses_anonymous_args = 0
 371 00a0 80B5     		push	{r7, lr}
 372              		.cfi_def_cfa_offset 8
 373              		.cfi_offset 7, -8
 374              		.cfi_offset 14, -4
 375 00a2 82B0     		sub	sp, sp, #8
 376              		.cfi_def_cfa_offset 16
 377 00a4 00AF     		add	r7, sp, #0
 378              		.cfi_def_cfa_register 7
 379 00a6 0200     		movs	r2, r0
 380 00a8 FB1D     		adds	r3, r7, #7
 381 00aa 1A70     		strb	r2, [r3]
 212:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	switch(controller){
 382              		.loc 1 212 0
 383 00ac FB1D     		adds	r3, r7, #7
 384 00ae 1B78     		ldrb	r3, [r3]
 385 00b0 082B     		cmp	r3, #8
 386 00b2 0CD0     		beq	.L10
 387 00b4 02DC     		bgt	.L11
 388 00b6 002B     		cmp	r3, #0
 389 00b8 05D0     		beq	.L12
 213:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		case 0:
 214:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			graphic_ctrl_bit_clear(B_CS1|B_CS2);
 215:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			break;
 216:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		case B_CS1 :
 217:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			graphic_ctrl_bit_set(B_CS1);
 218:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			graphic_ctrl_bit_clear(B_CS2);
 219:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			break;
 220:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		case B_CS2 :
 221:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			graphic_ctrl_bit_set(B_CS2);
 222:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			graphic_ctrl_bit_clear(B_CS1);
 223:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			break;
 224:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		case B_CS1|B_CS2 :
 225:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			graphic_ctrl_bit_set(B_CS1|B_CS2);
 226:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			break;
 227:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 228:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 390              		.loc 1 228 0
 391 00ba 1AE0     		b	.L15
 392              	.L11:
 212:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	switch(controller){
 393              		.loc 1 212 0
 394 00bc 102B     		cmp	r3, #16
 395 00be 0DD0     		beq	.L13
 396 00c0 182B     		cmp	r3, #24
 397 00c2 12D0     		beq	.L14
 398              		.loc 1 228 0
 399 00c4 15E0     		b	.L15
 400              	.L12:
 214:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			break;
 401              		.loc 1 214 0
 402 00c6 1820     		movs	r0, #24
 403 00c8 FFF7C2FF 		bl	graphic_ctrl_bit_clear
 215:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		case B_CS1 :
 404              		.loc 1 215 0
 405 00cc 11E0     		b	.L9
 406              	.L10:
 217:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			graphic_ctrl_bit_clear(B_CS2);
 407              		.loc 1 217 0
 408 00ce 0820     		movs	r0, #8
 409 00d0 FFF796FF 		bl	graphic_ctrl_bit_set
 218:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			break;
 410              		.loc 1 218 0
 411 00d4 1020     		movs	r0, #16
 412 00d6 FFF7BBFF 		bl	graphic_ctrl_bit_clear
 219:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		case B_CS2 :
 413              		.loc 1 219 0
 414 00da 0AE0     		b	.L9
 415              	.L13:
 221:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			graphic_ctrl_bit_clear(B_CS1);
 416              		.loc 1 221 0
 417 00dc 1020     		movs	r0, #16
 418 00de FFF78FFF 		bl	graphic_ctrl_bit_set
 222:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			break;
 419              		.loc 1 222 0
 420 00e2 0820     		movs	r0, #8
 421 00e4 FFF7B4FF 		bl	graphic_ctrl_bit_clear
 223:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		case B_CS1|B_CS2 :
 422              		.loc 1 223 0
 423 00e8 03E0     		b	.L9
 424              	.L14:
 225:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			break;
 425              		.loc 1 225 0
 426 00ea 1820     		movs	r0, #24
 427 00ec FFF788FF 		bl	graphic_ctrl_bit_set
 226:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 428              		.loc 1 226 0
 429 00f0 C046     		nop
 430              	.L9:
 431              	.L15:
 432              		.loc 1 228 0
 433 00f2 C046     		nop
 434 00f4 BD46     		mov	sp, r7
 435 00f6 02B0     		add	sp, sp, #8
 436              		@ sp needed
 437 00f8 80BD     		pop	{r7, pc}
 438              		.cfi_endproc
 439              	.LFE3:
 441              		.align	1
 442              		.global	graphic_initialize
 443              		.syntax unified
 444              		.code	16
 445              		.thumb_func
 446              		.fpu softvfp
 448              	graphic_initialize:
 449              	.LFB4:
 229:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void graphic_initialize(void) {
 450              		.loc 1 229 0
 451              		.cfi_startproc
 452              		@ args = 0, pretend = 0, frame = 0
 453              		@ frame_needed = 1, uses_anonymous_args = 0
 454 00fa 80B5     		push	{r7, lr}
 455              		.cfi_def_cfa_offset 8
 456              		.cfi_offset 7, -8
 457              		.cfi_offset 14, -4
 458 00fc 00AF     		add	r7, sp, #0
 459              		.cfi_def_cfa_register 7
 230:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_set(B_E);
 460              		.loc 1 230 0
 461 00fe 4020     		movs	r0, #64
 462 0100 FFF77EFF 		bl	graphic_ctrl_bit_set
 231:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	delay_mikro(10);
 463              		.loc 1 231 0
 464 0104 0A20     		movs	r0, #10
 465 0106 FFF7FEFF 		bl	delay_mikro
 232:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_CS1|B_CS2|B_RST|B_E);
 466              		.loc 1 232 0
 467 010a 7820     		movs	r0, #120
 468 010c FFF7A0FF 		bl	graphic_ctrl_bit_clear
 233:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	delay_milli(30);
 469              		.loc 1 233 0
 470 0110 1E20     		movs	r0, #30
 471 0112 FFF7FEFF 		bl	delay_milli
 234:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_set(B_RST);
 472              		.loc 1 234 0
 473 0116 2020     		movs	r0, #32
 474 0118 FFF772FF 		bl	graphic_ctrl_bit_set
 235:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	delay_milli(100);
 475              		.loc 1 235 0
 476 011c 6420     		movs	r0, #100
 477 011e FFF7FEFF 		bl	delay_milli
 236:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	graphic_write_command(LCD_OFF, B_CS1|B_CS2);
 478              		.loc 1 236 0
 479 0122 1821     		movs	r1, #24
 480 0124 3E20     		movs	r0, #62
 481 0126 00F0DFF8 		bl	graphic_write_command
 237:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	graphic_write_command(LCD_ON, B_CS1|B_CS2);
 482              		.loc 1 237 0
 483 012a 1821     		movs	r1, #24
 484 012c 3F20     		movs	r0, #63
 485 012e 00F0DBF8 		bl	graphic_write_command
 238:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	graphic_write_command(LCD_DISP_START, B_CS1|B_CS2);
 486              		.loc 1 238 0
 487 0132 1821     		movs	r1, #24
 488 0134 C020     		movs	r0, #192
 489 0136 00F0D7F8 		bl	graphic_write_command
 239:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	graphic_write_command(LCD_SET_ADD, B_CS1|B_CS2);
 490              		.loc 1 239 0
 491 013a 1821     		movs	r1, #24
 492 013c 4020     		movs	r0, #64
 493 013e 00F0D3F8 		bl	graphic_write_command
 240:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	graphic_write_command(LCD_SET_PAGE, B_CS1|B_CS2);
 494              		.loc 1 240 0
 495 0142 1821     		movs	r1, #24
 496 0144 B820     		movs	r0, #184
 497 0146 00F0CFF8 		bl	graphic_write_command
 241:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	select_controller(0);
 498              		.loc 1 241 0
 499 014a 0020     		movs	r0, #0
 500 014c FFF7A8FF 		bl	select_controller
 242:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 501              		.loc 1 242 0
 502 0150 C046     		nop
 503 0152 BD46     		mov	sp, r7
 504              		@ sp needed
 505 0154 80BD     		pop	{r7, pc}
 506              		.cfi_endproc
 507              	.LFE4:
 509              		.align	1
 510              		.syntax unified
 511              		.code	16
 512              		.thumb_func
 513              		.fpu softvfp
 515              	graphic_wait_ready:
 516              	.LFB5:
 243:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** static void graphic_wait_ready(void) {
 517              		.loc 1 243 0
 518              		.cfi_startproc
 519              		@ args = 0, pretend = 0, frame = 8
 520              		@ frame_needed = 1, uses_anonymous_args = 0
 521 0156 80B5     		push	{r7, lr}
 522              		.cfi_def_cfa_offset 8
 523              		.cfi_offset 7, -8
 524              		.cfi_offset 14, -4
 525 0158 82B0     		sub	sp, sp, #8
 526              		.cfi_def_cfa_offset 16
 527 015a 00AF     		add	r7, sp, #0
 528              		.cfi_def_cfa_register 7
 244:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	uint8_t c;
 245:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_E);
 529              		.loc 1 245 0
 530 015c 4020     		movs	r0, #64
 531 015e FFF777FF 		bl	graphic_ctrl_bit_clear
 246:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	GPIO_E.moder = 0x00005555; // 15-8 inputs, 7-0 outputs
 532              		.loc 1 246 0
 533 0162 144B     		ldr	r3, .L23
 534 0164 144A     		ldr	r2, .L23+4
 535 0166 1A60     		str	r2, [r3]
 247:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_RS);
 536              		.loc 1 247 0
 537 0168 0120     		movs	r0, #1
 538 016a FFF771FF 		bl	graphic_ctrl_bit_clear
 248:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_set(B_RW);
 539              		.loc 1 248 0
 540 016e 0220     		movs	r0, #2
 541 0170 FFF746FF 		bl	graphic_ctrl_bit_set
 249:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	delay_500ns();
 542              		.loc 1 249 0
 543 0174 FFF7FEFF 		bl	delay_500ns
 544              	.L20:
 250:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	while(1) {
 251:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		graphic_ctrl_bit_set(B_E);
 545              		.loc 1 251 0
 546 0178 4020     		movs	r0, #64
 547 017a FFF741FF 		bl	graphic_ctrl_bit_set
 252:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		delay_500ns();
 548              		.loc 1 252 0
 549 017e FFF7FEFF 		bl	delay_500ns
 253:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		c = GPIO_E.idr_high & LCD_BUSY;
 550              		.loc 1 253 0
 551 0182 0C4B     		ldr	r3, .L23
 552 0184 5B7C     		ldrb	r3, [r3, #17]
 553 0186 DAB2     		uxtb	r2, r3
 554 0188 FB1D     		adds	r3, r7, #7
 555 018a 7F21     		movs	r1, #127
 556 018c 8A43     		bics	r2, r1
 557 018e 1A70     		strb	r2, [r3]
 254:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		graphic_ctrl_bit_clear(B_E);
 558              		.loc 1 254 0
 559 0190 4020     		movs	r0, #64
 560 0192 FFF75DFF 		bl	graphic_ctrl_bit_clear
 255:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		delay_500ns();
 561              		.loc 1 255 0
 562 0196 FFF7FEFF 		bl	delay_500ns
 256:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		if( c == 0 ) break;
 563              		.loc 1 256 0
 564 019a FB1D     		adds	r3, r7, #7
 565 019c 1B78     		ldrb	r3, [r3]
 566 019e 002B     		cmp	r3, #0
 567 01a0 00D0     		beq	.L22
 251:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		delay_500ns();
 568              		.loc 1 251 0
 569 01a2 E9E7     		b	.L20
 570              	.L22:
 571              		.loc 1 256 0
 572 01a4 C046     		nop
 257:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 258:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	GPIO_E.moder = 0x55555555; // 15-0 outputs
 573              		.loc 1 258 0
 574 01a6 034B     		ldr	r3, .L23
 575 01a8 044A     		ldr	r2, .L23+8
 576 01aa 1A60     		str	r2, [r3]
 259:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 577              		.loc 1 259 0
 578 01ac C046     		nop
 579 01ae BD46     		mov	sp, r7
 580 01b0 02B0     		add	sp, sp, #8
 581              		@ sp needed
 582 01b2 80BD     		pop	{r7, pc}
 583              	.L24:
 584              		.align	2
 585              	.L23:
 586 01b4 00100240 		.word	1073876992
 587 01b8 55550000 		.word	21845
 588 01bc 55555555 		.word	1431655765
 589              		.cfi_endproc
 590              	.LFE5:
 592              		.align	1
 593              		.syntax unified
 594              		.code	16
 595              		.thumb_func
 596              		.fpu softvfp
 598              	graphic_read:
 599              	.LFB6:
 260:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** static uint8_t graphic_read(uint8_t controller) {
 600              		.loc 1 260 0
 601              		.cfi_startproc
 602              		@ args = 0, pretend = 0, frame = 16
 603              		@ frame_needed = 1, uses_anonymous_args = 0
 604 01c0 80B5     		push	{r7, lr}
 605              		.cfi_def_cfa_offset 8
 606              		.cfi_offset 7, -8
 607              		.cfi_offset 14, -4
 608 01c2 84B0     		sub	sp, sp, #16
 609              		.cfi_def_cfa_offset 24
 610 01c4 00AF     		add	r7, sp, #0
 611              		.cfi_def_cfa_register 7
 612 01c6 0200     		movs	r2, r0
 613 01c8 FB1D     		adds	r3, r7, #7
 614 01ca 1A70     		strb	r2, [r3]
 261:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	uint8_t c;
 262:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_E);
 615              		.loc 1 262 0
 616 01cc 4020     		movs	r0, #64
 617 01ce FFF73FFF 		bl	graphic_ctrl_bit_clear
 263:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	GPIO_E.moder = 0x00005555; // 15-8 inputs, 7-0 outputs
 618              		.loc 1 263 0
 619 01d2 1C4B     		ldr	r3, .L29
 620 01d4 1C4A     		ldr	r2, .L29+4
 621 01d6 1A60     		str	r2, [r3]
 264:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_set(B_RS|B_RW);
 622              		.loc 1 264 0
 623 01d8 0320     		movs	r0, #3
 624 01da FFF711FF 		bl	graphic_ctrl_bit_set
 265:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	select_controller(controller);
 625              		.loc 1 265 0
 626 01de FB1D     		adds	r3, r7, #7
 627 01e0 1B78     		ldrb	r3, [r3]
 628 01e2 1800     		movs	r0, r3
 629 01e4 FFF75CFF 		bl	select_controller
 266:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	delay_500ns();
 630              		.loc 1 266 0
 631 01e8 FFF7FEFF 		bl	delay_500ns
 267:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_set(B_E);
 632              		.loc 1 267 0
 633 01ec 4020     		movs	r0, #64
 634 01ee FFF707FF 		bl	graphic_ctrl_bit_set
 268:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	delay_500ns();
 635              		.loc 1 268 0
 636 01f2 FFF7FEFF 		bl	delay_500ns
 269:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	c = GPIO_E.idr_high;
 637              		.loc 1 269 0
 638 01f6 134A     		ldr	r2, .L29
 639 01f8 0F23     		movs	r3, #15
 640 01fa FB18     		adds	r3, r7, r3
 641 01fc 527C     		ldrb	r2, [r2, #17]
 642 01fe 1A70     		strb	r2, [r3]
 270:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_E);
 643              		.loc 1 270 0
 644 0200 4020     		movs	r0, #64
 645 0202 FFF725FF 		bl	graphic_ctrl_bit_clear
 271:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	GPIO_E.moder = 0x55555555; // 15-0 outputs
 646              		.loc 1 271 0
 647 0206 0F4B     		ldr	r3, .L29
 648 0208 104A     		ldr	r2, .L29+8
 649 020a 1A60     		str	r2, [r3]
 272:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	if( controller & B_CS1 ) {
 650              		.loc 1 272 0
 651 020c FB1D     		adds	r3, r7, #7
 652 020e 1B78     		ldrb	r3, [r3]
 653 0210 0822     		movs	r2, #8
 654 0212 1340     		ands	r3, r2
 655 0214 04D0     		beq	.L26
 273:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		select_controller(B_CS1);
 656              		.loc 1 273 0
 657 0216 0820     		movs	r0, #8
 658 0218 FFF742FF 		bl	select_controller
 274:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		graphic_wait_ready();
 659              		.loc 1 274 0
 660 021c FFF79BFF 		bl	graphic_wait_ready
 661              	.L26:
 275:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 276:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	if( controller & B_CS2 ) {
 662              		.loc 1 276 0
 663 0220 FB1D     		adds	r3, r7, #7
 664 0222 1B78     		ldrb	r3, [r3]
 665 0224 1022     		movs	r2, #16
 666 0226 1340     		ands	r3, r2
 667 0228 04D0     		beq	.L27
 277:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		select_controller(B_CS2);
 668              		.loc 1 277 0
 669 022a 1020     		movs	r0, #16
 670 022c FFF738FF 		bl	select_controller
 278:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		graphic_wait_ready();
 671              		.loc 1 278 0
 672 0230 FFF791FF 		bl	graphic_wait_ready
 673              	.L27:
 279:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 280:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** return c;
 674              		.loc 1 280 0
 675 0234 0F23     		movs	r3, #15
 676 0236 FB18     		adds	r3, r7, r3
 677 0238 1B78     		ldrb	r3, [r3]
 281:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 678              		.loc 1 281 0
 679 023a 1800     		movs	r0, r3
 680 023c BD46     		mov	sp, r7
 681 023e 04B0     		add	sp, sp, #16
 682              		@ sp needed
 683 0240 80BD     		pop	{r7, pc}
 684              	.L30:
 685 0242 C046     		.align	2
 686              	.L29:
 687 0244 00100240 		.word	1073876992
 688 0248 55550000 		.word	21845
 689 024c 55555555 		.word	1431655765
 690              		.cfi_endproc
 691              	.LFE6:
 693              		.align	1
 694              		.syntax unified
 695              		.code	16
 696              		.thumb_func
 697              		.fpu softvfp
 699              	graphic_read_data:
 700              	.LFB7:
 282:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** static uint8_t graphic_read_data(uint8_t controller) {
 701              		.loc 1 282 0
 702              		.cfi_startproc
 703              		@ args = 0, pretend = 0, frame = 8
 704              		@ frame_needed = 1, uses_anonymous_args = 0
 705 0250 80B5     		push	{r7, lr}
 706              		.cfi_def_cfa_offset 8
 707              		.cfi_offset 7, -8
 708              		.cfi_offset 14, -4
 709 0252 82B0     		sub	sp, sp, #8
 710              		.cfi_def_cfa_offset 16
 711 0254 00AF     		add	r7, sp, #0
 712              		.cfi_def_cfa_register 7
 713 0256 0200     		movs	r2, r0
 714 0258 FB1D     		adds	r3, r7, #7
 715 025a 1A70     		strb	r2, [r3]
 283:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** graphic_read(controller);
 716              		.loc 1 283 0
 717 025c FB1D     		adds	r3, r7, #7
 718 025e 1B78     		ldrb	r3, [r3]
 719 0260 1800     		movs	r0, r3
 720 0262 FFF7ADFF 		bl	graphic_read
 284:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** return graphic_read(controller);
 721              		.loc 1 284 0
 722 0266 FB1D     		adds	r3, r7, #7
 723 0268 1B78     		ldrb	r3, [r3]
 724 026a 1800     		movs	r0, r3
 725 026c FFF7A8FF 		bl	graphic_read
 726 0270 0300     		movs	r3, r0
 285:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 727              		.loc 1 285 0
 728 0272 1800     		movs	r0, r3
 729 0274 BD46     		mov	sp, r7
 730 0276 02B0     		add	sp, sp, #8
 731              		@ sp needed
 732 0278 80BD     		pop	{r7, pc}
 733              		.cfi_endproc
 734              	.LFE7:
 736              		.align	1
 737              		.syntax unified
 738              		.code	16
 739              		.thumb_func
 740              		.fpu softvfp
 742              	graphic_write:
 743              	.LFB8:
 286:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** static void graphic_write(uint8_t value, uint8_t controller) {
 744              		.loc 1 286 0
 745              		.cfi_startproc
 746              		@ args = 0, pretend = 0, frame = 8
 747              		@ frame_needed = 1, uses_anonymous_args = 0
 748 027a 80B5     		push	{r7, lr}
 749              		.cfi_def_cfa_offset 8
 750              		.cfi_offset 7, -8
 751              		.cfi_offset 14, -4
 752 027c 82B0     		sub	sp, sp, #8
 753              		.cfi_def_cfa_offset 16
 754 027e 00AF     		add	r7, sp, #0
 755              		.cfi_def_cfa_register 7
 756 0280 0200     		movs	r2, r0
 757 0282 FB1D     		adds	r3, r7, #7
 758 0284 1A70     		strb	r2, [r3]
 759 0286 BB1D     		adds	r3, r7, #6
 760 0288 0A1C     		adds	r2, r1, #0
 761 028a 1A70     		strb	r2, [r3]
 287:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	GPIO_E.odr_high = value;
 762              		.loc 1 287 0
 763 028c 154A     		ldr	r2, .L37
 764 028e FB1D     		adds	r3, r7, #7
 765 0290 1B78     		ldrb	r3, [r3]
 766 0292 5375     		strb	r3, [r2, #21]
 288:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	select_controller(controller);
 767              		.loc 1 288 0
 768 0294 BB1D     		adds	r3, r7, #6
 769 0296 1B78     		ldrb	r3, [r3]
 770 0298 1800     		movs	r0, r3
 771 029a FFF701FF 		bl	select_controller
 289:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	delay_500ns();
 772              		.loc 1 289 0
 773 029e FFF7FEFF 		bl	delay_500ns
 290:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_set(B_E);
 774              		.loc 1 290 0
 775 02a2 4020     		movs	r0, #64
 776 02a4 FFF7ACFE 		bl	graphic_ctrl_bit_set
 291:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	delay_500ns();
 777              		.loc 1 291 0
 778 02a8 FFF7FEFF 		bl	delay_500ns
 292:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_clear( B_E );
 779              		.loc 1 292 0
 780 02ac 4020     		movs	r0, #64
 781 02ae FFF7CFFE 		bl	graphic_ctrl_bit_clear
 293:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	if(controller & B_CS1) {
 782              		.loc 1 293 0
 783 02b2 BB1D     		adds	r3, r7, #6
 784 02b4 1B78     		ldrb	r3, [r3]
 785 02b6 0822     		movs	r2, #8
 786 02b8 1340     		ands	r3, r2
 787 02ba 04D0     		beq	.L34
 294:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		select_controller( B_CS1);
 788              		.loc 1 294 0
 789 02bc 0820     		movs	r0, #8
 790 02be FFF7EFFE 		bl	select_controller
 295:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		graphic_wait_ready();
 791              		.loc 1 295 0
 792 02c2 FFF748FF 		bl	graphic_wait_ready
 793              	.L34:
 296:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 297:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	if(controller & B_CS2) {
 794              		.loc 1 297 0
 795 02c6 BB1D     		adds	r3, r7, #6
 796 02c8 1B78     		ldrb	r3, [r3]
 797 02ca 1022     		movs	r2, #16
 798 02cc 1340     		ands	r3, r2
 799 02ce 04D0     		beq	.L36
 298:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		select_controller( B_CS2);
 800              		.loc 1 298 0
 801 02d0 1020     		movs	r0, #16
 802 02d2 FFF7E5FE 		bl	select_controller
 299:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		graphic_wait_ready();
 803              		.loc 1 299 0
 804 02d6 FFF73EFF 		bl	graphic_wait_ready
 805              	.L36:
 300:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 301:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 806              		.loc 1 301 0
 807 02da C046     		nop
 808 02dc BD46     		mov	sp, r7
 809 02de 02B0     		add	sp, sp, #8
 810              		@ sp needed
 811 02e0 80BD     		pop	{r7, pc}
 812              	.L38:
 813 02e2 C046     		.align	2
 814              	.L37:
 815 02e4 00100240 		.word	1073876992
 816              		.cfi_endproc
 817              	.LFE8:
 819              		.align	1
 820              		.syntax unified
 821              		.code	16
 822              		.thumb_func
 823              		.fpu softvfp
 825              	graphic_write_command:
 826              	.LFB9:
 302:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** static void graphic_write_command(uint8_t command, uint8_t controller) {
 827              		.loc 1 302 0
 828              		.cfi_startproc
 829              		@ args = 0, pretend = 0, frame = 8
 830              		@ frame_needed = 1, uses_anonymous_args = 0
 831 02e8 80B5     		push	{r7, lr}
 832              		.cfi_def_cfa_offset 8
 833              		.cfi_offset 7, -8
 834              		.cfi_offset 14, -4
 835 02ea 82B0     		sub	sp, sp, #8
 836              		.cfi_def_cfa_offset 16
 837 02ec 00AF     		add	r7, sp, #0
 838              		.cfi_def_cfa_register 7
 839 02ee 0200     		movs	r2, r0
 840 02f0 FB1D     		adds	r3, r7, #7
 841 02f2 1A70     		strb	r2, [r3]
 842 02f4 BB1D     		adds	r3, r7, #6
 843 02f6 0A1C     		adds	r2, r1, #0
 844 02f8 1A70     		strb	r2, [r3]
 303:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_E);
 845              		.loc 1 303 0
 846 02fa 4020     		movs	r0, #64
 847 02fc FFF7A8FE 		bl	graphic_ctrl_bit_clear
 304:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	select_controller(controller);
 848              		.loc 1 304 0
 849 0300 BB1D     		adds	r3, r7, #6
 850 0302 1B78     		ldrb	r3, [r3]
 851 0304 1800     		movs	r0, r3
 852 0306 FFF7CBFE 		bl	select_controller
 305:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_RS|B_RW);
 853              		.loc 1 305 0
 854 030a 0320     		movs	r0, #3
 855 030c FFF7A0FE 		bl	graphic_ctrl_bit_clear
 306:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	graphic_write(command, controller);
 856              		.loc 1 306 0
 857 0310 BB1D     		adds	r3, r7, #6
 858 0312 1A78     		ldrb	r2, [r3]
 859 0314 FB1D     		adds	r3, r7, #7
 860 0316 1B78     		ldrb	r3, [r3]
 861 0318 1100     		movs	r1, r2
 862 031a 1800     		movs	r0, r3
 863 031c FFF7ADFF 		bl	graphic_write
 307:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 864              		.loc 1 307 0
 865 0320 C046     		nop
 866 0322 BD46     		mov	sp, r7
 867 0324 02B0     		add	sp, sp, #8
 868              		@ sp needed
 869 0326 80BD     		pop	{r7, pc}
 870              		.cfi_endproc
 871              	.LFE9:
 873              		.align	1
 874              		.syntax unified
 875              		.code	16
 876              		.thumb_func
 877              		.fpu softvfp
 879              	graphic_write_data:
 880              	.LFB10:
 308:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** static void graphic_write_data(uint8_t data, uint8_t controller) {
 881              		.loc 1 308 0
 882              		.cfi_startproc
 883              		@ args = 0, pretend = 0, frame = 8
 884              		@ frame_needed = 1, uses_anonymous_args = 0
 885 0328 80B5     		push	{r7, lr}
 886              		.cfi_def_cfa_offset 8
 887              		.cfi_offset 7, -8
 888              		.cfi_offset 14, -4
 889 032a 82B0     		sub	sp, sp, #8
 890              		.cfi_def_cfa_offset 16
 891 032c 00AF     		add	r7, sp, #0
 892              		.cfi_def_cfa_register 7
 893 032e 0200     		movs	r2, r0
 894 0330 FB1D     		adds	r3, r7, #7
 895 0332 1A70     		strb	r2, [r3]
 896 0334 BB1D     		adds	r3, r7, #6
 897 0336 0A1C     		adds	r2, r1, #0
 898 0338 1A70     		strb	r2, [r3]
 309:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_E);
 899              		.loc 1 309 0
 900 033a 4020     		movs	r0, #64
 901 033c FFF788FE 		bl	graphic_ctrl_bit_clear
 310:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	select_controller(controller);
 902              		.loc 1 310 0
 903 0340 BB1D     		adds	r3, r7, #6
 904 0342 1B78     		ldrb	r3, [r3]
 905 0344 1800     		movs	r0, r3
 906 0346 FFF7ABFE 		bl	select_controller
 311:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_set(B_RS);
 907              		.loc 1 311 0
 908 034a 0120     		movs	r0, #1
 909 034c FFF758FE 		bl	graphic_ctrl_bit_set
 312:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_RW);
 910              		.loc 1 312 0
 911 0350 0220     		movs	r0, #2
 912 0352 FFF77DFE 		bl	graphic_ctrl_bit_clear
 313:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	graphic_write(data, controller);
 913              		.loc 1 313 0
 914 0356 BB1D     		adds	r3, r7, #6
 915 0358 1A78     		ldrb	r2, [r3]
 916 035a FB1D     		adds	r3, r7, #7
 917 035c 1B78     		ldrb	r3, [r3]
 918 035e 1100     		movs	r1, r2
 919 0360 1800     		movs	r0, r3
 920 0362 FFF78AFF 		bl	graphic_write
 314:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 921              		.loc 1 314 0
 922 0366 C046     		nop
 923 0368 BD46     		mov	sp, r7
 924 036a 02B0     		add	sp, sp, #8
 925              		@ sp needed
 926 036c 80BD     		pop	{r7, pc}
 927              		.cfi_endproc
 928              	.LFE10:
 930              		.align	1
 931              		.global	graphic_clear_screen
 932              		.syntax unified
 933              		.code	16
 934              		.thumb_func
 935              		.fpu softvfp
 937              	graphic_clear_screen:
 938              	.LFB11:
 315:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void graphic_clear_screen(void) {
 939              		.loc 1 315 0
 940              		.cfi_startproc
 941              		@ args = 0, pretend = 0, frame = 8
 942              		@ frame_needed = 1, uses_anonymous_args = 0
 943 036e 80B5     		push	{r7, lr}
 944              		.cfi_def_cfa_offset 8
 945              		.cfi_offset 7, -8
 946              		.cfi_offset 14, -4
 947 0370 82B0     		sub	sp, sp, #8
 948              		.cfi_def_cfa_offset 16
 949 0372 00AF     		add	r7, sp, #0
 950              		.cfi_def_cfa_register 7
 316:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	uint8_t i, j;
 317:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	for(j = 0; j < 8; j++) {
 951              		.loc 1 317 0
 952 0374 BB1D     		adds	r3, r7, #6
 953 0376 0022     		movs	r2, #0
 954 0378 1A70     		strb	r2, [r3]
 955 037a 23E0     		b	.L42
 956              	.L45:
 318:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
 957              		.loc 1 318 0
 958 037c BB1D     		adds	r3, r7, #6
 959 037e 1B78     		ldrb	r3, [r3]
 960 0380 4822     		movs	r2, #72
 961 0382 5242     		rsbs	r2, r2, #0
 962 0384 1343     		orrs	r3, r2
 963 0386 DBB2     		uxtb	r3, r3
 964 0388 1821     		movs	r1, #24
 965 038a 1800     		movs	r0, r3
 966 038c FFF7ACFF 		bl	graphic_write_command
 319:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		graphic_write_command(LCD_SET_ADD | 0, B_CS1|B_CS2);
 967              		.loc 1 319 0
 968 0390 1821     		movs	r1, #24
 969 0392 4020     		movs	r0, #64
 970 0394 FFF7A8FF 		bl	graphic_write_command
 320:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		for(i = 0; i <= 63; i++){
 971              		.loc 1 320 0
 972 0398 FB1D     		adds	r3, r7, #7
 973 039a 0022     		movs	r2, #0
 974 039c 1A70     		strb	r2, [r3]
 975 039e 08E0     		b	.L43
 976              	.L44:
 321:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			graphic_write_data(0, B_CS1|B_CS2);
 977              		.loc 1 321 0 discriminator 3
 978 03a0 1821     		movs	r1, #24
 979 03a2 0020     		movs	r0, #0
 980 03a4 FFF7C0FF 		bl	graphic_write_data
 320:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		for(i = 0; i <= 63; i++){
 981              		.loc 1 320 0 discriminator 3
 982 03a8 FB1D     		adds	r3, r7, #7
 983 03aa 1A78     		ldrb	r2, [r3]
 984 03ac FB1D     		adds	r3, r7, #7
 985 03ae 0132     		adds	r2, r2, #1
 986 03b0 1A70     		strb	r2, [r3]
 987              	.L43:
 320:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		for(i = 0; i <= 63; i++){
 988              		.loc 1 320 0 is_stmt 0 discriminator 1
 989 03b2 FB1D     		adds	r3, r7, #7
 990 03b4 1B78     		ldrb	r3, [r3]
 991 03b6 3F2B     		cmp	r3, #63
 992 03b8 F2D9     		bls	.L44
 317:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
 993              		.loc 1 317 0 is_stmt 1 discriminator 2
 994 03ba BB1D     		adds	r3, r7, #6
 995 03bc 1A78     		ldrb	r2, [r3]
 996 03be BB1D     		adds	r3, r7, #6
 997 03c0 0132     		adds	r2, r2, #1
 998 03c2 1A70     		strb	r2, [r3]
 999              	.L42:
 317:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
 1000              		.loc 1 317 0 is_stmt 0 discriminator 1
 1001 03c4 BB1D     		adds	r3, r7, #6
 1002 03c6 1B78     		ldrb	r3, [r3]
 1003 03c8 072B     		cmp	r3, #7
 1004 03ca D7D9     		bls	.L45
 322:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		}
 323:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 324:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 1005              		.loc 1 324 0 is_stmt 1
 1006 03cc C046     		nop
 1007 03ce BD46     		mov	sp, r7
 1008 03d0 02B0     		add	sp, sp, #8
 1009              		@ sp needed
 1010 03d2 80BD     		pop	{r7, pc}
 1011              		.cfi_endproc
 1012              	.LFE11:
 1014              		.align	1
 1015              		.global	pixel
 1016              		.syntax unified
 1017              		.code	16
 1018              		.thumb_func
 1019              		.fpu softvfp
 1021              	pixel:
 1022              	.LFB12:
 325:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
 326:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void pixel(int x, int y, int set) {
 1023              		.loc 1 326 0
 1024              		.cfi_startproc
 1025              		@ args = 0, pretend = 0, frame = 32
 1026              		@ frame_needed = 1, uses_anonymous_args = 0
 1027 03d4 B0B5     		push	{r4, r5, r7, lr}
 1028              		.cfi_def_cfa_offset 16
 1029              		.cfi_offset 4, -16
 1030              		.cfi_offset 5, -12
 1031              		.cfi_offset 7, -8
 1032              		.cfi_offset 14, -4
 1033 03d6 88B0     		sub	sp, sp, #32
 1034              		.cfi_def_cfa_offset 48
 1035 03d8 00AF     		add	r7, sp, #0
 1036              		.cfi_def_cfa_register 7
 1037 03da F860     		str	r0, [r7, #12]
 1038 03dc B960     		str	r1, [r7, #8]
 1039 03de 7A60     		str	r2, [r7, #4]
 327:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	uint8_t mask, c, controller;
 328:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	int index;
 329:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	if((x < 1) || (y < 1) || (x > 128) || (y > 64)) return;
 1040              		.loc 1 329 0
 1041 03e0 FB68     		ldr	r3, [r7, #12]
 1042 03e2 002B     		cmp	r3, #0
 1043 03e4 00DC     		bgt	.LCB696
 1044 03e6 B6E0     		b	.L67	@long jump
 1045              	.LCB696:
 1046              		.loc 1 329 0 is_stmt 0 discriminator 1
 1047 03e8 BB68     		ldr	r3, [r7, #8]
 1048 03ea 002B     		cmp	r3, #0
 1049 03ec 00DC     		bgt	.LCB699
 1050 03ee B2E0     		b	.L67	@long jump
 1051              	.LCB699:
 1052              		.loc 1 329 0 discriminator 2
 1053 03f0 FB68     		ldr	r3, [r7, #12]
 1054 03f2 802B     		cmp	r3, #128
 1055 03f4 00DD     		ble	.LCB702
 1056 03f6 AEE0     		b	.L67	@long jump
 1057              	.LCB702:
 1058              		.loc 1 329 0 discriminator 3
 1059 03f8 BB68     		ldr	r3, [r7, #8]
 1060 03fa 402B     		cmp	r3, #64
 1061 03fc 00DD     		ble	.LCB705
 1062 03fe AAE0     		b	.L67	@long jump
 1063              	.LCB705:
 330:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	index = (y-1)/8;
 1064              		.loc 1 330 0 is_stmt 1
 1065 0400 BB68     		ldr	r3, [r7, #8]
 1066 0402 013B     		subs	r3, r3, #1
 1067 0404 002B     		cmp	r3, #0
 1068 0406 00DA     		bge	.L50
 1069 0408 0733     		adds	r3, r3, #7
 1070              	.L50:
 1071 040a DB10     		asrs	r3, r3, #3
 1072 040c BB61     		str	r3, [r7, #24]
 331:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	switch( (y-1)%8 ) {
 1073              		.loc 1 331 0
 1074 040e BB68     		ldr	r3, [r7, #8]
 1075 0410 013B     		subs	r3, r3, #1
 1076 0412 534A     		ldr	r2, .L68
 1077 0414 1340     		ands	r3, r2
 1078 0416 04D5     		bpl	.L51
 1079 0418 013B     		subs	r3, r3, #1
 1080 041a 0822     		movs	r2, #8
 1081 041c 5242     		rsbs	r2, r2, #0
 1082 041e 1343     		orrs	r3, r2
 1083 0420 0133     		adds	r3, r3, #1
 1084              	.L51:
 1085 0422 072B     		cmp	r3, #7
 1086 0424 2CD8     		bhi	.L52
 1087 0426 9A00     		lsls	r2, r3, #2
 1088 0428 4E4B     		ldr	r3, .L68+4
 1089 042a D318     		adds	r3, r2, r3
 1090 042c 1B68     		ldr	r3, [r3]
 1091 042e 9F46     		mov	pc, r3
 1092              		.section	.rodata
 1093              		.align	2
 1094              	.L54:
 1095 0000 30040000 		.word	.L53
 1096 0004 3A040000 		.word	.L55
 1097 0008 44040000 		.word	.L56
 1098 000c 4E040000 		.word	.L57
 1099 0010 58040000 		.word	.L58
 1100 0014 62040000 		.word	.L59
 1101 0018 6C040000 		.word	.L60
 1102 001c 76040000 		.word	.L61
 1103              		.text
 1104              	.L53:
 332:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		case 0: mask = 1; break;
 1105              		.loc 1 332 0
 1106 0430 1F23     		movs	r3, #31
 1107 0432 FB18     		adds	r3, r7, r3
 1108 0434 0122     		movs	r2, #1
 1109 0436 1A70     		strb	r2, [r3]
 1110 0438 22E0     		b	.L52
 1111              	.L55:
 333:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		case 1: mask = 2; break;
 1112              		.loc 1 333 0
 1113 043a 1F23     		movs	r3, #31
 1114 043c FB18     		adds	r3, r7, r3
 1115 043e 0222     		movs	r2, #2
 1116 0440 1A70     		strb	r2, [r3]
 1117 0442 1DE0     		b	.L52
 1118              	.L56:
 334:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		case 2: mask = 4; break;
 1119              		.loc 1 334 0
 1120 0444 1F23     		movs	r3, #31
 1121 0446 FB18     		adds	r3, r7, r3
 1122 0448 0422     		movs	r2, #4
 1123 044a 1A70     		strb	r2, [r3]
 1124 044c 18E0     		b	.L52
 1125              	.L57:
 335:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		case 3: mask = 8; break;
 1126              		.loc 1 335 0
 1127 044e 1F23     		movs	r3, #31
 1128 0450 FB18     		adds	r3, r7, r3
 1129 0452 0822     		movs	r2, #8
 1130 0454 1A70     		strb	r2, [r3]
 1131 0456 13E0     		b	.L52
 1132              	.L58:
 336:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		case 4: mask = 0x10; break;
 1133              		.loc 1 336 0
 1134 0458 1F23     		movs	r3, #31
 1135 045a FB18     		adds	r3, r7, r3
 1136 045c 1022     		movs	r2, #16
 1137 045e 1A70     		strb	r2, [r3]
 1138 0460 0EE0     		b	.L52
 1139              	.L59:
 337:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		case 5: mask = 0x20; break;
 1140              		.loc 1 337 0
 1141 0462 1F23     		movs	r3, #31
 1142 0464 FB18     		adds	r3, r7, r3
 1143 0466 2022     		movs	r2, #32
 1144 0468 1A70     		strb	r2, [r3]
 1145 046a 09E0     		b	.L52
 1146              	.L60:
 338:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		case 6: mask = 0x40; break;
 1147              		.loc 1 338 0
 1148 046c 1F23     		movs	r3, #31
 1149 046e FB18     		adds	r3, r7, r3
 1150 0470 4022     		movs	r2, #64
 1151 0472 1A70     		strb	r2, [r3]
 1152 0474 04E0     		b	.L52
 1153              	.L61:
 339:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		case 7: mask = 0x80; break;
 1154              		.loc 1 339 0
 1155 0476 1F23     		movs	r3, #31
 1156 0478 FB18     		adds	r3, r7, r3
 1157 047a 8022     		movs	r2, #128
 1158 047c 1A70     		strb	r2, [r3]
 1159 047e C046     		nop
 1160              	.L52:
 340:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 341:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		if(set == 0)
 1161              		.loc 1 341 0
 1162 0480 7B68     		ldr	r3, [r7, #4]
 1163 0482 002B     		cmp	r3, #0
 1164 0484 05D1     		bne	.L62
 342:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			mask = ~mask;
 1165              		.loc 1 342 0
 1166 0486 1F22     		movs	r2, #31
 1167 0488 BB18     		adds	r3, r7, r2
 1168 048a BA18     		adds	r2, r7, r2
 1169 048c 1278     		ldrb	r2, [r2]
 1170 048e D243     		mvns	r2, r2
 1171 0490 1A70     		strb	r2, [r3]
 1172              	.L62:
 343:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		if(x > 64){
 1173              		.loc 1 343 0
 1174 0492 FB68     		ldr	r3, [r7, #12]
 1175 0494 402B     		cmp	r3, #64
 1176 0496 07DD     		ble	.L63
 344:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			controller = B_CS2;
 1177              		.loc 1 344 0
 1178 0498 1E23     		movs	r3, #30
 1179 049a FB18     		adds	r3, r7, r3
 1180 049c 1022     		movs	r2, #16
 1181 049e 1A70     		strb	r2, [r3]
 345:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		x = x - 65;
 1182              		.loc 1 345 0
 1183 04a0 FB68     		ldr	r3, [r7, #12]
 1184 04a2 413B     		subs	r3, r3, #65
 1185 04a4 FB60     		str	r3, [r7, #12]
 1186 04a6 06E0     		b	.L64
 1187              	.L63:
 346:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		} 
 347:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		else {
 348:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		controller = B_CS1;
 1188              		.loc 1 348 0
 1189 04a8 1E23     		movs	r3, #30
 1190 04aa FB18     		adds	r3, r7, r3
 1191 04ac 0822     		movs	r2, #8
 1192 04ae 1A70     		strb	r2, [r3]
 349:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		x = x-1;
 1193              		.loc 1 349 0
 1194 04b0 FB68     		ldr	r3, [r7, #12]
 1195 04b2 013B     		subs	r3, r3, #1
 1196 04b4 FB60     		str	r3, [r7, #12]
 1197              	.L64:
 350:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		}
 351:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		graphic_write_command(LCD_SET_ADD | x, controller );
 1198              		.loc 1 351 0
 1199 04b6 FB68     		ldr	r3, [r7, #12]
 1200 04b8 5BB2     		sxtb	r3, r3
 1201 04ba 4022     		movs	r2, #64
 1202 04bc 1343     		orrs	r3, r2
 1203 04be 5BB2     		sxtb	r3, r3
 1204 04c0 DAB2     		uxtb	r2, r3
 1205 04c2 1E25     		movs	r5, #30
 1206 04c4 7B19     		adds	r3, r7, r5
 1207 04c6 1B78     		ldrb	r3, [r3]
 1208 04c8 1900     		movs	r1, r3
 1209 04ca 1000     		movs	r0, r2
 1210 04cc FFF70CFF 		bl	graphic_write_command
 352:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		graphic_write_command(LCD_SET_PAGE | index, controller );
 1211              		.loc 1 352 0
 1212 04d0 BB69     		ldr	r3, [r7, #24]
 1213 04d2 5BB2     		sxtb	r3, r3
 1214 04d4 4822     		movs	r2, #72
 1215 04d6 5242     		rsbs	r2, r2, #0
 1216 04d8 1343     		orrs	r3, r2
 1217 04da 5BB2     		sxtb	r3, r3
 1218 04dc DAB2     		uxtb	r2, r3
 1219 04de 7B19     		adds	r3, r7, r5
 1220 04e0 1B78     		ldrb	r3, [r3]
 1221 04e2 1900     		movs	r1, r3
 1222 04e4 1000     		movs	r0, r2
 1223 04e6 FFF7FFFE 		bl	graphic_write_command
 353:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		c = graphic_read_data(controller);
 1224              		.loc 1 353 0
 1225 04ea 1723     		movs	r3, #23
 1226 04ec FC18     		adds	r4, r7, r3
 1227 04ee 7B19     		adds	r3, r7, r5
 1228 04f0 1B78     		ldrb	r3, [r3]
 1229 04f2 1800     		movs	r0, r3
 1230 04f4 FFF7ACFE 		bl	graphic_read_data
 1231 04f8 0300     		movs	r3, r0
 1232 04fa 2370     		strb	r3, [r4]
 354:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		graphic_write_command(LCD_SET_ADD | x, controller);
 1233              		.loc 1 354 0
 1234 04fc FB68     		ldr	r3, [r7, #12]
 1235 04fe 5BB2     		sxtb	r3, r3
 1236 0500 4022     		movs	r2, #64
 1237 0502 1343     		orrs	r3, r2
 1238 0504 5BB2     		sxtb	r3, r3
 1239 0506 DAB2     		uxtb	r2, r3
 1240 0508 7B19     		adds	r3, r7, r5
 1241 050a 1B78     		ldrb	r3, [r3]
 1242 050c 1900     		movs	r1, r3
 1243 050e 1000     		movs	r0, r2
 1244 0510 FFF7EAFE 		bl	graphic_write_command
 355:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		if(set)
 1245              		.loc 1 355 0
 1246 0514 7B68     		ldr	r3, [r7, #4]
 1247 0516 002B     		cmp	r3, #0
 1248 0518 09D0     		beq	.L65
 356:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			mask = mask | c;
 1249              		.loc 1 356 0
 1250 051a 1F22     		movs	r2, #31
 1251 051c BB18     		adds	r3, r7, r2
 1252 051e B918     		adds	r1, r7, r2
 1253 0520 1722     		movs	r2, #23
 1254 0522 BA18     		adds	r2, r7, r2
 1255 0524 0978     		ldrb	r1, [r1]
 1256 0526 1278     		ldrb	r2, [r2]
 1257 0528 0A43     		orrs	r2, r1
 1258 052a 1A70     		strb	r2, [r3]
 1259 052c 08E0     		b	.L66
 1260              	.L65:
 357:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		else
 358:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			mask = mask & c;
 1261              		.loc 1 358 0
 1262 052e 1F22     		movs	r2, #31
 1263 0530 BB18     		adds	r3, r7, r2
 1264 0532 BA18     		adds	r2, r7, r2
 1265 0534 1721     		movs	r1, #23
 1266 0536 7918     		adds	r1, r7, r1
 1267 0538 1278     		ldrb	r2, [r2]
 1268 053a 0978     		ldrb	r1, [r1]
 1269 053c 0A40     		ands	r2, r1
 1270 053e 1A70     		strb	r2, [r3]
 1271              	.L66:
 359:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		graphic_write_data(mask, controller);
 1272              		.loc 1 359 0
 1273 0540 1E23     		movs	r3, #30
 1274 0542 FB18     		adds	r3, r7, r3
 1275 0544 1A78     		ldrb	r2, [r3]
 1276 0546 1F23     		movs	r3, #31
 1277 0548 FB18     		adds	r3, r7, r3
 1278 054a 1B78     		ldrb	r3, [r3]
 1279 054c 1100     		movs	r1, r2
 1280 054e 1800     		movs	r0, r3
 1281 0550 FFF7EAFE 		bl	graphic_write_data
 1282 0554 00E0     		b	.L46
 1283              	.L67:
 329:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	index = (y-1)/8;
 1284              		.loc 1 329 0
 1285 0556 C046     		nop
 1286              	.L46:
 360:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 1287              		.loc 1 360 0
 1288 0558 BD46     		mov	sp, r7
 1289 055a 08B0     		add	sp, sp, #32
 1290              		@ sp needed
 1291 055c B0BD     		pop	{r4, r5, r7, pc}
 1292              	.L69:
 1293 055e C046     		.align	2
 1294              	.L68:
 1295 0560 07000080 		.word	-2147483641
 1296 0564 00000000 		.word	.L54
 1297              		.cfi_endproc
 1298              	.LFE12:
 1300              		.align	1
 1301              		.global	check_ball_collision
 1302              		.syntax unified
 1303              		.code	16
 1304              		.thumb_func
 1305              		.fpu softvfp
 1307              	check_ball_collision:
 1308              	.LFB13:
 361:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
 362:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** // Game object funcions.
 363:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void check_ball_collision(POBJECT O){ //Check if the ball hits anything.
 1309              		.loc 1 363 0
 1310              		.cfi_startproc
 1311              		@ args = 0, pretend = 0, frame = 8
 1312              		@ frame_needed = 1, uses_anonymous_args = 0
 1313 0568 90B5     		push	{r4, r7, lr}
 1314              		.cfi_def_cfa_offset 12
 1315              		.cfi_offset 4, -12
 1316              		.cfi_offset 7, -8
 1317              		.cfi_offset 14, -4
 1318 056a 83B0     		sub	sp, sp, #12
 1319              		.cfi_def_cfa_offset 24
 1320 056c 00AF     		add	r7, sp, #0
 1321              		.cfi_def_cfa_register 7
 1322 056e 7860     		str	r0, [r7, #4]
 364:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	// Check if hits left side. if it does P2 get point.
 365:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	if(O->posx < 1){
 1323              		.loc 1 365 0
 1324 0570 7B68     		ldr	r3, [r7, #4]
 1325 0572 DB68     		ldr	r3, [r3, #12]
 1326 0574 002B     		cmp	r3, #0
 1327 0576 22DC     		bgt	.L71
 1328              	.LBB2:
 366:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		Player2.points = Player2.points + 1;
 1329              		.loc 1 366 0
 1330 0578 704B     		ldr	r3, .L78
 1331 057a 5B68     		ldr	r3, [r3, #4]
 1332 057c 5A1C     		adds	r2, r3, #1
 1333 057e 6F4B     		ldr	r3, .L78
 1334 0580 5A60     		str	r2, [r3, #4]
 367:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		ascii_clear_dsplay();
 1335              		.loc 1 367 0
 1336 0582 FFF7FEFF 		bl	ascii_clear_dsplay
 368:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		print_to_ascii(Player1.PAscii, ('0' + Player1.points), 1);
 1337              		.loc 1 368 0
 1338 0586 6E4B     		ldr	r3, .L78+4
 1339 0588 5B68     		ldr	r3, [r3, #4]
 1340 058a 3033     		adds	r3, r3, #48
 1341 058c 1900     		movs	r1, r3
 1342 058e 6D4B     		ldr	r3, .L78+8
 1343 0590 0122     		movs	r2, #1
 1344 0592 1800     		movs	r0, r3
 1345 0594 FFF7FEFF 		bl	print_to_ascii
 369:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		print_to_ascii(Player2.PAscii, ('0' + Player2.points), 2);
 1346              		.loc 1 369 0
 1347 0598 684B     		ldr	r3, .L78
 1348 059a 5B68     		ldr	r3, [r3, #4]
 1349 059c 3033     		adds	r3, r3, #48
 1350 059e 1900     		movs	r1, r3
 1351 05a0 694B     		ldr	r3, .L78+12
 1352 05a2 0222     		movs	r2, #2
 1353 05a4 1800     		movs	r0, r3
 1354 05a6 FFF7FEFF 		bl	print_to_ascii
 370:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		O->set_pos(O,LCD_WIDTH/2,LCD_HEIGHT/2);
 1355              		.loc 1 370 0
 1356 05aa 7B68     		ldr	r3, [r7, #4]
 1357 05ac 5B6A     		ldr	r3, [r3, #36]
 1358 05ae 7868     		ldr	r0, [r7, #4]
 1359 05b0 2022     		movs	r2, #32
 1360 05b2 4021     		movs	r1, #64
 1361 05b4 9847     		blx	r3
 1362              	.LVL0:
 371:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		delay_milli(200);
 1363              		.loc 1 371 0
 1364 05b6 C820     		movs	r0, #200
 1365 05b8 FFF7FEFF 		bl	delay_milli
 1366              	.LBE2:
 372:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 373:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	// Check if hits right side. if it does P1 get point.
 374:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	else if(O->posx > LCD_WIDTH){
 375:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		Player1.points = Player1.points + 1;
 376:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		ascii_clear_dsplay();
 377:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		print_to_ascii(Player1.PAscii, ('0' + Player1.points), 1);
 378:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		print_to_ascii(Player2.PAscii, ('0' + Player2.points), 2);
 379:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		O->set_pos(O,LCD_WIDTH/2,LCD_HEIGHT/2);
 380:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		delay_milli(200);
 381:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
 382:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 383:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	//Check if the ball hits the roof or floor it changes Y direction.
 384:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	else if(O->posy < 3 || O->posy >= LCD_HEIGHT - O->geo->sizeY){
 385:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		O->diry = -(O->diry);
 386:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 387:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	//If the ball hits player1's paddle, change direction.
 388:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	else if(O->posx < Player1.objct->posx + O->geo->sizeX && Player1.objct->posy -2 <= O->posy && O->p
 389:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 390:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		O->set_pos(O, Player1.objct->posx + 5, O->posy);
 391:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		Player1.objct->draw(Player1.objct);
 392:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 393:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	//If the ball hits player1's paddle, change direction.
 394:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	else if(O->posx > Player2.objct->posx - O->geo->sizeX && Player2.objct->posy -2 <= O->posy && O->p
 395:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 396:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		O->set_pos(O, Player2.objct->posx - 5, O->posy);
 397:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		Player2.objct->draw(Player2.objct);
 398:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 399:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 1367              		.loc 1 399 0
 1368 05bc B9E0     		b	.L77
 1369              	.L71:
 374:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		Player1.points = Player1.points + 1;
 1370              		.loc 1 374 0
 1371 05be 7B68     		ldr	r3, [r7, #4]
 1372 05c0 DB68     		ldr	r3, [r3, #12]
 1373 05c2 802B     		cmp	r3, #128
 1374 05c4 22DD     		ble	.L73
 1375              	.LBB3:
 375:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		ascii_clear_dsplay();
 1376              		.loc 1 375 0
 1377 05c6 5E4B     		ldr	r3, .L78+4
 1378 05c8 5B68     		ldr	r3, [r3, #4]
 1379 05ca 5A1C     		adds	r2, r3, #1
 1380 05cc 5C4B     		ldr	r3, .L78+4
 1381 05ce 5A60     		str	r2, [r3, #4]
 376:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		print_to_ascii(Player1.PAscii, ('0' + Player1.points), 1);
 1382              		.loc 1 376 0
 1383 05d0 FFF7FEFF 		bl	ascii_clear_dsplay
 377:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		print_to_ascii(Player2.PAscii, ('0' + Player2.points), 2);
 1384              		.loc 1 377 0
 1385 05d4 5A4B     		ldr	r3, .L78+4
 1386 05d6 5B68     		ldr	r3, [r3, #4]
 1387 05d8 3033     		adds	r3, r3, #48
 1388 05da 1900     		movs	r1, r3
 1389 05dc 594B     		ldr	r3, .L78+8
 1390 05de 0122     		movs	r2, #1
 1391 05e0 1800     		movs	r0, r3
 1392 05e2 FFF7FEFF 		bl	print_to_ascii
 378:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		O->set_pos(O,LCD_WIDTH/2,LCD_HEIGHT/2);
 1393              		.loc 1 378 0
 1394 05e6 554B     		ldr	r3, .L78
 1395 05e8 5B68     		ldr	r3, [r3, #4]
 1396 05ea 3033     		adds	r3, r3, #48
 1397 05ec 1900     		movs	r1, r3
 1398 05ee 564B     		ldr	r3, .L78+12
 1399 05f0 0222     		movs	r2, #2
 1400 05f2 1800     		movs	r0, r3
 1401 05f4 FFF7FEFF 		bl	print_to_ascii
 379:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		delay_milli(200);
 1402              		.loc 1 379 0
 1403 05f8 7B68     		ldr	r3, [r7, #4]
 1404 05fa 5B6A     		ldr	r3, [r3, #36]
 1405 05fc 7868     		ldr	r0, [r7, #4]
 1406 05fe 2022     		movs	r2, #32
 1407 0600 4021     		movs	r1, #64
 1408 0602 9847     		blx	r3
 1409              	.LVL1:
 380:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
 1410              		.loc 1 380 0
 1411 0604 C820     		movs	r0, #200
 1412 0606 FFF7FEFF 		bl	delay_milli
 1413              	.LBE3:
 1414              		.loc 1 399 0
 1415 060a 92E0     		b	.L77
 1416              	.L73:
 384:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		O->diry = -(O->diry);
 1417              		.loc 1 384 0
 1418 060c 7B68     		ldr	r3, [r7, #4]
 1419 060e 1B69     		ldr	r3, [r3, #16]
 1420 0610 022B     		cmp	r3, #2
 1421 0612 08DD     		ble	.L74
 384:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		O->diry = -(O->diry);
 1422              		.loc 1 384 0 is_stmt 0 discriminator 1
 1423 0614 7B68     		ldr	r3, [r7, #4]
 1424 0616 1A69     		ldr	r2, [r3, #16]
 1425 0618 7B68     		ldr	r3, [r7, #4]
 1426 061a 1B68     		ldr	r3, [r3]
 1427 061c 9B68     		ldr	r3, [r3, #8]
 1428 061e 4021     		movs	r1, #64
 1429 0620 CB1A     		subs	r3, r1, r3
 1430 0622 9A42     		cmp	r2, r3
 1431 0624 05DB     		blt	.L75
 1432              	.L74:
 385:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 1433              		.loc 1 385 0 is_stmt 1
 1434 0626 7B68     		ldr	r3, [r7, #4]
 1435 0628 9B68     		ldr	r3, [r3, #8]
 1436 062a 5A42     		rsbs	r2, r3, #0
 1437 062c 7B68     		ldr	r3, [r7, #4]
 1438 062e 9A60     		str	r2, [r3, #8]
 1439 0630 7FE0     		b	.L72
 1440              	.L75:
 388:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1441              		.loc 1 388 0
 1442 0632 7B68     		ldr	r3, [r7, #4]
 1443 0634 DA68     		ldr	r2, [r3, #12]
 1444 0636 424B     		ldr	r3, .L78+4
 1445 0638 1B68     		ldr	r3, [r3]
 1446 063a D968     		ldr	r1, [r3, #12]
 1447 063c 7B68     		ldr	r3, [r7, #4]
 1448 063e 1B68     		ldr	r3, [r3]
 1449 0640 5B68     		ldr	r3, [r3, #4]
 1450 0642 CB18     		adds	r3, r1, r3
 1451 0644 9A42     		cmp	r2, r3
 1452 0646 34DA     		bge	.L76
 388:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1453              		.loc 1 388 0 is_stmt 0 discriminator 1
 1454 0648 3D4B     		ldr	r3, .L78+4
 1455 064a 1B68     		ldr	r3, [r3]
 1456 064c 1B69     		ldr	r3, [r3, #16]
 1457 064e 9A1E     		subs	r2, r3, #2
 1458 0650 7B68     		ldr	r3, [r7, #4]
 1459 0652 1B69     		ldr	r3, [r3, #16]
 1460 0654 9A42     		cmp	r2, r3
 1461 0656 2CDC     		bgt	.L76
 388:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1462              		.loc 1 388 0 discriminator 2
 1463 0658 7B68     		ldr	r3, [r7, #4]
 1464 065a 1A69     		ldr	r2, [r3, #16]
 1465 065c 384B     		ldr	r3, .L78+4
 1466 065e 1B68     		ldr	r3, [r3]
 1467 0660 1969     		ldr	r1, [r3, #16]
 1468 0662 374B     		ldr	r3, .L78+4
 1469 0664 1B68     		ldr	r3, [r3]
 1470 0666 1B68     		ldr	r3, [r3]
 1471 0668 9B68     		ldr	r3, [r3, #8]
 1472 066a CB18     		adds	r3, r1, r3
 1473 066c 0133     		adds	r3, r3, #1
 1474 066e 9A42     		cmp	r2, r3
 1475 0670 1FDC     		bgt	.L76
 388:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1476              		.loc 1 388 0 discriminator 3
 1477 0672 7B68     		ldr	r3, [r7, #4]
 1478 0674 DA68     		ldr	r2, [r3, #12]
 1479 0676 324B     		ldr	r3, .L78+4
 1480 0678 1B68     		ldr	r3, [r3]
 1481 067a DB68     		ldr	r3, [r3, #12]
 1482 067c 043B     		subs	r3, r3, #4
 1483 067e 9A42     		cmp	r2, r3
 1484 0680 17DD     		ble	.L76
 389:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		O->set_pos(O, Player1.objct->posx + 5, O->posy);
 1485              		.loc 1 389 0 is_stmt 1
 1486 0682 7B68     		ldr	r3, [r7, #4]
 1487 0684 5B68     		ldr	r3, [r3, #4]
 1488 0686 5A42     		rsbs	r2, r3, #0
 1489 0688 7B68     		ldr	r3, [r7, #4]
 1490 068a 5A60     		str	r2, [r3, #4]
 390:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		Player1.objct->draw(Player1.objct);
 1491              		.loc 1 390 0
 1492 068c 7B68     		ldr	r3, [r7, #4]
 1493 068e 5C6A     		ldr	r4, [r3, #36]
 1494 0690 2B4B     		ldr	r3, .L78+4
 1495 0692 1B68     		ldr	r3, [r3]
 1496 0694 DB68     		ldr	r3, [r3, #12]
 1497 0696 591D     		adds	r1, r3, #5
 1498 0698 7B68     		ldr	r3, [r7, #4]
 1499 069a 1A69     		ldr	r2, [r3, #16]
 1500 069c 7B68     		ldr	r3, [r7, #4]
 1501 069e 1800     		movs	r0, r3
 1502 06a0 A047     		blx	r4
 1503              	.LVL2:
 391:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 1504              		.loc 1 391 0
 1505 06a2 274B     		ldr	r3, .L78+4
 1506 06a4 1B68     		ldr	r3, [r3]
 1507 06a6 5A69     		ldr	r2, [r3, #20]
 1508 06a8 254B     		ldr	r3, .L78+4
 1509 06aa 1B68     		ldr	r3, [r3]
 1510 06ac 1800     		movs	r0, r3
 1511 06ae 9047     		blx	r2
 1512              	.LVL3:
 1513 06b0 3FE0     		b	.L72
 1514              	.L76:
 394:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1515              		.loc 1 394 0
 1516 06b2 7B68     		ldr	r3, [r7, #4]
 1517 06b4 DA68     		ldr	r2, [r3, #12]
 1518 06b6 214B     		ldr	r3, .L78
 1519 06b8 1B68     		ldr	r3, [r3]
 1520 06ba D968     		ldr	r1, [r3, #12]
 1521 06bc 7B68     		ldr	r3, [r7, #4]
 1522 06be 1B68     		ldr	r3, [r3]
 1523 06c0 5B68     		ldr	r3, [r3, #4]
 1524 06c2 CB1A     		subs	r3, r1, r3
 1525 06c4 9A42     		cmp	r2, r3
 1526 06c6 34DD     		ble	.L77
 394:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1527              		.loc 1 394 0 is_stmt 0 discriminator 1
 1528 06c8 1C4B     		ldr	r3, .L78
 1529 06ca 1B68     		ldr	r3, [r3]
 1530 06cc 1B69     		ldr	r3, [r3, #16]
 1531 06ce 9A1E     		subs	r2, r3, #2
 1532 06d0 7B68     		ldr	r3, [r7, #4]
 1533 06d2 1B69     		ldr	r3, [r3, #16]
 1534 06d4 9A42     		cmp	r2, r3
 1535 06d6 2CDC     		bgt	.L77
 394:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1536              		.loc 1 394 0 discriminator 2
 1537 06d8 7B68     		ldr	r3, [r7, #4]
 1538 06da 1A69     		ldr	r2, [r3, #16]
 1539 06dc 174B     		ldr	r3, .L78
 1540 06de 1B68     		ldr	r3, [r3]
 1541 06e0 1969     		ldr	r1, [r3, #16]
 1542 06e2 164B     		ldr	r3, .L78
 1543 06e4 1B68     		ldr	r3, [r3]
 1544 06e6 1B68     		ldr	r3, [r3]
 1545 06e8 9B68     		ldr	r3, [r3, #8]
 1546 06ea CB18     		adds	r3, r1, r3
 1547 06ec 0133     		adds	r3, r3, #1
 1548 06ee 9A42     		cmp	r2, r3
 1549 06f0 1FDC     		bgt	.L77
 394:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1550              		.loc 1 394 0 discriminator 3
 1551 06f2 7B68     		ldr	r3, [r7, #4]
 1552 06f4 DA68     		ldr	r2, [r3, #12]
 1553 06f6 114B     		ldr	r3, .L78
 1554 06f8 1B68     		ldr	r3, [r3]
 1555 06fa DB68     		ldr	r3, [r3, #12]
 1556 06fc 0433     		adds	r3, r3, #4
 1557 06fe 9A42     		cmp	r2, r3
 1558 0700 17DA     		bge	.L77
 395:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		O->set_pos(O, Player2.objct->posx - 5, O->posy);
 1559              		.loc 1 395 0 is_stmt 1
 1560 0702 7B68     		ldr	r3, [r7, #4]
 1561 0704 5B68     		ldr	r3, [r3, #4]
 1562 0706 5A42     		rsbs	r2, r3, #0
 1563 0708 7B68     		ldr	r3, [r7, #4]
 1564 070a 5A60     		str	r2, [r3, #4]
 396:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		Player2.objct->draw(Player2.objct);
 1565              		.loc 1 396 0
 1566 070c 7B68     		ldr	r3, [r7, #4]
 1567 070e 5C6A     		ldr	r4, [r3, #36]
 1568 0710 0A4B     		ldr	r3, .L78
 1569 0712 1B68     		ldr	r3, [r3]
 1570 0714 DB68     		ldr	r3, [r3, #12]
 1571 0716 591F     		subs	r1, r3, #5
 1572 0718 7B68     		ldr	r3, [r7, #4]
 1573 071a 1A69     		ldr	r2, [r3, #16]
 1574 071c 7B68     		ldr	r3, [r7, #4]
 1575 071e 1800     		movs	r0, r3
 1576 0720 A047     		blx	r4
 1577              	.LVL4:
 397:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 1578              		.loc 1 397 0
 1579 0722 064B     		ldr	r3, .L78
 1580 0724 1B68     		ldr	r3, [r3]
 1581 0726 5A69     		ldr	r2, [r3, #20]
 1582 0728 044B     		ldr	r3, .L78
 1583 072a 1B68     		ldr	r3, [r3]
 1584 072c 1800     		movs	r0, r3
 1585 072e 9047     		blx	r2
 1586              	.LVL5:
 1587              		.loc 1 399 0
 1588 0730 FFE7     		b	.L77
 1589              	.L72:
 1590              	.L77:
 1591 0732 C046     		nop
 1592 0734 BD46     		mov	sp, r7
 1593 0736 03B0     		add	sp, sp, #12
 1594              		@ sp needed
 1595 0738 90BD     		pop	{r4, r7, pc}
 1596              	.L79:
 1597 073a C046     		.align	2
 1598              	.L78:
 1599 073c 14010000 		.word	Player2
 1600 0740 F4000000 		.word	Player1
 1601 0744 FC000000 		.word	Player1+8
 1602 0748 1C010000 		.word	Player2+8
 1603              		.cfi_endproc
 1604              	.LFE13:
 1606              		.align	1
 1607              		.global	set_object_speed
 1608              		.syntax unified
 1609              		.code	16
 1610              		.thumb_func
 1611              		.fpu softvfp
 1613              	set_object_speed:
 1614              	.LFB14:
 400:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void set_object_speed(POBJECT O, int speedx, int speedy){
 1615              		.loc 1 400 0
 1616              		.cfi_startproc
 1617              		@ args = 0, pretend = 0, frame = 16
 1618              		@ frame_needed = 1, uses_anonymous_args = 0
 1619 074c 80B5     		push	{r7, lr}
 1620              		.cfi_def_cfa_offset 8
 1621              		.cfi_offset 7, -8
 1622              		.cfi_offset 14, -4
 1623 074e 84B0     		sub	sp, sp, #16
 1624              		.cfi_def_cfa_offset 24
 1625 0750 00AF     		add	r7, sp, #0
 1626              		.cfi_def_cfa_register 7
 1627 0752 F860     		str	r0, [r7, #12]
 1628 0754 B960     		str	r1, [r7, #8]
 1629 0756 7A60     		str	r2, [r7, #4]
 401:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	O->dirx = speedx;
 1630              		.loc 1 401 0
 1631 0758 FB68     		ldr	r3, [r7, #12]
 1632 075a BA68     		ldr	r2, [r7, #8]
 1633 075c 5A60     		str	r2, [r3, #4]
 402:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	O->diry = speedy;
 1634              		.loc 1 402 0
 1635 075e FB68     		ldr	r3, [r7, #12]
 1636 0760 7A68     		ldr	r2, [r7, #4]
 1637 0762 9A60     		str	r2, [r3, #8]
 403:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 1638              		.loc 1 403 0
 1639 0764 C046     		nop
 1640 0766 BD46     		mov	sp, r7
 1641 0768 04B0     		add	sp, sp, #16
 1642              		@ sp needed
 1643 076a 80BD     		pop	{r7, pc}
 1644              		.cfi_endproc
 1645              	.LFE14:
 1647              		.align	1
 1648              		.global	draw_object
 1649              		.syntax unified
 1650              		.code	16
 1651              		.thumb_func
 1652              		.fpu softvfp
 1654              	draw_object:
 1655              	.LFB15:
 404:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void draw_object(POBJECT O){
 1656              		.loc 1 404 0
 1657              		.cfi_startproc
 1658              		@ args = 0, pretend = 0, frame = 16
 1659              		@ frame_needed = 1, uses_anonymous_args = 0
 1660 076c 80B5     		push	{r7, lr}
 1661              		.cfi_def_cfa_offset 8
 1662              		.cfi_offset 7, -8
 1663              		.cfi_offset 14, -4
 1664 076e 84B0     		sub	sp, sp, #16
 1665              		.cfi_def_cfa_offset 24
 1666 0770 00AF     		add	r7, sp, #0
 1667              		.cfi_def_cfa_register 7
 1668 0772 7860     		str	r0, [r7, #4]
 1669              	.LBB4:
 405:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	for(int i = 0; i < MAX_POINTS ;i++){
 1670              		.loc 1 405 0
 1671 0774 0023     		movs	r3, #0
 1672 0776 FB60     		str	r3, [r7, #12]
 1673 0778 1CE0     		b	.L82
 1674              	.L83:
 406:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		pixel(O->posx + O->geo->px[i].x, O->posy + O->geo->px[i].y, 1);
 1675              		.loc 1 406 0 discriminator 3
 1676 077a 7B68     		ldr	r3, [r7, #4]
 1677 077c DA68     		ldr	r2, [r3, #12]
 1678 077e 7B68     		ldr	r3, [r7, #4]
 1679 0780 1968     		ldr	r1, [r3]
 1680 0782 FB68     		ldr	r3, [r7, #12]
 1681 0784 0433     		adds	r3, r3, #4
 1682 0786 5B00     		lsls	r3, r3, #1
 1683 0788 CB18     		adds	r3, r1, r3
 1684 078a 0433     		adds	r3, r3, #4
 1685 078c 1B78     		ldrb	r3, [r3]
 1686 078e D018     		adds	r0, r2, r3
 1687 0790 7B68     		ldr	r3, [r7, #4]
 1688 0792 1A69     		ldr	r2, [r3, #16]
 1689 0794 7B68     		ldr	r3, [r7, #4]
 1690 0796 1968     		ldr	r1, [r3]
 1691 0798 FB68     		ldr	r3, [r7, #12]
 1692 079a 0433     		adds	r3, r3, #4
 1693 079c 5B00     		lsls	r3, r3, #1
 1694 079e CB18     		adds	r3, r1, r3
 1695 07a0 0533     		adds	r3, r3, #5
 1696 07a2 1B78     		ldrb	r3, [r3]
 1697 07a4 D318     		adds	r3, r2, r3
 1698 07a6 0122     		movs	r2, #1
 1699 07a8 1900     		movs	r1, r3
 1700 07aa FFF7FEFF 		bl	pixel
 405:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	for(int i = 0; i < MAX_POINTS ;i++){
 1701              		.loc 1 405 0 discriminator 3
 1702 07ae FB68     		ldr	r3, [r7, #12]
 1703 07b0 0133     		adds	r3, r3, #1
 1704 07b2 FB60     		str	r3, [r7, #12]
 1705              	.L82:
 405:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	for(int i = 0; i < MAX_POINTS ;i++){
 1706              		.loc 1 405 0 is_stmt 0 discriminator 1
 1707 07b4 FB68     		ldr	r3, [r7, #12]
 1708 07b6 0D2B     		cmp	r3, #13
 1709 07b8 DFDD     		ble	.L83
 1710              	.LBE4:
 407:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 408:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 1711              		.loc 1 408 0 is_stmt 1
 1712 07ba C046     		nop
 1713 07bc BD46     		mov	sp, r7
 1714 07be 04B0     		add	sp, sp, #16
 1715              		@ sp needed
 1716 07c0 80BD     		pop	{r7, pc}
 1717              		.cfi_endproc
 1718              	.LFE15:
 1720              		.align	1
 1721              		.global	clear_object
 1722              		.syntax unified
 1723              		.code	16
 1724              		.thumb_func
 1725              		.fpu softvfp
 1727              	clear_object:
 1728              	.LFB16:
 409:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void clear_object(POBJECT O){
 1729              		.loc 1 409 0
 1730              		.cfi_startproc
 1731              		@ args = 0, pretend = 0, frame = 16
 1732              		@ frame_needed = 1, uses_anonymous_args = 0
 1733 07c2 80B5     		push	{r7, lr}
 1734              		.cfi_def_cfa_offset 8
 1735              		.cfi_offset 7, -8
 1736              		.cfi_offset 14, -4
 1737 07c4 84B0     		sub	sp, sp, #16
 1738              		.cfi_def_cfa_offset 24
 1739 07c6 00AF     		add	r7, sp, #0
 1740              		.cfi_def_cfa_register 7
 1741 07c8 7860     		str	r0, [r7, #4]
 1742              	.LBB5:
 410:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	for(int i = 0; i < MAX_POINTS; i++){
 1743              		.loc 1 410 0
 1744 07ca 0023     		movs	r3, #0
 1745 07cc FB60     		str	r3, [r7, #12]
 1746 07ce 1CE0     		b	.L85
 1747              	.L86:
 411:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		pixel(O->posx + O->geo->px[i].x, O->posy + O->geo->px[i].y, 0);
 1748              		.loc 1 411 0 discriminator 3
 1749 07d0 7B68     		ldr	r3, [r7, #4]
 1750 07d2 DA68     		ldr	r2, [r3, #12]
 1751 07d4 7B68     		ldr	r3, [r7, #4]
 1752 07d6 1968     		ldr	r1, [r3]
 1753 07d8 FB68     		ldr	r3, [r7, #12]
 1754 07da 0433     		adds	r3, r3, #4
 1755 07dc 5B00     		lsls	r3, r3, #1
 1756 07de CB18     		adds	r3, r1, r3
 1757 07e0 0433     		adds	r3, r3, #4
 1758 07e2 1B78     		ldrb	r3, [r3]
 1759 07e4 D018     		adds	r0, r2, r3
 1760 07e6 7B68     		ldr	r3, [r7, #4]
 1761 07e8 1A69     		ldr	r2, [r3, #16]
 1762 07ea 7B68     		ldr	r3, [r7, #4]
 1763 07ec 1968     		ldr	r1, [r3]
 1764 07ee FB68     		ldr	r3, [r7, #12]
 1765 07f0 0433     		adds	r3, r3, #4
 1766 07f2 5B00     		lsls	r3, r3, #1
 1767 07f4 CB18     		adds	r3, r1, r3
 1768 07f6 0533     		adds	r3, r3, #5
 1769 07f8 1B78     		ldrb	r3, [r3]
 1770 07fa D318     		adds	r3, r2, r3
 1771 07fc 0022     		movs	r2, #0
 1772 07fe 1900     		movs	r1, r3
 1773 0800 FFF7FEFF 		bl	pixel
 410:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	for(int i = 0; i < MAX_POINTS; i++){
 1774              		.loc 1 410 0 discriminator 3
 1775 0804 FB68     		ldr	r3, [r7, #12]
 1776 0806 0133     		adds	r3, r3, #1
 1777 0808 FB60     		str	r3, [r7, #12]
 1778              	.L85:
 410:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	for(int i = 0; i < MAX_POINTS; i++){
 1779              		.loc 1 410 0 is_stmt 0 discriminator 1
 1780 080a FB68     		ldr	r3, [r7, #12]
 1781 080c 0D2B     		cmp	r3, #13
 1782 080e DFDD     		ble	.L86
 1783              	.LBE5:
 412:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 413:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 1784              		.loc 1 413 0 is_stmt 1
 1785 0810 C046     		nop
 1786 0812 BD46     		mov	sp, r7
 1787 0814 04B0     		add	sp, sp, #16
 1788              		@ sp needed
 1789 0816 80BD     		pop	{r7, pc}
 1790              		.cfi_endproc
 1791              	.LFE16:
 1793              		.align	1
 1794              		.global	set_pos
 1795              		.syntax unified
 1796              		.code	16
 1797              		.thumb_func
 1798              		.fpu softvfp
 1800              	set_pos:
 1801              	.LFB17:
 414:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void set_pos(POBJECT O, int x, int y){
 1802              		.loc 1 414 0
 1803              		.cfi_startproc
 1804              		@ args = 0, pretend = 0, frame = 16
 1805              		@ frame_needed = 1, uses_anonymous_args = 0
 1806 0818 80B5     		push	{r7, lr}
 1807              		.cfi_def_cfa_offset 8
 1808              		.cfi_offset 7, -8
 1809              		.cfi_offset 14, -4
 1810 081a 84B0     		sub	sp, sp, #16
 1811              		.cfi_def_cfa_offset 24
 1812 081c 00AF     		add	r7, sp, #0
 1813              		.cfi_def_cfa_register 7
 1814 081e F860     		str	r0, [r7, #12]
 1815 0820 B960     		str	r1, [r7, #8]
 1816 0822 7A60     		str	r2, [r7, #4]
 415:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	O->posx = x;
 1817              		.loc 1 415 0
 1818 0824 FB68     		ldr	r3, [r7, #12]
 1819 0826 BA68     		ldr	r2, [r7, #8]
 1820 0828 DA60     		str	r2, [r3, #12]
 416:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	O->posy = y;
 1821              		.loc 1 416 0
 1822 082a FB68     		ldr	r3, [r7, #12]
 1823 082c 7A68     		ldr	r2, [r7, #4]
 1824 082e 1A61     		str	r2, [r3, #16]
 417:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 1825              		.loc 1 417 0
 1826 0830 C046     		nop
 1827 0832 BD46     		mov	sp, r7
 1828 0834 04B0     		add	sp, sp, #16
 1829              		@ sp needed
 1830 0836 80BD     		pop	{r7, pc}
 1831              		.cfi_endproc
 1832              	.LFE17:
 1834              		.align	1
 1835              		.global	move_ball
 1836              		.syntax unified
 1837              		.code	16
 1838              		.thumb_func
 1839              		.fpu softvfp
 1841              	move_ball:
 1842              	.LFB18:
 418:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void move_ball(POBJECT O){
 1843              		.loc 1 418 0
 1844              		.cfi_startproc
 1845              		@ args = 0, pretend = 0, frame = 8
 1846              		@ frame_needed = 1, uses_anonymous_args = 0
 1847 0838 80B5     		push	{r7, lr}
 1848              		.cfi_def_cfa_offset 8
 1849              		.cfi_offset 7, -8
 1850              		.cfi_offset 14, -4
 1851 083a 82B0     		sub	sp, sp, #8
 1852              		.cfi_def_cfa_offset 16
 1853 083c 00AF     		add	r7, sp, #0
 1854              		.cfi_def_cfa_register 7
 1855 083e 7860     		str	r0, [r7, #4]
 419:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	clear_object(O);
 1856              		.loc 1 419 0
 1857 0840 7B68     		ldr	r3, [r7, #4]
 1858 0842 1800     		movs	r0, r3
 1859 0844 FFF7FEFF 		bl	clear_object
 420:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	O->check_ball_collision(O);
 1860              		.loc 1 420 0
 1861 0848 7B68     		ldr	r3, [r7, #4]
 1862 084a 9B6A     		ldr	r3, [r3, #40]
 1863 084c 7A68     		ldr	r2, [r7, #4]
 1864 084e 1000     		movs	r0, r2
 1865 0850 9847     		blx	r3
 1866              	.LVL6:
 421:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	O->posx += O->dirx;
 1867              		.loc 1 421 0
 1868 0852 7B68     		ldr	r3, [r7, #4]
 1869 0854 DA68     		ldr	r2, [r3, #12]
 1870 0856 7B68     		ldr	r3, [r7, #4]
 1871 0858 5B68     		ldr	r3, [r3, #4]
 1872 085a D218     		adds	r2, r2, r3
 1873 085c 7B68     		ldr	r3, [r7, #4]
 1874 085e DA60     		str	r2, [r3, #12]
 422:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	O->posy += O->diry;
 1875              		.loc 1 422 0
 1876 0860 7B68     		ldr	r3, [r7, #4]
 1877 0862 1A69     		ldr	r2, [r3, #16]
 1878 0864 7B68     		ldr	r3, [r7, #4]
 1879 0866 9B68     		ldr	r3, [r3, #8]
 1880 0868 D218     		adds	r2, r2, r3
 1881 086a 7B68     		ldr	r3, [r7, #4]
 1882 086c 1A61     		str	r2, [r3, #16]
 423:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	draw_object(O);
 1883              		.loc 1 423 0
 1884 086e 7B68     		ldr	r3, [r7, #4]
 1885 0870 1800     		movs	r0, r3
 1886 0872 FFF7FEFF 		bl	draw_object
 424:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 1887              		.loc 1 424 0
 1888 0876 C046     		nop
 1889 0878 BD46     		mov	sp, r7
 1890 087a 02B0     		add	sp, sp, #8
 1891              		@ sp needed
 1892 087c 80BD     		pop	{r7, pc}
 1893              		.cfi_endproc
 1894              	.LFE18:
 1896              		.align	1
 1897              		.global	move_bouncer
 1898              		.syntax unified
 1899              		.code	16
 1900              		.thumb_func
 1901              		.fpu softvfp
 1903              	move_bouncer:
 1904              	.LFB19:
 425:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void move_bouncer(POBJECT O){
 1905              		.loc 1 425 0
 1906              		.cfi_startproc
 1907              		@ args = 0, pretend = 0, frame = 8
 1908              		@ frame_needed = 1, uses_anonymous_args = 0
 1909 087e 80B5     		push	{r7, lr}
 1910              		.cfi_def_cfa_offset 8
 1911              		.cfi_offset 7, -8
 1912              		.cfi_offset 14, -4
 1913 0880 82B0     		sub	sp, sp, #8
 1914              		.cfi_def_cfa_offset 16
 1915 0882 00AF     		add	r7, sp, #0
 1916              		.cfi_def_cfa_register 7
 1917 0884 7860     		str	r0, [r7, #4]
 426:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	clear_object(O);
 1918              		.loc 1 426 0
 1919 0886 7B68     		ldr	r3, [r7, #4]
 1920 0888 1800     		movs	r0, r3
 1921 088a FFF7FEFF 		bl	clear_object
 427:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	// Check if at top or bottom of scren and if so change the Y-dirrection.
 428:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	if(O->posy > 3 && O->diry < 0){
 1922              		.loc 1 428 0
 1923 088e 7B68     		ldr	r3, [r7, #4]
 1924 0890 1B69     		ldr	r3, [r3, #16]
 1925 0892 032B     		cmp	r3, #3
 1926 0894 0BDD     		ble	.L90
 1927              		.loc 1 428 0 is_stmt 0 discriminator 1
 1928 0896 7B68     		ldr	r3, [r7, #4]
 1929 0898 9B68     		ldr	r3, [r3, #8]
 1930 089a 002B     		cmp	r3, #0
 1931 089c 07DA     		bge	.L90
 429:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		O->posy += O->diry;
 1932              		.loc 1 429 0 is_stmt 1
 1933 089e 7B68     		ldr	r3, [r7, #4]
 1934 08a0 1A69     		ldr	r2, [r3, #16]
 1935 08a2 7B68     		ldr	r3, [r7, #4]
 1936 08a4 9B68     		ldr	r3, [r3, #8]
 1937 08a6 D218     		adds	r2, r2, r3
 1938 08a8 7B68     		ldr	r3, [r7, #4]
 1939 08aa 1A61     		str	r2, [r3, #16]
 1940 08ac 13E0     		b	.L91
 1941              	.L90:
 430:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 431:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	else if(O->posy < LCD_HEIGHT - O->geo->sizeY-2 && O->diry > 0){
 1942              		.loc 1 431 0
 1943 08ae 7B68     		ldr	r3, [r7, #4]
 1944 08b0 1A69     		ldr	r2, [r3, #16]
 1945 08b2 7B68     		ldr	r3, [r7, #4]
 1946 08b4 1B68     		ldr	r3, [r3]
 1947 08b6 9B68     		ldr	r3, [r3, #8]
 1948 08b8 3E21     		movs	r1, #62
 1949 08ba CB1A     		subs	r3, r1, r3
 1950 08bc 9A42     		cmp	r2, r3
 1951 08be 0ADA     		bge	.L91
 1952              		.loc 1 431 0 is_stmt 0 discriminator 1
 1953 08c0 7B68     		ldr	r3, [r7, #4]
 1954 08c2 9B68     		ldr	r3, [r3, #8]
 1955 08c4 002B     		cmp	r3, #0
 1956 08c6 06DD     		ble	.L91
 432:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		O->posy += O->diry;
 1957              		.loc 1 432 0 is_stmt 1
 1958 08c8 7B68     		ldr	r3, [r7, #4]
 1959 08ca 1A69     		ldr	r2, [r3, #16]
 1960 08cc 7B68     		ldr	r3, [r7, #4]
 1961 08ce 9B68     		ldr	r3, [r3, #8]
 1962 08d0 D218     		adds	r2, r2, r3
 1963 08d2 7B68     		ldr	r3, [r7, #4]
 1964 08d4 1A61     		str	r2, [r3, #16]
 1965              	.L91:
 433:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 434:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	//Move the bouncer to the new cordinates.
 435:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	
 436:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	//Set diry to zero so the bouncer stops.
 437:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	O->diry = 0;
 1966              		.loc 1 437 0
 1967 08d6 7B68     		ldr	r3, [r7, #4]
 1968 08d8 0022     		movs	r2, #0
 1969 08da 9A60     		str	r2, [r3, #8]
 438:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	draw_object(O);
 1970              		.loc 1 438 0
 1971 08dc 7B68     		ldr	r3, [r7, #4]
 1972 08de 1800     		movs	r0, r3
 1973 08e0 FFF7FEFF 		bl	draw_object
 439:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	
 440:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 1974              		.loc 1 440 0
 1975 08e4 C046     		nop
 1976 08e6 BD46     		mov	sp, r7
 1977 08e8 02B0     		add	sp, sp, #8
 1978              		@ sp needed
 1979 08ea 80BD     		pop	{r7, pc}
 1980              		.cfi_endproc
 1981              	.LFE19:
 1983              		.align	1
 1984              		.global	delay_250ns
 1985              		.syntax unified
 1986              		.code	16
 1987              		.thumb_func
 1988              		.fpu softvfp
 1990              	delay_250ns:
 1991              	.LFB20:
 441:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
 442:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** //Delay funktioner
 443:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void delay_250ns ( void ) {
 1992              		.loc 1 443 0
 1993              		.cfi_startproc
 1994              		@ args = 0, pretend = 0, frame = 0
 1995              		@ frame_needed = 1, uses_anonymous_args = 0
 1996 08ec 80B5     		push	{r7, lr}
 1997              		.cfi_def_cfa_offset 8
 1998              		.cfi_offset 7, -8
 1999              		.cfi_offset 14, -4
 2000 08ee 00AF     		add	r7, sp, #0
 2001              		.cfi_def_cfa_register 7
 444:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		*STK_CTRL = 0x00;
 2002              		.loc 1 444 0
 2003 08f0 0C4B     		ldr	r3, .L94
 2004 08f2 0022     		movs	r2, #0
 2005 08f4 1A60     		str	r2, [r3]
 445:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		*STK_LOAD = ((168/4) - 1);
 2006              		.loc 1 445 0
 2007 08f6 0C4B     		ldr	r3, .L94+4
 2008 08f8 2922     		movs	r2, #41
 2009 08fa 1A60     		str	r2, [r3]
 446:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		*STK_VAL = 0;
 2010              		.loc 1 446 0
 2011 08fc 0B4B     		ldr	r3, .L94+8
 2012 08fe 0022     		movs	r2, #0
 2013 0900 1A60     		str	r2, [r3]
 447:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		*STK_CTRL = 5;
 2014              		.loc 1 447 0
 2015 0902 084B     		ldr	r3, .L94
 2016 0904 0522     		movs	r2, #5
 2017 0906 1A60     		str	r2, [r3]
 448:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		while ((*STK_CTRL & 0x10000) == 0){}
 2018              		.loc 1 448 0
 2019 0908 C046     		nop
 2020              	.L93:
 2021              		.loc 1 448 0 is_stmt 0 discriminator 1
 2022 090a 064B     		ldr	r3, .L94
 2023 090c 1A68     		ldr	r2, [r3]
 2024 090e 8023     		movs	r3, #128
 2025 0910 5B02     		lsls	r3, r3, #9
 2026 0912 1340     		ands	r3, r2
 2027 0914 F9D0     		beq	.L93
 449:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		*STK_CTRL = 0;
 2028              		.loc 1 449 0 is_stmt 1
 2029 0916 034B     		ldr	r3, .L94
 2030 0918 0022     		movs	r2, #0
 2031 091a 1A60     		str	r2, [r3]
 450:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 2032              		.loc 1 450 0
 2033 091c C046     		nop
 2034 091e BD46     		mov	sp, r7
 2035              		@ sp needed
 2036 0920 80BD     		pop	{r7, pc}
 2037              	.L95:
 2038 0922 C046     		.align	2
 2039              	.L94:
 2040 0924 10E000E0 		.word	-536813552
 2041 0928 14E000E0 		.word	-536813548
 2042 092c 18E000E0 		.word	-536813544
 2043              		.cfi_endproc
 2044              	.LFE20:
 2046              		.align	1
 2047              		.global	delay_500ns
 2048              		.syntax unified
 2049              		.code	16
 2050              		.thumb_func
 2051              		.fpu softvfp
 2053              	delay_500ns:
 2054              	.LFB21:
 451:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void delay_500ns(void){
 2055              		.loc 1 451 0
 2056              		.cfi_startproc
 2057              		@ args = 0, pretend = 0, frame = 0
 2058              		@ frame_needed = 1, uses_anonymous_args = 0
 2059 0930 80B5     		push	{r7, lr}
 2060              		.cfi_def_cfa_offset 8
 2061              		.cfi_offset 7, -8
 2062              		.cfi_offset 14, -4
 2063 0932 00AF     		add	r7, sp, #0
 2064              		.cfi_def_cfa_register 7
 452:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	delay_250ns();
 2065              		.loc 1 452 0
 2066 0934 FFF7FEFF 		bl	delay_250ns
 453:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	delay_250ns();
 2067              		.loc 1 453 0
 2068 0938 FFF7FEFF 		bl	delay_250ns
 454:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 2069              		.loc 1 454 0
 2070 093c C046     		nop
 2071 093e BD46     		mov	sp, r7
 2072              		@ sp needed
 2073 0940 80BD     		pop	{r7, pc}
 2074              		.cfi_endproc
 2075              	.LFE21:
 2077              		.align	1
 2078              		.global	delay_mikro
 2079              		.syntax unified
 2080              		.code	16
 2081              		.thumb_func
 2082              		.fpu softvfp
 2084              	delay_mikro:
 2085              	.LFB22:
 455:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void delay_mikro (unsigned int us){
 2086              		.loc 1 455 0
 2087              		.cfi_startproc
 2088              		@ args = 0, pretend = 0, frame = 16
 2089              		@ frame_needed = 1, uses_anonymous_args = 0
 2090 0942 80B5     		push	{r7, lr}
 2091              		.cfi_def_cfa_offset 8
 2092              		.cfi_offset 7, -8
 2093              		.cfi_offset 14, -4
 2094 0944 84B0     		sub	sp, sp, #16
 2095              		.cfi_def_cfa_offset 24
 2096 0946 00AF     		add	r7, sp, #0
 2097              		.cfi_def_cfa_register 7
 2098 0948 7860     		str	r0, [r7, #4]
 2099              	.LBB6:
 456:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	for (int i = 0; i < us; i++) {
 2100              		.loc 1 456 0
 2101 094a 0023     		movs	r3, #0
 2102 094c FB60     		str	r3, [r7, #12]
 2103 094e 0AE0     		b	.L98
 2104              	.L99:
 457:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		delay_250ns();
 2105              		.loc 1 457 0 discriminator 3
 2106 0950 FFF7FEFF 		bl	delay_250ns
 458:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		delay_250ns();
 2107              		.loc 1 458 0 discriminator 3
 2108 0954 FFF7FEFF 		bl	delay_250ns
 459:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		delay_250ns();
 2109              		.loc 1 459 0 discriminator 3
 2110 0958 FFF7FEFF 		bl	delay_250ns
 460:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		delay_250ns();
 2111              		.loc 1 460 0 discriminator 3
 2112 095c FFF7FEFF 		bl	delay_250ns
 456:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		delay_250ns();
 2113              		.loc 1 456 0 discriminator 3
 2114 0960 FB68     		ldr	r3, [r7, #12]
 2115 0962 0133     		adds	r3, r3, #1
 2116 0964 FB60     		str	r3, [r7, #12]
 2117              	.L98:
 456:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		delay_250ns();
 2118              		.loc 1 456 0 is_stmt 0 discriminator 1
 2119 0966 FB68     		ldr	r3, [r7, #12]
 2120 0968 7A68     		ldr	r2, [r7, #4]
 2121 096a 9A42     		cmp	r2, r3
 2122 096c F0D8     		bhi	.L99
 2123              	.LBE6:
 461:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		}
 462:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }	
 2124              		.loc 1 462 0 is_stmt 1
 2125 096e C046     		nop
 2126 0970 BD46     		mov	sp, r7
 2127 0972 04B0     		add	sp, sp, #16
 2128              		@ sp needed
 2129 0974 80BD     		pop	{r7, pc}
 2130              		.cfi_endproc
 2131              	.LFE22:
 2133              		.align	1
 2134              		.global	delay_milli
 2135              		.syntax unified
 2136              		.code	16
 2137              		.thumb_func
 2138              		.fpu softvfp
 2140              	delay_milli:
 2141              	.LFB23:
 463:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void delay_milli (unsigned int ms){
 2142              		.loc 1 463 0
 2143              		.cfi_startproc
 2144              		@ args = 0, pretend = 0, frame = 8
 2145              		@ frame_needed = 1, uses_anonymous_args = 0
 2146 0976 80B5     		push	{r7, lr}
 2147              		.cfi_def_cfa_offset 8
 2148              		.cfi_offset 7, -8
 2149              		.cfi_offset 14, -4
 2150 0978 82B0     		sub	sp, sp, #8
 2151              		.cfi_def_cfa_offset 16
 2152 097a 00AF     		add	r7, sp, #0
 2153              		.cfi_def_cfa_register 7
 2154 097c 7860     		str	r0, [r7, #4]
 464:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	#ifdef SIMULATOR
 465:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		delay_mikro(1);
 466:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	#else
 467:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		delay_mikro(ms * 1000);
 2155              		.loc 1 467 0
 2156 097e 7A68     		ldr	r2, [r7, #4]
 2157 0980 1300     		movs	r3, r2
 2158 0982 5B01     		lsls	r3, r3, #5
 2159 0984 9B1A     		subs	r3, r3, r2
 2160 0986 9B00     		lsls	r3, r3, #2
 2161 0988 9B18     		adds	r3, r3, r2
 2162 098a DB00     		lsls	r3, r3, #3
 2163 098c 1800     		movs	r0, r3
 2164 098e FFF7FEFF 		bl	delay_mikro
 468:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	#endif
 469:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 2165              		.loc 1 469 0
 2166 0992 C046     		nop
 2167 0994 BD46     		mov	sp, r7
 2168 0996 02B0     		add	sp, sp, #8
 2169              		@ sp needed
 2170 0998 80BD     		pop	{r7, pc}
 2171              		.cfi_endproc
 2172              	.LFE23:
 2174              		.align	1
 2175              		.global	keyb
 2176              		.syntax unified
 2177              		.code	16
 2178              		.thumb_func
 2179              		.fpu softvfp
 2181              	keyb:
 2182              	.LFB24:
 470:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
 471:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** //Keypad Funktioner
 472:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** unsigned char keyb(void){
 2183              		.loc 1 472 0
 2184              		.cfi_startproc
 2185              		@ args = 0, pretend = 0, frame = 8
 2186              		@ frame_needed = 1, uses_anonymous_args = 0
 2187 099a 80B5     		push	{r7, lr}
 2188              		.cfi_def_cfa_offset 8
 2189              		.cfi_offset 7, -8
 2190              		.cfi_offset 14, -4
 2191 099c 82B0     		sub	sp, sp, #8
 2192              		.cfi_def_cfa_offset 16
 2193 099e 00AF     		add	r7, sp, #0
 2194              		.cfi_def_cfa_register 7
 473:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	int row, column;
 474:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	for (row = 1; row <= 4; row++){
 2195              		.loc 1 474 0
 2196 09a0 0123     		movs	r3, #1
 2197 09a2 7B60     		str	r3, [r7, #4]
 2198 09a4 19E0     		b	.L102
 2199              	.L105:
 2200              	.LBB7:
 475:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		ActivateRow(row);
 2201              		.loc 1 475 0
 2202 09a6 7B68     		ldr	r3, [r7, #4]
 2203 09a8 1800     		movs	r0, r3
 2204 09aa FFF7FEFF 		bl	ActivateRow
 2205              	.LBB8:
 476:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		if (column = ReadColumn()){
 2206              		.loc 1 476 0
 2207 09ae FFF7FEFF 		bl	ReadColumn
 2208 09b2 0300     		movs	r3, r0
 2209 09b4 3B60     		str	r3, [r7]
 2210 09b6 3B68     		ldr	r3, [r7]
 2211 09b8 002B     		cmp	r3, #0
 2212 09ba 0BD0     		beq	.L103
 477:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			ActivateRow(0);
 2213              		.loc 1 477 0
 2214 09bc 0020     		movs	r0, #0
 2215 09be FFF7FEFF 		bl	ActivateRow
 478:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			return Key[4*(row-1) + (column-1)];
 2216              		.loc 1 478 0
 2217 09c2 7B68     		ldr	r3, [r7, #4]
 2218 09c4 013B     		subs	r3, r3, #1
 2219 09c6 9A00     		lsls	r2, r3, #2
 2220 09c8 3B68     		ldr	r3, [r7]
 2221 09ca 013B     		subs	r3, r3, #1
 2222 09cc D318     		adds	r3, r2, r3
 2223 09ce 084A     		ldr	r2, .L106
 2224 09d0 D35C     		ldrb	r3, [r2, r3]
 2225 09d2 09E0     		b	.L104
 2226              	.L103:
 2227              	.LBE8:
 2228              	.LBE7:
 474:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		ActivateRow(row);
 2229              		.loc 1 474 0 discriminator 2
 2230 09d4 7B68     		ldr	r3, [r7, #4]
 2231 09d6 0133     		adds	r3, r3, #1
 2232 09d8 7B60     		str	r3, [r7, #4]
 2233              	.L102:
 474:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		ActivateRow(row);
 2234              		.loc 1 474 0 is_stmt 0 discriminator 1
 2235 09da 7B68     		ldr	r3, [r7, #4]
 2236 09dc 042B     		cmp	r3, #4
 2237 09de E2DD     		ble	.L105
 479:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		}
 480:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 481:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	ActivateRow(0);
 2238              		.loc 1 481 0 is_stmt 1
 2239 09e0 0020     		movs	r0, #0
 2240 09e2 FFF7FEFF 		bl	ActivateRow
 482:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	return 0xFF;
 2241              		.loc 1 482 0
 2242 09e6 FF23     		movs	r3, #255
 2243              	.L104:
 483:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 2244              		.loc 1 483 0
 2245 09e8 1800     		movs	r0, r3
 2246 09ea BD46     		mov	sp, r7
 2247 09ec 02B0     		add	sp, sp, #8
 2248              		@ sp needed
 2249 09ee 80BD     		pop	{r7, pc}
 2250              	.L107:
 2251              		.align	2
 2252              	.L106:
 2253 09f0 00000000 		.word	Key
 2254              		.cfi_endproc
 2255              	.LFE24:
 2257              		.align	1
 2258              		.global	ActivateRow
 2259              		.syntax unified
 2260              		.code	16
 2261              		.thumb_func
 2262              		.fpu softvfp
 2264              	ActivateRow:
 2265              	.LFB25:
 484:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void ActivateRow(char row){
 2266              		.loc 1 484 0
 2267              		.cfi_startproc
 2268              		@ args = 0, pretend = 0, frame = 8
 2269              		@ frame_needed = 1, uses_anonymous_args = 0
 2270 09f4 80B5     		push	{r7, lr}
 2271              		.cfi_def_cfa_offset 8
 2272              		.cfi_offset 7, -8
 2273              		.cfi_offset 14, -4
 2274 09f6 82B0     		sub	sp, sp, #8
 2275              		.cfi_def_cfa_offset 16
 2276 09f8 00AF     		add	r7, sp, #0
 2277              		.cfi_def_cfa_register 7
 2278 09fa 0200     		movs	r2, r0
 2279 09fc FB1D     		adds	r3, r7, #7
 2280 09fe 1A70     		strb	r2, [r3]
 485:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	switch(row){
 2281              		.loc 1 485 0
 2282 0a00 FB1D     		adds	r3, r7, #7
 2283 0a02 1B78     		ldrb	r3, [r3]
 2284 0a04 042B     		cmp	r3, #4
 2285 0a06 18D8     		bhi	.L116
 2286 0a08 9A00     		lsls	r2, r3, #2
 2287 0a0a 0E4B     		ldr	r3, .L117
 2288 0a0c D318     		adds	r3, r2, r3
 2289 0a0e 1B68     		ldr	r3, [r3]
 2290 0a10 9F46     		mov	pc, r3
 2291              		.section	.rodata
 2292              		.align	2
 2293              	.L111:
 2294 0020 320A0000 		.word	.L110
 2295 0024 120A0000 		.word	.L112
 2296 0028 1A0A0000 		.word	.L113
 2297 002c 220A0000 		.word	.L114
 2298 0030 2A0A0000 		.word	.L115
 2299              		.text
 2300              	.L112:
 486:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		case 1: GPIO_D.odr_high = 0x10; break;
 2301              		.loc 1 486 0
 2302 0a12 0D4B     		ldr	r3, .L117+4
 2303 0a14 1022     		movs	r2, #16
 2304 0a16 5A75     		strb	r2, [r3, #21]
 2305 0a18 0FE0     		b	.L109
 2306              	.L113:
 487:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		case 2: GPIO_D.odr_high = 0x20; break;
 2307              		.loc 1 487 0
 2308 0a1a 0B4B     		ldr	r3, .L117+4
 2309 0a1c 2022     		movs	r2, #32
 2310 0a1e 5A75     		strb	r2, [r3, #21]
 2311 0a20 0BE0     		b	.L109
 2312              	.L114:
 488:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		case 3: GPIO_D.odr_high = 0x40; break;
 2313              		.loc 1 488 0
 2314 0a22 094B     		ldr	r3, .L117+4
 2315 0a24 4022     		movs	r2, #64
 2316 0a26 5A75     		strb	r2, [r3, #21]
 2317 0a28 07E0     		b	.L109
 2318              	.L115:
 489:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		case 4: GPIO_D.odr_high = 0x80; break;
 2319              		.loc 1 489 0
 2320 0a2a 074B     		ldr	r3, .L117+4
 2321 0a2c 8022     		movs	r2, #128
 2322 0a2e 5A75     		strb	r2, [r3, #21]
 2323 0a30 03E0     		b	.L109
 2324              	.L110:
 490:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		case 0: GPIO_D.odr_high = 0x00; break;
 2325              		.loc 1 490 0
 2326 0a32 054B     		ldr	r3, .L117+4
 2327 0a34 0022     		movs	r2, #0
 2328 0a36 5A75     		strb	r2, [r3, #21]
 2329 0a38 C046     		nop
 2330              	.L109:
 2331              	.L116:
 491:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 492:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 2332              		.loc 1 492 0
 2333 0a3a C046     		nop
 2334 0a3c BD46     		mov	sp, r7
 2335 0a3e 02B0     		add	sp, sp, #8
 2336              		@ sp needed
 2337 0a40 80BD     		pop	{r7, pc}
 2338              	.L118:
 2339 0a42 C046     		.align	2
 2340              	.L117:
 2341 0a44 20000000 		.word	.L111
 2342 0a48 000C0240 		.word	1073875968
 2343              		.cfi_endproc
 2344              	.LFE25:
 2346              		.align	1
 2347              		.global	ReadColumn
 2348              		.syntax unified
 2349              		.code	16
 2350              		.thumb_func
 2351              		.fpu softvfp
 2353              	ReadColumn:
 2354              	.LFB26:
 493:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** int ReadColumn (void){
 2355              		.loc 1 493 0
 2356              		.cfi_startproc
 2357              		@ args = 0, pretend = 0, frame = 8
 2358              		@ frame_needed = 1, uses_anonymous_args = 0
 2359 0a4c 80B5     		push	{r7, lr}
 2360              		.cfi_def_cfa_offset 8
 2361              		.cfi_offset 7, -8
 2362              		.cfi_offset 14, -4
 2363 0a4e 82B0     		sub	sp, sp, #8
 2364              		.cfi_def_cfa_offset 16
 2365 0a50 00AF     		add	r7, sp, #0
 2366              		.cfi_def_cfa_register 7
 494:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	unsigned char c;
 495:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	c = GPIO_D.idr_high;
 2367              		.loc 1 495 0
 2368 0a52 124A     		ldr	r2, .L125
 2369 0a54 FB1D     		adds	r3, r7, #7
 2370 0a56 527C     		ldrb	r2, [r2, #17]
 2371 0a58 1A70     		strb	r2, [r3]
 496:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	if(c & 0x8) return 4;
 2372              		.loc 1 496 0
 2373 0a5a FB1D     		adds	r3, r7, #7
 2374 0a5c 1B78     		ldrb	r3, [r3]
 2375 0a5e 0822     		movs	r2, #8
 2376 0a60 1340     		ands	r3, r2
 2377 0a62 01D0     		beq	.L120
 2378              		.loc 1 496 0 is_stmt 0 discriminator 1
 2379 0a64 0423     		movs	r3, #4
 2380 0a66 15E0     		b	.L121
 2381              	.L120:
 497:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	if(c & 0x4) return 3;
 2382              		.loc 1 497 0 is_stmt 1
 2383 0a68 FB1D     		adds	r3, r7, #7
 2384 0a6a 1B78     		ldrb	r3, [r3]
 2385 0a6c 0422     		movs	r2, #4
 2386 0a6e 1340     		ands	r3, r2
 2387 0a70 01D0     		beq	.L122
 2388              		.loc 1 497 0 is_stmt 0 discriminator 1
 2389 0a72 0323     		movs	r3, #3
 2390 0a74 0EE0     		b	.L121
 2391              	.L122:
 498:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	if(c & 0x2) return 2;
 2392              		.loc 1 498 0 is_stmt 1
 2393 0a76 FB1D     		adds	r3, r7, #7
 2394 0a78 1B78     		ldrb	r3, [r3]
 2395 0a7a 0222     		movs	r2, #2
 2396 0a7c 1340     		ands	r3, r2
 2397 0a7e 01D0     		beq	.L123
 2398              		.loc 1 498 0 is_stmt 0 discriminator 1
 2399 0a80 0223     		movs	r3, #2
 2400 0a82 07E0     		b	.L121
 2401              	.L123:
 499:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	if(c & 0x1) return 1;
 2402              		.loc 1 499 0 is_stmt 1
 2403 0a84 FB1D     		adds	r3, r7, #7
 2404 0a86 1B78     		ldrb	r3, [r3]
 2405 0a88 0122     		movs	r2, #1
 2406 0a8a 1340     		ands	r3, r2
 2407 0a8c 01D0     		beq	.L124
 2408              		.loc 1 499 0 is_stmt 0 discriminator 1
 2409 0a8e 0123     		movs	r3, #1
 2410 0a90 00E0     		b	.L121
 2411              	.L124:
 500:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	return 0;
 2412              		.loc 1 500 0 is_stmt 1
 2413 0a92 0023     		movs	r3, #0
 2414              	.L121:
 501:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 2415              		.loc 1 501 0
 2416 0a94 1800     		movs	r0, r3
 2417 0a96 BD46     		mov	sp, r7
 2418 0a98 02B0     		add	sp, sp, #8
 2419              		@ sp needed
 2420 0a9a 80BD     		pop	{r7, pc}
 2421              	.L126:
 2422              		.align	2
 2423              	.L125:
 2424 0a9c 000C0240 		.word	1073875968
 2425              		.cfi_endproc
 2426              	.LFE26:
 2428              		.align	1
 2429              		.global	ascii_init
 2430              		.syntax unified
 2431              		.code	16
 2432              		.thumb_func
 2433              		.fpu softvfp
 2435              	ascii_init:
 2436              	.LFB27:
 502:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** //void out7seg(unsigned char c){
 503:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** //	if (c > 0xF){
 504:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** //		GPIO_D.odr_low = 0x00;
 505:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** //	}
 506:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** //	else GPIO_D.odr_low = Segcodes[c];
 507:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** //	}
 508:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
 509:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** //ascii Funktioner
 510:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void ascii_init(void){
 2437              		.loc 1 510 0
 2438              		.cfi_startproc
 2439              		@ args = 0, pretend = 0, frame = 0
 2440              		@ frame_needed = 1, uses_anonymous_args = 0
 2441 0aa0 80B5     		push	{r7, lr}
 2442              		.cfi_def_cfa_offset 8
 2443              		.cfi_offset 7, -8
 2444              		.cfi_offset 14, -4
 2445 0aa2 00AF     		add	r7, sp, #0
 2446              		.cfi_def_cfa_register 7
 511:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	while((ascii_read_status() & 0x80) == 0x80){}
 2447              		.loc 1 511 0
 2448 0aa4 C046     		nop
 2449              	.L128:
 2450              		.loc 1 511 0 is_stmt 0 discriminator 1
 2451 0aa6 FFF7FEFF 		bl	ascii_read_status
 2452 0aaa 0300     		movs	r3, r0
 2453 0aac 1A00     		movs	r2, r3
 2454 0aae 8023     		movs	r3, #128
 2455 0ab0 1340     		ands	r3, r2
 2456 0ab2 802B     		cmp	r3, #128
 2457 0ab4 F7D0     		beq	.L128
 512:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		delay_mikro(8);
 2458              		.loc 1 512 0 is_stmt 1
 2459 0ab6 0820     		movs	r0, #8
 2460 0ab8 FFF7FEFF 		bl	delay_mikro
 513:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		ascii_write_CMD(0x38);
 2461              		.loc 1 513 0
 2462 0abc 3820     		movs	r0, #56
 2463 0abe FFF7FEFF 		bl	ascii_write_CMD
 514:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		delay_mikro(39);
 2464              		.loc 1 514 0
 2465 0ac2 2720     		movs	r0, #39
 2466 0ac4 FFF7FEFF 		bl	delay_mikro
 515:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		ascii_write_CMD(0x0E);
 2467              		.loc 1 515 0
 2468 0ac8 0E20     		movs	r0, #14
 2469 0aca FFF7FEFF 		bl	ascii_write_CMD
 516:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		delay_mikro(39);
 2470              		.loc 1 516 0
 2471 0ace 2720     		movs	r0, #39
 2472 0ad0 FFF7FEFF 		bl	delay_mikro
 517:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		ascii_write_CMD(0x06);
 2473              		.loc 1 517 0
 2474 0ad4 0620     		movs	r0, #6
 2475 0ad6 FFF7FEFF 		bl	ascii_write_CMD
 518:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		delay_mikro(39);
 2476              		.loc 1 518 0
 2477 0ada 2720     		movs	r0, #39
 2478 0adc FFF7FEFF 		bl	delay_mikro
 519:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 2479              		.loc 1 519 0
 2480 0ae0 C046     		nop
 2481 0ae2 BD46     		mov	sp, r7
 2482              		@ sp needed
 2483 0ae4 80BD     		pop	{r7, pc}
 2484              		.cfi_endproc
 2485              	.LFE27:
 2487              		.align	1
 2488              		.global	ascii_gotoxy
 2489              		.syntax unified
 2490              		.code	16
 2491              		.thumb_func
 2492              		.fpu softvfp
 2494              	ascii_gotoxy:
 2495              	.LFB28:
 520:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void ascii_gotoxy(int x, int y){
 2496              		.loc 1 520 0
 2497              		.cfi_startproc
 2498              		@ args = 0, pretend = 0, frame = 16
 2499              		@ frame_needed = 1, uses_anonymous_args = 0
 2500 0ae6 80B5     		push	{r7, lr}
 2501              		.cfi_def_cfa_offset 8
 2502              		.cfi_offset 7, -8
 2503              		.cfi_offset 14, -4
 2504 0ae8 84B0     		sub	sp, sp, #16
 2505              		.cfi_def_cfa_offset 24
 2506 0aea 00AF     		add	r7, sp, #0
 2507              		.cfi_def_cfa_register 7
 2508 0aec 7860     		str	r0, [r7, #4]
 2509 0aee 3960     		str	r1, [r7]
 521:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	int address = x - 1;
 2510              		.loc 1 521 0
 2511 0af0 7B68     		ldr	r3, [r7, #4]
 2512 0af2 013B     		subs	r3, r3, #1
 2513 0af4 FB60     		str	r3, [r7, #12]
 522:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	if(y == 2){
 2514              		.loc 1 522 0
 2515 0af6 3B68     		ldr	r3, [r7]
 2516 0af8 022B     		cmp	r3, #2
 2517 0afa 02D1     		bne	.L130
 523:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		address = address + 0x40;
 2518              		.loc 1 523 0
 2519 0afc FB68     		ldr	r3, [r7, #12]
 2520 0afe 4033     		adds	r3, r3, #64
 2521 0b00 FB60     		str	r3, [r7, #12]
 2522              	.L130:
 524:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	}
 525:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	ascii_write_CMD(0x80 | address);
 2523              		.loc 1 525 0
 2524 0b02 FB68     		ldr	r3, [r7, #12]
 2525 0b04 5BB2     		sxtb	r3, r3
 2526 0b06 8022     		movs	r2, #128
 2527 0b08 5242     		rsbs	r2, r2, #0
 2528 0b0a 1343     		orrs	r3, r2
 2529 0b0c 5BB2     		sxtb	r3, r3
 2530 0b0e DBB2     		uxtb	r3, r3
 2531 0b10 1800     		movs	r0, r3
 2532 0b12 FFF7FEFF 		bl	ascii_write_CMD
 526:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 2533              		.loc 1 526 0
 2534 0b16 C046     		nop
 2535 0b18 BD46     		mov	sp, r7
 2536 0b1a 04B0     		add	sp, sp, #16
 2537              		@ sp needed
 2538 0b1c 80BD     		pop	{r7, pc}
 2539              		.cfi_endproc
 2540              	.LFE28:
 2542              		.align	1
 2543              		.global	ascii_write_char
 2544              		.syntax unified
 2545              		.code	16
 2546              		.thumb_func
 2547              		.fpu softvfp
 2549              	ascii_write_char:
 2550              	.LFB29:
 527:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void ascii_write_char(unsigned char c){
 2551              		.loc 1 527 0
 2552              		.cfi_startproc
 2553              		@ args = 0, pretend = 0, frame = 8
 2554              		@ frame_needed = 1, uses_anonymous_args = 0
 2555 0b1e 80B5     		push	{r7, lr}
 2556              		.cfi_def_cfa_offset 8
 2557              		.cfi_offset 7, -8
 2558              		.cfi_offset 14, -4
 2559 0b20 82B0     		sub	sp, sp, #8
 2560              		.cfi_def_cfa_offset 16
 2561 0b22 00AF     		add	r7, sp, #0
 2562              		.cfi_def_cfa_register 7
 2563 0b24 0200     		movs	r2, r0
 2564 0b26 FB1D     		adds	r3, r7, #7
 2565 0b28 1A70     		strb	r2, [r3]
 528:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	while((ascii_read_status() & 0x80) == 0x80){}
 2566              		.loc 1 528 0
 2567 0b2a C046     		nop
 2568              	.L132:
 2569              		.loc 1 528 0 is_stmt 0 discriminator 1
 2570 0b2c FFF7FEFF 		bl	ascii_read_status
 2571 0b30 0300     		movs	r3, r0
 2572 0b32 1A00     		movs	r2, r3
 2573 0b34 8023     		movs	r3, #128
 2574 0b36 1340     		ands	r3, r2
 2575 0b38 802B     		cmp	r3, #128
 2576 0b3a F7D0     		beq	.L132
 529:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	delay_mikro(8);
 2577              		.loc 1 529 0 is_stmt 1
 2578 0b3c 0820     		movs	r0, #8
 2579 0b3e FFF7FEFF 		bl	delay_mikro
 530:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	ascii_write_data(c);
 2580              		.loc 1 530 0
 2581 0b42 FB1D     		adds	r3, r7, #7
 2582 0b44 1B78     		ldrb	r3, [r3]
 2583 0b46 1800     		movs	r0, r3
 2584 0b48 FFF7FEFF 		bl	ascii_write_data
 531:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	delay_mikro(43);
 2585              		.loc 1 531 0
 2586 0b4c 2B20     		movs	r0, #43
 2587 0b4e FFF7FEFF 		bl	delay_mikro
 532:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 2588              		.loc 1 532 0
 2589 0b52 C046     		nop
 2590 0b54 BD46     		mov	sp, r7
 2591 0b56 02B0     		add	sp, sp, #8
 2592              		@ sp needed
 2593 0b58 80BD     		pop	{r7, pc}
 2594              		.cfi_endproc
 2595              	.LFE29:
 2597              		.align	1
 2598              		.global	ascii_ctrl_bit_set
 2599              		.syntax unified
 2600              		.code	16
 2601              		.thumb_func
 2602              		.fpu softvfp
 2604              	ascii_ctrl_bit_set:
 2605              	.LFB30:
 533:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
 534:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void ascii_ctrl_bit_set( unsigned char x ){ /* Funktion för att 1-ställa bitar */
 2606              		.loc 1 534 0
 2607              		.cfi_startproc
 2608              		@ args = 0, pretend = 0, frame = 16
 2609              		@ frame_needed = 1, uses_anonymous_args = 0
 2610 0b5a 80B5     		push	{r7, lr}
 2611              		.cfi_def_cfa_offset 8
 2612              		.cfi_offset 7, -8
 2613              		.cfi_offset 14, -4
 2614 0b5c 84B0     		sub	sp, sp, #16
 2615              		.cfi_def_cfa_offset 24
 2616 0b5e 00AF     		add	r7, sp, #0
 2617              		.cfi_def_cfa_register 7
 2618 0b60 0200     		movs	r2, r0
 2619 0b62 FB1D     		adds	r3, r7, #7
 2620 0b64 1A70     		strb	r2, [r3]
 535:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	unsigned char c;
 536:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	c = GPIO_E.odr_low;
 2621              		.loc 1 536 0
 2622 0b66 0C4A     		ldr	r2, .L134
 2623 0b68 0F21     		movs	r1, #15
 2624 0b6a 7B18     		adds	r3, r7, r1
 2625 0b6c 127D     		ldrb	r2, [r2, #20]
 2626 0b6e 1A70     		strb	r2, [r3]
 537:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	c |= ( B_SELECT | x );
 2627              		.loc 1 537 0
 2628 0b70 FA1D     		adds	r2, r7, #7
 2629 0b72 7B18     		adds	r3, r7, r1
 2630 0b74 1278     		ldrb	r2, [r2]
 2631 0b76 1B78     		ldrb	r3, [r3]
 2632 0b78 1343     		orrs	r3, r2
 2633 0b7a DAB2     		uxtb	r2, r3
 2634 0b7c 0800     		movs	r0, r1
 2635 0b7e 7B18     		adds	r3, r7, r1
 2636 0b80 0421     		movs	r1, #4
 2637 0b82 0A43     		orrs	r2, r1
 2638 0b84 1A70     		strb	r2, [r3]
 538:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	GPIO_E.odr_low = c;
 2639              		.loc 1 538 0
 2640 0b86 044A     		ldr	r2, .L134
 2641 0b88 0100     		movs	r1, r0
 2642 0b8a 7B18     		adds	r3, r7, r1
 2643 0b8c 1B78     		ldrb	r3, [r3]
 2644 0b8e 1375     		strb	r3, [r2, #20]
 539:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 2645              		.loc 1 539 0
 2646 0b90 C046     		nop
 2647 0b92 BD46     		mov	sp, r7
 2648 0b94 04B0     		add	sp, sp, #16
 2649              		@ sp needed
 2650 0b96 80BD     		pop	{r7, pc}
 2651              	.L135:
 2652              		.align	2
 2653              	.L134:
 2654 0b98 00100240 		.word	1073876992
 2655              		.cfi_endproc
 2656              	.LFE30:
 2658              		.align	1
 2659              		.global	ascii_ctrl_bit_clear
 2660              		.syntax unified
 2661              		.code	16
 2662              		.thumb_func
 2663              		.fpu softvfp
 2665              	ascii_ctrl_bit_clear:
 2666              	.LFB31:
 540:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void ascii_ctrl_bit_clear( unsigned char x ){
 2667              		.loc 1 540 0
 2668              		.cfi_startproc
 2669              		@ args = 0, pretend = 0, frame = 16
 2670              		@ frame_needed = 1, uses_anonymous_args = 0
 2671 0b9c 80B5     		push	{r7, lr}
 2672              		.cfi_def_cfa_offset 8
 2673              		.cfi_offset 7, -8
 2674              		.cfi_offset 14, -4
 2675 0b9e 84B0     		sub	sp, sp, #16
 2676              		.cfi_def_cfa_offset 24
 2677 0ba0 00AF     		add	r7, sp, #0
 2678              		.cfi_def_cfa_register 7
 2679 0ba2 0200     		movs	r2, r0
 2680 0ba4 FB1D     		adds	r3, r7, #7
 2681 0ba6 1A70     		strb	r2, [r3]
 541:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	unsigned char c;
 542:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	c = GPIO_E.odr_low;
 2682              		.loc 1 542 0
 2683 0ba8 0D4A     		ldr	r2, .L137
 2684 0baa 0F21     		movs	r1, #15
 2685 0bac 7B18     		adds	r3, r7, r1
 2686 0bae 127D     		ldrb	r2, [r2, #20]
 2687 0bb0 1A70     		strb	r2, [r3]
 543:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	c = B_SELECT | ( c & ~x );
 2688              		.loc 1 543 0
 2689 0bb2 FB1D     		adds	r3, r7, #7
 2690 0bb4 1B78     		ldrb	r3, [r3]
 2691 0bb6 5BB2     		sxtb	r3, r3
 2692 0bb8 DB43     		mvns	r3, r3
 2693 0bba 5BB2     		sxtb	r3, r3
 2694 0bbc 7A18     		adds	r2, r7, r1
 2695 0bbe 1278     		ldrb	r2, [r2]
 2696 0bc0 52B2     		sxtb	r2, r2
 2697 0bc2 1340     		ands	r3, r2
 2698 0bc4 5BB2     		sxtb	r3, r3
 2699 0bc6 0422     		movs	r2, #4
 2700 0bc8 1343     		orrs	r3, r2
 2701 0bca 5AB2     		sxtb	r2, r3
 2702 0bcc 7B18     		adds	r3, r7, r1
 2703 0bce 1A70     		strb	r2, [r3]
 544:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	GPIO_E.odr_low = c;
 2704              		.loc 1 544 0
 2705 0bd0 034A     		ldr	r2, .L137
 2706 0bd2 7B18     		adds	r3, r7, r1
 2707 0bd4 1B78     		ldrb	r3, [r3]
 2708 0bd6 1375     		strb	r3, [r2, #20]
 545:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** } 
 2709              		.loc 1 545 0
 2710 0bd8 C046     		nop
 2711 0bda BD46     		mov	sp, r7
 2712 0bdc 04B0     		add	sp, sp, #16
 2713              		@ sp needed
 2714 0bde 80BD     		pop	{r7, pc}
 2715              	.L138:
 2716              		.align	2
 2717              	.L137:
 2718 0be0 00100240 		.word	1073876992
 2719              		.cfi_endproc
 2720              	.LFE31:
 2722              		.align	1
 2723              		.global	ascii_write_controller
 2724              		.syntax unified
 2725              		.code	16
 2726              		.thumb_func
 2727              		.fpu softvfp
 2729              	ascii_write_controller:
 2730              	.LFB32:
 546:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
 547:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void ascii_write_controller(unsigned char c){
 2731              		.loc 1 547 0
 2732              		.cfi_startproc
 2733              		@ args = 0, pretend = 0, frame = 8
 2734              		@ frame_needed = 1, uses_anonymous_args = 0
 2735 0be4 80B5     		push	{r7, lr}
 2736              		.cfi_def_cfa_offset 8
 2737              		.cfi_offset 7, -8
 2738              		.cfi_offset 14, -4
 2739 0be6 82B0     		sub	sp, sp, #8
 2740              		.cfi_def_cfa_offset 16
 2741 0be8 00AF     		add	r7, sp, #0
 2742              		.cfi_def_cfa_register 7
 2743 0bea 0200     		movs	r2, r0
 2744 0bec FB1D     		adds	r3, r7, #7
 2745 0bee 1A70     		strb	r2, [r3]
 548:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	ascii_ctrl_bit_set(B_E);
 2746              		.loc 1 548 0
 2747 0bf0 4020     		movs	r0, #64
 2748 0bf2 FFF7FEFF 		bl	ascii_ctrl_bit_set
 549:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	GPIO_E.odr_high = c;
 2749              		.loc 1 549 0
 2750 0bf6 064A     		ldr	r2, .L140
 2751 0bf8 FB1D     		adds	r3, r7, #7
 2752 0bfa 1B78     		ldrb	r3, [r3]
 2753 0bfc 5375     		strb	r3, [r2, #21]
 550:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	delay_250ns();
 2754              		.loc 1 550 0
 2755 0bfe FFF7FEFF 		bl	delay_250ns
 551:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	ascii_ctrl_bit_clear(B_E);
 2756              		.loc 1 551 0
 2757 0c02 4020     		movs	r0, #64
 2758 0c04 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 552:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 2759              		.loc 1 552 0
 2760 0c08 C046     		nop
 2761 0c0a BD46     		mov	sp, r7
 2762 0c0c 02B0     		add	sp, sp, #8
 2763              		@ sp needed
 2764 0c0e 80BD     		pop	{r7, pc}
 2765              	.L141:
 2766              		.align	2
 2767              	.L140:
 2768 0c10 00100240 		.word	1073876992
 2769              		.cfi_endproc
 2770              	.LFE32:
 2772              		.align	1
 2773              		.global	ascii_write_CMD
 2774              		.syntax unified
 2775              		.code	16
 2776              		.thumb_func
 2777              		.fpu softvfp
 2779              	ascii_write_CMD:
 2780              	.LFB33:
 553:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void ascii_write_CMD(unsigned char command){
 2781              		.loc 1 553 0
 2782              		.cfi_startproc
 2783              		@ args = 0, pretend = 0, frame = 8
 2784              		@ frame_needed = 1, uses_anonymous_args = 0
 2785 0c14 80B5     		push	{r7, lr}
 2786              		.cfi_def_cfa_offset 8
 2787              		.cfi_offset 7, -8
 2788              		.cfi_offset 14, -4
 2789 0c16 82B0     		sub	sp, sp, #8
 2790              		.cfi_def_cfa_offset 16
 2791 0c18 00AF     		add	r7, sp, #0
 2792              		.cfi_def_cfa_register 7
 2793 0c1a 0200     		movs	r2, r0
 2794 0c1c FB1D     		adds	r3, r7, #7
 2795 0c1e 1A70     		strb	r2, [r3]
 554:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	ascii_ctrl_bit_clear(B_RS);
 2796              		.loc 1 554 0
 2797 0c20 0120     		movs	r0, #1
 2798 0c22 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 555:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	ascii_ctrl_bit_clear(B_RW);
 2799              		.loc 1 555 0
 2800 0c26 0220     		movs	r0, #2
 2801 0c28 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 556:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	ascii_write_controller(command);
 2802              		.loc 1 556 0
 2803 0c2c FB1D     		adds	r3, r7, #7
 2804 0c2e 1B78     		ldrb	r3, [r3]
 2805 0c30 1800     		movs	r0, r3
 2806 0c32 FFF7FEFF 		bl	ascii_write_controller
 557:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 2807              		.loc 1 557 0
 2808 0c36 C046     		nop
 2809 0c38 BD46     		mov	sp, r7
 2810 0c3a 02B0     		add	sp, sp, #8
 2811              		@ sp needed
 2812 0c3c 80BD     		pop	{r7, pc}
 2813              		.cfi_endproc
 2814              	.LFE33:
 2816              		.align	1
 2817              		.global	ascii_write_data
 2818              		.syntax unified
 2819              		.code	16
 2820              		.thumb_func
 2821              		.fpu softvfp
 2823              	ascii_write_data:
 2824              	.LFB34:
 558:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void ascii_write_data(unsigned char data){
 2825              		.loc 1 558 0
 2826              		.cfi_startproc
 2827              		@ args = 0, pretend = 0, frame = 8
 2828              		@ frame_needed = 1, uses_anonymous_args = 0
 2829 0c3e 80B5     		push	{r7, lr}
 2830              		.cfi_def_cfa_offset 8
 2831              		.cfi_offset 7, -8
 2832              		.cfi_offset 14, -4
 2833 0c40 82B0     		sub	sp, sp, #8
 2834              		.cfi_def_cfa_offset 16
 2835 0c42 00AF     		add	r7, sp, #0
 2836              		.cfi_def_cfa_register 7
 2837 0c44 0200     		movs	r2, r0
 2838 0c46 FB1D     		adds	r3, r7, #7
 2839 0c48 1A70     		strb	r2, [r3]
 559:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	ascii_ctrl_bit_set(B_RS);
 2840              		.loc 1 559 0
 2841 0c4a 0120     		movs	r0, #1
 2842 0c4c FFF7FEFF 		bl	ascii_ctrl_bit_set
 560:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	ascii_ctrl_bit_clear(B_RW);
 2843              		.loc 1 560 0
 2844 0c50 0220     		movs	r0, #2
 2845 0c52 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 561:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	ascii_write_controller(data);
 2846              		.loc 1 561 0
 2847 0c56 FB1D     		adds	r3, r7, #7
 2848 0c58 1B78     		ldrb	r3, [r3]
 2849 0c5a 1800     		movs	r0, r3
 2850 0c5c FFF7FEFF 		bl	ascii_write_controller
 562:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 2851              		.loc 1 562 0
 2852 0c60 C046     		nop
 2853 0c62 BD46     		mov	sp, r7
 2854 0c64 02B0     		add	sp, sp, #8
 2855              		@ sp needed
 2856 0c66 80BD     		pop	{r7, pc}
 2857              		.cfi_endproc
 2858              	.LFE34:
 2860              		.align	1
 2861              		.global	ascii_read_controller
 2862              		.syntax unified
 2863              		.code	16
 2864              		.thumb_func
 2865              		.fpu softvfp
 2867              	ascii_read_controller:
 2868              	.LFB35:
 563:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** unsigned char ascii_read_controller(void){
 2869              		.loc 1 563 0
 2870              		.cfi_startproc
 2871              		@ args = 0, pretend = 0, frame = 8
 2872              		@ frame_needed = 1, uses_anonymous_args = 0
 2873 0c68 80B5     		push	{r7, lr}
 2874              		.cfi_def_cfa_offset 8
 2875              		.cfi_offset 7, -8
 2876              		.cfi_offset 14, -4
 2877 0c6a 82B0     		sub	sp, sp, #8
 2878              		.cfi_def_cfa_offset 16
 2879 0c6c 00AF     		add	r7, sp, #0
 2880              		.cfi_def_cfa_register 7
 564:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	ascii_ctrl_bit_set(B_E);
 2881              		.loc 1 564 0
 2882 0c6e 4020     		movs	r0, #64
 2883 0c70 FFF7FEFF 		bl	ascii_ctrl_bit_set
 565:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	delay_250ns();
 2884              		.loc 1 565 0
 2885 0c74 FFF7FEFF 		bl	delay_250ns
 566:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	delay_250ns();
 2886              		.loc 1 566 0
 2887 0c78 FFF7FEFF 		bl	delay_250ns
 567:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	unsigned char r = GPIO_E.idr_high;
 2888              		.loc 1 567 0
 2889 0c7c 064A     		ldr	r2, .L146
 2890 0c7e FB1D     		adds	r3, r7, #7
 2891 0c80 527C     		ldrb	r2, [r2, #17]
 2892 0c82 1A70     		strb	r2, [r3]
 568:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	ascii_ctrl_bit_clear(B_E);
 2893              		.loc 1 568 0
 2894 0c84 4020     		movs	r0, #64
 2895 0c86 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 569:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	return r;
 2896              		.loc 1 569 0
 2897 0c8a FB1D     		adds	r3, r7, #7
 2898 0c8c 1B78     		ldrb	r3, [r3]
 570:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 2899              		.loc 1 570 0
 2900 0c8e 1800     		movs	r0, r3
 2901 0c90 BD46     		mov	sp, r7
 2902 0c92 02B0     		add	sp, sp, #8
 2903              		@ sp needed
 2904 0c94 80BD     		pop	{r7, pc}
 2905              	.L147:
 2906 0c96 C046     		.align	2
 2907              	.L146:
 2908 0c98 00100240 		.word	1073876992
 2909              		.cfi_endproc
 2910              	.LFE35:
 2912              		.align	1
 2913              		.global	ascii_read_status
 2914              		.syntax unified
 2915              		.code	16
 2916              		.thumb_func
 2917              		.fpu softvfp
 2919              	ascii_read_status:
 2920              	.LFB36:
 571:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** unsigned char ascii_read_status(void){
 2921              		.loc 1 571 0
 2922              		.cfi_startproc
 2923              		@ args = 0, pretend = 0, frame = 8
 2924              		@ frame_needed = 1, uses_anonymous_args = 0
 2925 0c9c 90B5     		push	{r4, r7, lr}
 2926              		.cfi_def_cfa_offset 12
 2927              		.cfi_offset 4, -12
 2928              		.cfi_offset 7, -8
 2929              		.cfi_offset 14, -4
 2930 0c9e 83B0     		sub	sp, sp, #12
 2931              		.cfi_def_cfa_offset 24
 2932 0ca0 00AF     		add	r7, sp, #0
 2933              		.cfi_def_cfa_register 7
 572:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	GPIO_E.moder = 0x00005555;
 2934              		.loc 1 572 0
 2935 0ca2 0B4B     		ldr	r3, .L150
 2936 0ca4 0B4A     		ldr	r2, .L150+4
 2937 0ca6 1A60     		str	r2, [r3]
 573:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	ascii_ctrl_bit_clear(B_RS);
 2938              		.loc 1 573 0
 2939 0ca8 0120     		movs	r0, #1
 2940 0caa FFF7FEFF 		bl	ascii_ctrl_bit_clear
 574:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	ascii_ctrl_bit_set(B_RW);
 2941              		.loc 1 574 0
 2942 0cae 0220     		movs	r0, #2
 2943 0cb0 FFF7FEFF 		bl	ascii_ctrl_bit_set
 575:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	unsigned char r = ascii_read_controller();
 2944              		.loc 1 575 0
 2945 0cb4 FC1D     		adds	r4, r7, #7
 2946 0cb6 FFF7FEFF 		bl	ascii_read_controller
 2947 0cba 0300     		movs	r3, r0
 2948 0cbc 2370     		strb	r3, [r4]
 576:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	GPIO_E.moder = 0x55555555;
 2949              		.loc 1 576 0
 2950 0cbe 044B     		ldr	r3, .L150
 2951 0cc0 054A     		ldr	r2, .L150+8
 2952 0cc2 1A60     		str	r2, [r3]
 577:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	return r;
 2953              		.loc 1 577 0
 2954 0cc4 FB1D     		adds	r3, r7, #7
 2955 0cc6 1B78     		ldrb	r3, [r3]
 578:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 2956              		.loc 1 578 0
 2957 0cc8 1800     		movs	r0, r3
 2958 0cca BD46     		mov	sp, r7
 2959 0ccc 03B0     		add	sp, sp, #12
 2960              		@ sp needed
 2961 0cce 90BD     		pop	{r4, r7, pc}
 2962              	.L151:
 2963              		.align	2
 2964              	.L150:
 2965 0cd0 00100240 		.word	1073876992
 2966 0cd4 55550000 		.word	21845
 2967 0cd8 55555555 		.word	1431655765
 2968              		.cfi_endproc
 2969              	.LFE36:
 2971              		.align	1
 2972              		.global	ascii_read_data
 2973              		.syntax unified
 2974              		.code	16
 2975              		.thumb_func
 2976              		.fpu softvfp
 2978              	ascii_read_data:
 2979              	.LFB37:
 579:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** unsigned char ascii_read_data(void){
 2980              		.loc 1 579 0
 2981              		.cfi_startproc
 2982              		@ args = 0, pretend = 0, frame = 8
 2983              		@ frame_needed = 1, uses_anonymous_args = 0
 2984 0cdc 80B5     		push	{r7, lr}
 2985              		.cfi_def_cfa_offset 8
 2986              		.cfi_offset 7, -8
 2987              		.cfi_offset 14, -4
 2988 0cde 82B0     		sub	sp, sp, #8
 2989              		.cfi_def_cfa_offset 16
 2990 0ce0 00AF     		add	r7, sp, #0
 2991              		.cfi_def_cfa_register 7
 580:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	unsigned char rv;
 581:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	GPIO_E.moder = 0x00005555;
 2992              		.loc 1 581 0
 2993 0ce2 0A4B     		ldr	r3, .L154
 2994 0ce4 0A4A     		ldr	r2, .L154+4
 2995 0ce6 1A60     		str	r2, [r3]
 582:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	ascii_ctrl_bit_set(B_RS);
 2996              		.loc 1 582 0
 2997 0ce8 0120     		movs	r0, #1
 2998 0cea FFF7FEFF 		bl	ascii_ctrl_bit_set
 583:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	ascii_ctrl_bit_set(B_RW);
 2999              		.loc 1 583 0
 3000 0cee 0220     		movs	r0, #2
 3001 0cf0 FFF7FEFF 		bl	ascii_ctrl_bit_set
 584:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	rv = ascii_read_controller;
 3002              		.loc 1 584 0
 3003 0cf4 074A     		ldr	r2, .L154+8
 3004 0cf6 FB1D     		adds	r3, r7, #7
 3005 0cf8 1A70     		strb	r2, [r3]
 585:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	GPIO_E.moder = 0x55555555;
 3006              		.loc 1 585 0
 3007 0cfa 044B     		ldr	r3, .L154
 3008 0cfc 064A     		ldr	r2, .L154+12
 3009 0cfe 1A60     		str	r2, [r3]
 586:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	return rv;
 3010              		.loc 1 586 0
 3011 0d00 FB1D     		adds	r3, r7, #7
 3012 0d02 1B78     		ldrb	r3, [r3]
 587:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 3013              		.loc 1 587 0
 3014 0d04 1800     		movs	r0, r3
 3015 0d06 BD46     		mov	sp, r7
 3016 0d08 02B0     		add	sp, sp, #8
 3017              		@ sp needed
 3018 0d0a 80BD     		pop	{r7, pc}
 3019              	.L155:
 3020              		.align	2
 3021              	.L154:
 3022 0d0c 00100240 		.word	1073876992
 3023 0d10 55550000 		.word	21845
 3024 0d14 00000000 		.word	ascii_read_controller
 3025 0d18 55555555 		.word	1431655765
 3026              		.cfi_endproc
 3027              	.LFE37:
 3029              		.align	1
 3030              		.global	ascii_clear_dsplay
 3031              		.syntax unified
 3032              		.code	16
 3033              		.thumb_func
 3034              		.fpu softvfp
 3036              	ascii_clear_dsplay:
 3037              	.LFB38:
 588:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void ascii_clear_dsplay(void){
 3038              		.loc 1 588 0
 3039              		.cfi_startproc
 3040              		@ args = 0, pretend = 0, frame = 0
 3041              		@ frame_needed = 1, uses_anonymous_args = 0
 3042 0d1c 80B5     		push	{r7, lr}
 3043              		.cfi_def_cfa_offset 8
 3044              		.cfi_offset 7, -8
 3045              		.cfi_offset 14, -4
 3046 0d1e 00AF     		add	r7, sp, #0
 3047              		.cfi_def_cfa_register 7
 589:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	ascii_write_CMD(1);
 3048              		.loc 1 589 0
 3049 0d20 0120     		movs	r0, #1
 3050 0d22 FFF7FEFF 		bl	ascii_write_CMD
 590:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 3051              		.loc 1 590 0
 3052 0d26 C046     		nop
 3053 0d28 BD46     		mov	sp, r7
 3054              		@ sp needed
 3055 0d2a 80BD     		pop	{r7, pc}
 3056              		.cfi_endproc
 3057              	.LFE38:
 3059              		.align	1
 3060              		.global	print_to_ascii
 3061              		.syntax unified
 3062              		.code	16
 3063              		.thumb_func
 3064              		.fpu softvfp
 3066              	print_to_ascii:
 3067              	.LFB39:
 591:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** //skriver ut det som finns i PAscii till AsciiDisplayen.
 592:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void print_to_ascii(char line[], signed char x, char i){		
 3068              		.loc 1 592 0
 3069              		.cfi_startproc
 3070              		@ args = 0, pretend = 0, frame = 8
 3071              		@ frame_needed = 1, uses_anonymous_args = 0
 3072 0d2c 80B5     		push	{r7, lr}
 3073              		.cfi_def_cfa_offset 8
 3074              		.cfi_offset 7, -8
 3075              		.cfi_offset 14, -4
 3076 0d2e 82B0     		sub	sp, sp, #8
 3077              		.cfi_def_cfa_offset 16
 3078 0d30 00AF     		add	r7, sp, #0
 3079              		.cfi_def_cfa_register 7
 3080 0d32 7860     		str	r0, [r7, #4]
 3081 0d34 0800     		movs	r0, r1
 3082 0d36 1100     		movs	r1, r2
 3083 0d38 FB1C     		adds	r3, r7, #3
 3084 0d3a 021C     		adds	r2, r0, #0
 3085 0d3c 1A70     		strb	r2, [r3]
 3086 0d3e BB1C     		adds	r3, r7, #2
 3087 0d40 0A1C     		adds	r2, r1, #0
 3088 0d42 1A70     		strb	r2, [r3]
 593:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		ascii_gotoxy(1,i);
 3089              		.loc 1 593 0
 3090 0d44 BB1C     		adds	r3, r7, #2
 3091 0d46 1B78     		ldrb	r3, [r3]
 3092 0d48 1900     		movs	r1, r3
 3093 0d4a 0120     		movs	r0, #1
 3094 0d4c FFF7FEFF 		bl	ascii_gotoxy
 594:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		while(*line)
 3095              		.loc 1 594 0
 3096 0d50 06E0     		b	.L158
 3097              	.L159:
 595:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			ascii_write_char(*line++);
 3098              		.loc 1 595 0
 3099 0d52 7B68     		ldr	r3, [r7, #4]
 3100 0d54 5A1C     		adds	r2, r3, #1
 3101 0d56 7A60     		str	r2, [r7, #4]
 3102 0d58 1B78     		ldrb	r3, [r3]
 3103 0d5a 1800     		movs	r0, r3
 3104 0d5c FFF7FEFF 		bl	ascii_write_char
 3105              	.L158:
 594:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		while(*line)
 3106              		.loc 1 594 0
 3107 0d60 7B68     		ldr	r3, [r7, #4]
 3108 0d62 1B78     		ldrb	r3, [r3]
 3109 0d64 002B     		cmp	r3, #0
 3110 0d66 F4D1     		bne	.L159
 596:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		if(x >= 0){ //If X is negative, don't print the players point.
 3111              		.loc 1 596 0
 3112 0d68 FB1C     		adds	r3, r7, #3
 3113 0d6a 1B78     		ldrb	r3, [r3]
 3114 0d6c 7F2B     		cmp	r3, #127
 3115 0d6e 04D8     		bhi	.L161
 597:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			ascii_write_char(x);
 3116              		.loc 1 597 0
 3117 0d70 FB1C     		adds	r3, r7, #3
 3118 0d72 1B78     		ldrb	r3, [r3]
 3119 0d74 1800     		movs	r0, r3
 3120 0d76 FFF7FEFF 		bl	ascii_write_char
 3121              	.L161:
 598:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		}
 599:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
 600:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 3122              		.loc 1 600 0
 3123 0d7a C046     		nop
 3124 0d7c BD46     		mov	sp, r7
 3125 0d7e 02B0     		add	sp, sp, #8
 3126              		@ sp needed
 3127 0d80 80BD     		pop	{r7, pc}
 3128              		.cfi_endproc
 3129              	.LFE39:
 3131              		.align	1
 3132              		.global	init_app
 3133              		.syntax unified
 3134              		.code	16
 3135              		.thumb_func
 3136              		.fpu softvfp
 3138              	init_app:
 3139              	.LFB40:
 601:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
 602:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** //Sets values to their initiall value.
 603:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void init_app(void){ 	
 3140              		.loc 1 603 0
 3141              		.cfi_startproc
 3142              		@ args = 0, pretend = 0, frame = 0
 3143              		@ frame_needed = 1, uses_anonymous_args = 0
 3144 0d82 80B5     		push	{r7, lr}
 3145              		.cfi_def_cfa_offset 8
 3146              		.cfi_offset 7, -8
 3147              		.cfi_offset 14, -4
 3148 0d84 00AF     		add	r7, sp, #0
 3149              		.cfi_def_cfa_register 7
 604:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	
 605:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	GPIO_E.moder = 0x55555555;
 3150              		.loc 1 605 0
 3151 0d86 044B     		ldr	r3, .L163
 3152 0d88 044A     		ldr	r2, .L163+4
 3153 0d8a 1A60     		str	r2, [r3]
 606:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	GPIO_D.moder = 0x55005555;
 3154              		.loc 1 606 0
 3155 0d8c 044B     		ldr	r3, .L163+8
 3156 0d8e 054A     		ldr	r2, .L163+12
 3157 0d90 1A60     		str	r2, [r3]
 607:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }	
 3158              		.loc 1 607 0
 3159 0d92 C046     		nop
 3160 0d94 BD46     		mov	sp, r7
 3161              		@ sp needed
 3162 0d96 80BD     		pop	{r7, pc}
 3163              	.L164:
 3164              		.align	2
 3165              	.L163:
 3166 0d98 00100240 		.word	1073876992
 3167 0d9c 55555555 		.word	1431655765
 3168 0da0 000C0240 		.word	1073875968
 3169 0da4 55550055 		.word	1426085205
 3170              		.cfi_endproc
 3171              	.LFE40:
 3173              		.align	1
 3174              		.global	game_init
 3175              		.syntax unified
 3176              		.code	16
 3177              		.thumb_func
 3178              		.fpu softvfp
 3180              	game_init:
 3181              	.LFB41:
 608:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void game_init(POBJECT BALL, PPLAYER P1, PPLAYER P2){
 3182              		.loc 1 608 0
 3183              		.cfi_startproc
 3184              		@ args = 0, pretend = 0, frame = 16
 3185              		@ frame_needed = 1, uses_anonymous_args = 0
 3186 0da8 80B5     		push	{r7, lr}
 3187              		.cfi_def_cfa_offset 8
 3188              		.cfi_offset 7, -8
 3189              		.cfi_offset 14, -4
 3190 0daa 84B0     		sub	sp, sp, #16
 3191              		.cfi_def_cfa_offset 24
 3192 0dac 00AF     		add	r7, sp, #0
 3193              		.cfi_def_cfa_register 7
 3194 0dae F860     		str	r0, [r7, #12]
 3195 0db0 B960     		str	r1, [r7, #8]
 3196 0db2 7A60     		str	r2, [r7, #4]
 609:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		//Reset points
 610:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		P1->points = 0;
 3197              		.loc 1 610 0
 3198 0db4 BB68     		ldr	r3, [r7, #8]
 3199 0db6 0022     		movs	r2, #0
 3200 0db8 5A60     		str	r2, [r3, #4]
 611:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		P2->points = 0;
 3201              		.loc 1 611 0
 3202 0dba 7B68     		ldr	r3, [r7, #4]
 3203 0dbc 0022     		movs	r2, #0
 3204 0dbe 5A60     		str	r2, [r3, #4]
 612:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		// Reset bouncer positions.
 613:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		P1->objct->posx = 6;
 3205              		.loc 1 613 0
 3206 0dc0 BB68     		ldr	r3, [r7, #8]
 3207 0dc2 1B68     		ldr	r3, [r3]
 3208 0dc4 0622     		movs	r2, #6
 3209 0dc6 DA60     		str	r2, [r3, #12]
 614:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		P1->objct->posy = 32;
 3210              		.loc 1 614 0
 3211 0dc8 BB68     		ldr	r3, [r7, #8]
 3212 0dca 1B68     		ldr	r3, [r3]
 3213 0dcc 2022     		movs	r2, #32
 3214 0dce 1A61     		str	r2, [r3, #16]
 615:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		P2->objct->posx = LCD_WIDTH - 6;
 3215              		.loc 1 615 0
 3216 0dd0 7B68     		ldr	r3, [r7, #4]
 3217 0dd2 1B68     		ldr	r3, [r3]
 3218 0dd4 7A22     		movs	r2, #122
 3219 0dd6 DA60     		str	r2, [r3, #12]
 616:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		P2->objct->posy = 32;
 3220              		.loc 1 616 0
 3221 0dd8 7B68     		ldr	r3, [r7, #4]
 3222 0dda 1B68     		ldr	r3, [r3]
 3223 0ddc 2022     		movs	r2, #32
 3224 0dde 1A61     		str	r2, [r3, #16]
 617:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		
 618:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		//Clears LCD screen
 619:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		graphic_clear_screen();
 3225              		.loc 1 619 0
 3226 0de0 FFF7FEFF 		bl	graphic_clear_screen
 620:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		
 621:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		// Writes the startup values to the AsciiDisplay.
 622:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		ascii_clear_dsplay();
 3227              		.loc 1 622 0
 3228 0de4 FFF7FEFF 		bl	ascii_clear_dsplay
 623:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		print_to_ascii(Player1.PAscii,'0' + Player1.points, 1);
 3229              		.loc 1 623 0
 3230 0de8 194B     		ldr	r3, .L166
 3231 0dea 5B68     		ldr	r3, [r3, #4]
 3232 0dec DBB2     		uxtb	r3, r3
 3233 0dee 3033     		adds	r3, r3, #48
 3234 0df0 DBB2     		uxtb	r3, r3
 3235 0df2 59B2     		sxtb	r1, r3
 3236 0df4 174B     		ldr	r3, .L166+4
 3237 0df6 0122     		movs	r2, #1
 3238 0df8 1800     		movs	r0, r3
 3239 0dfa FFF7FEFF 		bl	print_to_ascii
 624:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		print_to_ascii(Player2.PAscii,'0' + Player2.points, 2);
 3240              		.loc 1 624 0
 3241 0dfe 164B     		ldr	r3, .L166+8
 3242 0e00 5B68     		ldr	r3, [r3, #4]
 3243 0e02 DBB2     		uxtb	r3, r3
 3244 0e04 3033     		adds	r3, r3, #48
 3245 0e06 DBB2     		uxtb	r3, r3
 3246 0e08 59B2     		sxtb	r1, r3
 3247 0e0a 144B     		ldr	r3, .L166+12
 3248 0e0c 0222     		movs	r2, #2
 3249 0e0e 1800     		movs	r0, r3
 3250 0e10 FFF7FEFF 		bl	print_to_ascii
 625:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		
 626:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		P1->objct->move(P1->objct); //Flyttar P1 "pinne"
 3251              		.loc 1 626 0
 3252 0e14 BB68     		ldr	r3, [r7, #8]
 3253 0e16 1B68     		ldr	r3, [r3]
 3254 0e18 DA69     		ldr	r2, [r3, #28]
 3255 0e1a BB68     		ldr	r3, [r7, #8]
 3256 0e1c 1B68     		ldr	r3, [r3]
 3257 0e1e 1800     		movs	r0, r3
 3258 0e20 9047     		blx	r2
 3259              	.LVL7:
 627:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		P2->objct->move(P2->objct); //Flyttar P2 "pinne"
 3260              		.loc 1 627 0
 3261 0e22 7B68     		ldr	r3, [r7, #4]
 3262 0e24 1B68     		ldr	r3, [r3]
 3263 0e26 DA69     		ldr	r2, [r3, #28]
 3264 0e28 7B68     		ldr	r3, [r7, #4]
 3265 0e2a 1B68     		ldr	r3, [r3]
 3266 0e2c 1800     		movs	r0, r3
 3267 0e2e 9047     		blx	r2
 3268              	.LVL8:
 628:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		
 629:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		// Gives the ball it's speedfactor.
 630:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		BALL->set_speed(BALL,1,1);
 3269              		.loc 1 630 0
 3270 0e30 FB68     		ldr	r3, [r7, #12]
 3271 0e32 1B6A     		ldr	r3, [r3, #32]
 3272 0e34 F868     		ldr	r0, [r7, #12]
 3273 0e36 0122     		movs	r2, #1
 3274 0e38 0121     		movs	r1, #1
 3275 0e3a 9847     		blx	r3
 3276              	.LVL9:
 631:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		delay_milli(300);
 3277              		.loc 1 631 0
 3278 0e3c 9623     		movs	r3, #150
 3279 0e3e 5B00     		lsls	r3, r3, #1
 3280 0e40 1800     		movs	r0, r3
 3281 0e42 FFF7FEFF 		bl	delay_milli
 632:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** }
 3282              		.loc 1 632 0
 3283 0e46 C046     		nop
 3284 0e48 BD46     		mov	sp, r7
 3285 0e4a 04B0     		add	sp, sp, #16
 3286              		@ sp needed
 3287 0e4c 80BD     		pop	{r7, pc}
 3288              	.L167:
 3289 0e4e C046     		.align	2
 3290              	.L166:
 3291 0e50 F4000000 		.word	Player1
 3292 0e54 FC000000 		.word	Player1+8
 3293 0e58 14010000 		.word	Player2
 3294 0e5c 1C010000 		.word	Player2+8
 3295              		.cfi_endproc
 3296              	.LFE41:
 3298              		.section	.rodata
 3299              		.align	2
 3300              	.LC15:
 3301 0034 50726573 		.ascii	"Press 5 to restart\000"
 3301      73203520 
 3301      746F2072 
 3301      65737461 
 3301      727400
 3302              		.text
 3303              		.align	1
 3304              		.global	main
 3305              		.syntax unified
 3306              		.code	16
 3307              		.thumb_func
 3308              		.fpu softvfp
 3310              	main:
 3311              	.LFB42:
 633:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
 634:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** void main(void){
 3312              		.loc 1 634 0
 3313              		.cfi_startproc
 3314              		@ args = 0, pretend = 0, frame = 40
 3315              		@ frame_needed = 1, uses_anonymous_args = 0
 3316 0e60 B0B5     		push	{r4, r5, r7, lr}
 3317              		.cfi_def_cfa_offset 16
 3318              		.cfi_offset 4, -16
 3319              		.cfi_offset 5, -12
 3320              		.cfi_offset 7, -8
 3321              		.cfi_offset 14, -4
 3322 0e62 8AB0     		sub	sp, sp, #40
 3323              		.cfi_def_cfa_offset 56
 3324 0e64 00AF     		add	r7, sp, #0
 3325              		.cfi_def_cfa_register 7
 635:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	char c;
 636:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	POBJECT BALL = &ball;
 3326              		.loc 1 636 0
 3327 0e66 694B     		ldr	r3, .L182
 3328 0e68 3B62     		str	r3, [r7, #32]
 637:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	PPLAYER P1 = &Player1;
 3329              		.loc 1 637 0
 3330 0e6a 694B     		ldr	r3, .L182+4
 3331 0e6c FB61     		str	r3, [r7, #28]
 638:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	PPLAYER P2 = &Player2;
 3332              		.loc 1 638 0
 3333 0e6e 694B     		ldr	r3, .L182+8
 3334 0e70 BB61     		str	r3, [r7, #24]
 639:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	
 640:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	init_app(); //Initierar register
 3335              		.loc 1 640 0
 3336 0e72 FFF7FEFF 		bl	init_app
 641:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	ascii_init(); //Initierar Ascii displayen
 3337              		.loc 1 641 0
 3338 0e76 FFF7FEFF 		bl	ascii_init
 642:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	graphic_initialize(); //initierar LC displayen
 3339              		.loc 1 642 0
 3340 0e7a FFF7FEFF 		bl	graphic_initialize
 643:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	game_init(BALL, P1, P2); //initierar spelet
 3341              		.loc 1 643 0
 3342 0e7e BA69     		ldr	r2, [r7, #24]
 3343 0e80 F969     		ldr	r1, [r7, #28]
 3344 0e82 3B6A     		ldr	r3, [r7, #32]
 3345 0e84 1800     		movs	r0, r3
 3346 0e86 FFF7FEFF 		bl	game_init
 3347              	.L181:
 644:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 	while(1){
 645:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		BALL->move(BALL); //sätter bollen i rörelse
 3348              		.loc 1 645 0
 3349 0e8a 3B6A     		ldr	r3, [r7, #32]
 3350 0e8c DB69     		ldr	r3, [r3, #28]
 3351 0e8e 3A6A     		ldr	r2, [r7, #32]
 3352 0e90 1000     		movs	r0, r2
 3353 0e92 9847     		blx	r3
 3354              	.LVL10:
 646:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		delay_milli(10);
 3355              		.loc 1 646 0
 3356 0e94 0A20     		movs	r0, #10
 3357 0e96 FFF7FEFF 		bl	delay_milli
 647:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		c = keyb(); //Kollar om någon tryckt
 3358              		.loc 1 647 0
 3359 0e9a 1725     		movs	r5, #23
 3360 0e9c 7C19     		adds	r4, r7, r5
 3361 0e9e FFF7FEFF 		bl	keyb
 3362 0ea2 0300     		movs	r3, r0
 3363 0ea4 2370     		strb	r3, [r4]
 648:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		switch(c){
 3364              		.loc 1 648 0
 3365 0ea6 7B19     		adds	r3, r7, r5
 3366 0ea8 1B78     		ldrb	r3, [r3]
 3367 0eaa 032B     		cmp	r3, #3
 3368 0eac 2BD0     		beq	.L170
 3369 0eae 02DC     		bgt	.L171
 3370 0eb0 012B     		cmp	r3, #1
 3371 0eb2 05D0     		beq	.L172
 3372 0eb4 4AE0     		b	.L169
 3373              	.L171:
 3374 0eb6 072B     		cmp	r3, #7
 3375 0eb8 14D0     		beq	.L173
 3376 0eba 092B     		cmp	r3, #9
 3377 0ebc 35D0     		beq	.L174
 3378 0ebe 45E0     		b	.L169
 3379              	.L172:
 649:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			case 1: P1->objct->set_speed(P1->objct, 0, -2);
 3380              		.loc 1 649 0
 3381 0ec0 FB69     		ldr	r3, [r7, #28]
 3382 0ec2 1B68     		ldr	r3, [r3]
 3383 0ec4 1C6A     		ldr	r4, [r3, #32]
 3384 0ec6 FB69     		ldr	r3, [r7, #28]
 3385 0ec8 1868     		ldr	r0, [r3]
 3386 0eca 0223     		movs	r3, #2
 3387 0ecc 5B42     		rsbs	r3, r3, #0
 3388 0ece 1A00     		movs	r2, r3
 3389 0ed0 0021     		movs	r1, #0
 3390 0ed2 A047     		blx	r4
 3391              	.LVL11:
 650:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 				P1->objct->move(P1->objct);
 3392              		.loc 1 650 0
 3393 0ed4 FB69     		ldr	r3, [r7, #28]
 3394 0ed6 1B68     		ldr	r3, [r3]
 3395 0ed8 DA69     		ldr	r2, [r3, #28]
 3396 0eda FB69     		ldr	r3, [r7, #28]
 3397 0edc 1B68     		ldr	r3, [r3]
 3398 0ede 1800     		movs	r0, r3
 3399 0ee0 9047     		blx	r2
 3400              	.LVL12:
 651:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 				break;
 3401              		.loc 1 651 0
 3402 0ee2 33E0     		b	.L169
 3403              	.L173:
 652:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			case 7: P1->objct->set_speed(P1->objct, 0, 2);
 3404              		.loc 1 652 0
 3405 0ee4 FB69     		ldr	r3, [r7, #28]
 3406 0ee6 1B68     		ldr	r3, [r3]
 3407 0ee8 1C6A     		ldr	r4, [r3, #32]
 3408 0eea FB69     		ldr	r3, [r7, #28]
 3409 0eec 1B68     		ldr	r3, [r3]
 3410 0eee 0222     		movs	r2, #2
 3411 0ef0 0021     		movs	r1, #0
 3412 0ef2 1800     		movs	r0, r3
 3413 0ef4 A047     		blx	r4
 3414              	.LVL13:
 653:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 				P1->objct->move(P1->objct);
 3415              		.loc 1 653 0
 3416 0ef6 FB69     		ldr	r3, [r7, #28]
 3417 0ef8 1B68     		ldr	r3, [r3]
 3418 0efa DA69     		ldr	r2, [r3, #28]
 3419 0efc FB69     		ldr	r3, [r7, #28]
 3420 0efe 1B68     		ldr	r3, [r3]
 3421 0f00 1800     		movs	r0, r3
 3422 0f02 9047     		blx	r2
 3423              	.LVL14:
 654:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 				break;
 3424              		.loc 1 654 0
 3425 0f04 22E0     		b	.L169
 3426              	.L170:
 655:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			case 3: P2->objct->set_speed(P2->objct, 0, -2);
 3427              		.loc 1 655 0
 3428 0f06 BB69     		ldr	r3, [r7, #24]
 3429 0f08 1B68     		ldr	r3, [r3]
 3430 0f0a 1C6A     		ldr	r4, [r3, #32]
 3431 0f0c BB69     		ldr	r3, [r7, #24]
 3432 0f0e 1868     		ldr	r0, [r3]
 3433 0f10 0223     		movs	r3, #2
 3434 0f12 5B42     		rsbs	r3, r3, #0
 3435 0f14 1A00     		movs	r2, r3
 3436 0f16 0021     		movs	r1, #0
 3437 0f18 A047     		blx	r4
 3438              	.LVL15:
 656:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 				P2->objct->move(P2->objct);
 3439              		.loc 1 656 0
 3440 0f1a BB69     		ldr	r3, [r7, #24]
 3441 0f1c 1B68     		ldr	r3, [r3]
 3442 0f1e DA69     		ldr	r2, [r3, #28]
 3443 0f20 BB69     		ldr	r3, [r7, #24]
 3444 0f22 1B68     		ldr	r3, [r3]
 3445 0f24 1800     		movs	r0, r3
 3446 0f26 9047     		blx	r2
 3447              	.LVL16:
 657:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 				break;
 3448              		.loc 1 657 0
 3449 0f28 10E0     		b	.L169
 3450              	.L174:
 658:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			case 9: P2->objct->set_speed(P2->objct, 0, 2);
 3451              		.loc 1 658 0
 3452 0f2a BB69     		ldr	r3, [r7, #24]
 3453 0f2c 1B68     		ldr	r3, [r3]
 3454 0f2e 1C6A     		ldr	r4, [r3, #32]
 3455 0f30 BB69     		ldr	r3, [r7, #24]
 3456 0f32 1B68     		ldr	r3, [r3]
 3457 0f34 0222     		movs	r2, #2
 3458 0f36 0021     		movs	r1, #0
 3459 0f38 1800     		movs	r0, r3
 3460 0f3a A047     		blx	r4
 3461              	.LVL17:
 659:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 				P2->objct->move(P2->objct);
 3462              		.loc 1 659 0
 3463 0f3c BB69     		ldr	r3, [r7, #24]
 3464 0f3e 1B68     		ldr	r3, [r3]
 3465 0f40 DA69     		ldr	r2, [r3, #28]
 3466 0f42 BB69     		ldr	r3, [r7, #24]
 3467 0f44 1B68     		ldr	r3, [r3]
 3468 0f46 1800     		movs	r0, r3
 3469 0f48 9047     		blx	r2
 3470              	.LVL18:
 660:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 				break;
 3471              		.loc 1 660 0
 3472 0f4a C046     		nop
 3473              	.L169:
 661:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		}
 662:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		if(P1->points >= WinPoints||P2->points >= WinPoints){ //Om någon har nåt poängen för att vinn
 3474              		.loc 1 662 0
 3475 0f4c FB69     		ldr	r3, [r7, #28]
 3476 0f4e 5B68     		ldr	r3, [r3, #4]
 3477 0f50 082B     		cmp	r3, #8
 3478 0f52 03DC     		bgt	.L175
 3479              		.loc 1 662 0 is_stmt 0 discriminator 1
 3480 0f54 BB69     		ldr	r3, [r7, #24]
 3481 0f56 5B68     		ldr	r3, [r3, #4]
 3482 0f58 082B     		cmp	r3, #8
 3483 0f5a 96DD     		ble	.L181
 3484              	.L175:
 3485              	.LBB9:
 663:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			char press[] = "Press 5 to restart";
 3486              		.loc 1 663 0 is_stmt 1
 3487 0f5c 3B00     		movs	r3, r7
 3488 0f5e 2E4A     		ldr	r2, .L182+12
 3489 0f60 13CA     		ldmia	r2!, {r0, r1, r4}
 3490 0f62 13C3     		stmia	r3!, {r0, r1, r4}
 3491 0f64 1168     		ldr	r1, [r2]
 3492 0f66 1960     		str	r1, [r3]
 3493 0f68 9188     		ldrh	r1, [r2, #4]
 3494 0f6a 9980     		strh	r1, [r3, #4]
 3495 0f6c 9279     		ldrb	r2, [r2, #6]
 3496 0f6e 9A71     		strb	r2, [r3, #6]
 664:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			char restart = 1; //sätt restart variabeln till 1
 3497              		.loc 1 664 0
 3498 0f70 2723     		movs	r3, #39
 3499 0f72 FB18     		adds	r3, r7, r3
 3500 0f74 0122     		movs	r2, #1
 3501 0f76 1A70     		strb	r2, [r3]
 665:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			if(P1->points >= WinPoints){ // Om player 1 har vunnit sätt Ascii displayerna till Player1 Wins
 3502              		.loc 1 665 0
 3503 0f78 FB69     		ldr	r3, [r7, #28]
 3504 0f7a 5B68     		ldr	r3, [r3, #4]
 3505 0f7c 082B     		cmp	r3, #8
 3506 0f7e 10DD     		ble	.L177
 666:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 				ascii_clear_dsplay();
 3507              		.loc 1 666 0
 3508 0f80 FFF7FEFF 		bl	ascii_clear_dsplay
 667:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 				print_to_ascii(Player1.winMsg, -1, 1);
 3509              		.loc 1 667 0
 3510 0f84 0123     		movs	r3, #1
 3511 0f86 5942     		rsbs	r1, r3, #0
 3512 0f88 244B     		ldr	r3, .L182+16
 3513 0f8a 0122     		movs	r2, #1
 3514 0f8c 1800     		movs	r0, r3
 3515 0f8e FFF7FEFF 		bl	print_to_ascii
 668:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 				print_to_ascii(press, -1, 2);
 3516              		.loc 1 668 0
 3517 0f92 0123     		movs	r3, #1
 3518 0f94 5942     		rsbs	r1, r3, #0
 3519 0f96 3B00     		movs	r3, r7
 3520 0f98 0222     		movs	r2, #2
 3521 0f9a 1800     		movs	r0, r3
 3522 0f9c FFF7FEFF 		bl	print_to_ascii
 3523 0fa0 2DE0     		b	.L179
 3524              	.L177:
 669:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 
 670:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			}
 671:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			else if(P2->points >= WinPoints){ // Om player 2 har vunnit sätt Ascii displayerna till Player2
 3525              		.loc 1 671 0
 3526 0fa2 BB69     		ldr	r3, [r7, #24]
 3527 0fa4 5B68     		ldr	r3, [r3, #4]
 3528 0fa6 082B     		cmp	r3, #8
 3529 0fa8 29DD     		ble	.L179
 672:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			ascii_clear_dsplay();
 3530              		.loc 1 672 0
 3531 0faa FFF7FEFF 		bl	ascii_clear_dsplay
 673:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			print_to_ascii(Player2.winMsg, -1, 1);
 3532              		.loc 1 673 0
 3533 0fae 0123     		movs	r3, #1
 3534 0fb0 5942     		rsbs	r1, r3, #0
 3535 0fb2 1B4B     		ldr	r3, .L182+20
 3536 0fb4 0122     		movs	r2, #1
 3537 0fb6 1800     		movs	r0, r3
 3538 0fb8 FFF7FEFF 		bl	print_to_ascii
 674:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			print_to_ascii(press, -1, 2);
 3539              		.loc 1 674 0
 3540 0fbc 0123     		movs	r3, #1
 3541 0fbe 5942     		rsbs	r1, r3, #0
 3542 0fc0 3B00     		movs	r3, r7
 3543 0fc2 0222     		movs	r2, #2
 3544 0fc4 1800     		movs	r0, r3
 3545 0fc6 FFF7FEFF 		bl	print_to_ascii
 675:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			}
 676:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 			while(restart){ //Så länge inte knapp 5 på Keypaden har tryckts så står är spelet låst
 3546              		.loc 1 676 0
 3547 0fca 18E0     		b	.L179
 3548              	.L180:
 3549              	.LBB10:
 677:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 				char button = keyb(); //reads the keyboard.
 3550              		.loc 1 677 0
 3551 0fcc 1625     		movs	r5, #22
 3552 0fce 7C19     		adds	r4, r7, r5
 3553 0fd0 FFF7FEFF 		bl	keyb
 3554 0fd4 0300     		movs	r3, r0
 3555 0fd6 2370     		strb	r3, [r4]
 3556 0fd8 2722     		movs	r2, #39
 3557 0fda BB18     		adds	r3, r7, r2
 3558 0fdc BA18     		adds	r2, r7, r2
 3559 0fde 1278     		ldrb	r2, [r2]
 3560 0fe0 1A70     		strb	r2, [r3]
 678:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 				if(button == 5){
 3561              		.loc 1 678 0
 3562 0fe2 7B19     		adds	r3, r7, r5
 3563 0fe4 1B78     		ldrb	r3, [r3]
 3564 0fe6 052B     		cmp	r3, #5
 3565 0fe8 09D1     		bne	.L179
 679:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 					game_init(BALL, P1, P2); // startar om spelet
 3566              		.loc 1 679 0
 3567 0fea BA69     		ldr	r2, [r7, #24]
 3568 0fec F969     		ldr	r1, [r7, #28]
 3569 0fee 3B6A     		ldr	r3, [r7, #32]
 3570 0ff0 1800     		movs	r0, r3
 3571 0ff2 FFF7FEFF 		bl	game_init
 680:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 					restart = 0; //Set restar to 0.
 3572              		.loc 1 680 0
 3573 0ff6 2723     		movs	r3, #39
 3574 0ff8 FB18     		adds	r3, r7, r3
 3575 0ffa 0022     		movs	r2, #0
 3576 0ffc 1A70     		strb	r2, [r3]
 3577              	.L179:
 3578              	.LBE10:
 676:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 				char button = keyb(); //reads the keyboard.
 3579              		.loc 1 676 0
 3580 0ffe 2723     		movs	r3, #39
 3581 1000 FB18     		adds	r3, r7, r3
 3582 1002 1B78     		ldrb	r3, [r3]
 3583 1004 002B     		cmp	r3, #0
 3584 1006 E1D1     		bne	.L180
 3585              	.LBE9:
 645:C:/Users/daandre/Downloads/dat017-master (4)/dat017-master/PONG\pong.c **** 		delay_milli(10);
 3586              		.loc 1 645 0 discriminator 1
 3587 1008 3FE7     		b	.L181
 3588              	.L183:
 3589 100a C046     		.align	2
 3590              	.L182:
 3591 100c C8000000 		.word	ball
 3592 1010 F4000000 		.word	Player1
 3593 1014 14010000 		.word	Player2
 3594 1018 34000000 		.word	.LC15
 3595 101c 06010000 		.word	Player1+18
 3596 1020 26010000 		.word	Player2+18
 3597              		.cfi_endproc
 3598              	.LFE42:
 3600              	.Letext0:
