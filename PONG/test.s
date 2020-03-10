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
  25              		.file 1 "C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG/pong.c"
   1:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** /*
   2:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c ****  * 	startup.c
   3:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c ****  *
   4:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c ****  */
   5:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   6:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
   7:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void startup ( void )
   8:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** {
  26              		.loc 1 8 1
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
   9:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** __asm volatile(
  31              		.loc 1 9 1
  32              		.syntax divided
  33              	@ 9 "C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG/pong.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  10:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  11:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	" MOV SP,R0\n"
  12:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	" BL main\n"				/* call main */
  13:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	"_exit: B .\n"				/* never return */
  14:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	) ;
  15:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
  40              		.loc 1 15 1
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.global	Segcodes
  48              		.data
  49              		.align	2
  52              	Segcodes:
  53 0000 3F065B4F 		.ascii	"?\006[Ofm}\007\177ow|9^yq"
  53      666D7D07 
  53      7F6F777C 
  53      395E7971 
  54              		.global	Key
  55              		.align	2
  58              	Key:
  59 0010 0102030A 		.ascii	"\001\002\003\012\004\005\006\013\007\010\011\014\016"
  59      0405060B 
  59      0708090C 
  59      0E
  60 001d 000F0D   		.ascii	"\000\017\015"
  61              		.comm	AsciiOutPrint,4,4
  62              		.global	ball_geometry
  63              		.align	2
  66              	ball_geometry:
  67 0020 0C000000 		.word	12
  68 0024 04000000 		.word	4
  69 0028 04000000 		.word	4
  70 002c 00       		.byte	0
  71 002d 01       		.byte	1
  72 002e 00       		.byte	0
  73 002f 02       		.byte	2
  74 0030 01       		.byte	1
  75 0031 00       		.byte	0
  76 0032 01       		.byte	1
  77 0033 01       		.byte	1
  78 0034 01       		.byte	1
  79 0035 02       		.byte	2
  80 0036 01       		.byte	1
  81 0037 03       		.byte	3
  82 0038 02       		.byte	2
  83 0039 00       		.byte	0
  84 003a 02       		.byte	2
  85 003b 01       		.byte	1
  86 003c 02       		.byte	2
  87 003d 02       		.byte	2
  88 003e 02       		.byte	2
  89 003f 03       		.byte	3
  90 0040 03       		.byte	3
  91 0041 01       		.byte	1
  92 0042 03       		.byte	3
  93 0043 02       		.byte	2
  94 0044 00000000 		.space	4
  95              		.global	bouncer_geometry
  96              		.align	2
  99              	bouncer_geometry:
 100 0048 0E000000 		.word	14
 101 004c 02000000 		.word	2
 102 0050 06000000 		.word	6
 103 0054 00       		.byte	0
 104 0055 00       		.byte	0
 105 0056 01       		.byte	1
 106 0057 00       		.byte	0
 107 0058 00       		.byte	0
 108 0059 01       		.byte	1
 109 005a 01       		.byte	1
 110 005b 01       		.byte	1
 111 005c 00       		.byte	0
 112 005d 02       		.byte	2
 113 005e 01       		.byte	1
 114 005f 02       		.byte	2
 115 0060 00       		.byte	0
 116 0061 03       		.byte	3
 117 0062 01       		.byte	1
 118 0063 03       		.byte	3
 119 0064 00       		.byte	0
 120 0065 04       		.byte	4
 121 0066 01       		.byte	1
 122 0067 04       		.byte	4
 123 0068 00       		.byte	0
 124 0069 05       		.byte	5
 125 006a 01       		.byte	1
 126 006b 05       		.byte	5
 127 006c 00       		.byte	0
 128 006d 06       		.byte	6
 129 006e 01       		.byte	1
 130 006f 06       		.byte	6
 131              		.align	2
 134              	left_bouncer:
 135 0070 00000000 		.word	bouncer_geometry
 136 0074 00000000 		.word	0
 137 0078 00000000 		.word	0
 138 007c 0F000000 		.word	15
 139 0080 20000000 		.word	32
 140 0084 00000000 		.word	draw_object
 141 0088 00000000 		.word	clear_object
 142 008c 00000000 		.word	move_bouncer
 143 0090 00000000 		.word	set_object_speed
 144 0094 00000000 		.word	set_pos
 145 0098 00000000 		.space	4
 146              		.align	2
 149              	right_bouncer:
 150 009c 00000000 		.word	bouncer_geometry
 151 00a0 00000000 		.word	0
 152 00a4 00000000 		.word	0
 153 00a8 71000000 		.word	113
 154 00ac 20000000 		.word	32
 155 00b0 00000000 		.word	draw_object
 156 00b4 00000000 		.word	clear_object
 157 00b8 00000000 		.word	move_bouncer
 158 00bc 00000000 		.word	set_object_speed
 159 00c0 00000000 		.word	set_pos
 160 00c4 00000000 		.space	4
 161              		.align	2
 164              	ball:
 165 00c8 00000000 		.word	ball_geometry
 166 00cc 00000000 		.word	0
 167 00d0 00000000 		.word	0
 168 00d4 40000000 		.word	64
 169 00d8 20000000 		.word	32
 170 00dc 00000000 		.word	draw_object
 171 00e0 00000000 		.word	clear_object
 172 00e4 00000000 		.word	move_ball
 173 00e8 00000000 		.word	set_object_speed
 174 00ec 00000000 		.word	set_pos
 175 00f0 00000000 		.word	check_ball_collision
 176              		.align	2
 179              	Player1:
 180 00f4 70000000 		.word	left_bouncer
 181 00f8 00000000 		.word	0
 182 00fc 706C6179 		.ascii	"player1: \000"
 182      6572313A 
 182      2000
 183 0106 506C6179 		.ascii	"Player1 wins"
 183      65723120 
 183      77696E73 
 184 0112 0000     		.space	2
 185              		.align	2
 188              	Player2:
 189 0114 9C000000 		.word	right_bouncer
 190 0118 00000000 		.word	0
 191 011c 506C6179 		.ascii	"Player2: \000"
 191      6572323A 
 191      2000
 192 0126 504C6179 		.ascii	"PLayer2 wins"
 192      65723220 
 192      77696E73 
 193 0132 0000     		.space	2
 194              		.text
 195              		.align	1
 196              		.syntax unified
 197              		.code	16
 198              		.thumb_func
 199              		.fpu softvfp
 201              	graphic_ctrl_bit_set:
 202              	.LFB1:
  16:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** typedef unsigned int uint32_t;
  17:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** typedef unsigned short int uint16_t;
  18:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** typedef unsigned char uint8_t;
  19:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
  20:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** typedef struct GPIO { // Struct för GPIO Portar
  21:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	uint32_t	moder;
  22:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	uint16_t	otyper;
  23:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	uint16_t	otReserved;
  24:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	uint32_t	oSpeedr;
  25:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	uint32_t	pupdr;
  26:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	uint8_t		idr_low;
  27:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	uint8_t		idr_high;
  28:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	uint16_t	idr_reserved;
  29:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	uint8_t		odr_low;
  30:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	uint8_t		odr_high;
  31:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	uint16_t	odr_reserved;
  32:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	
  33:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** } GPIO;
  34:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** typedef volatile GPIO* gpioptr;
  35:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
  36:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** #define GPIO_E (*((gpioptr)0x40021000))
  37:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** #define GPIO_D (*((gpioptr)0x40020C00))
  38:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
  39:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** #define SysTick 0xE000E010
  40:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** #define STK_CTRL ((volatile unsigned int*) (SysTick))
  41:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** #define STK_LOAD ((volatile unsigned int*) (SysTick + 0x4))
  42:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** #define STK_VAL ((volatile unsigned int*) (SysTick + 0x8))
  43:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
  44:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** #define B_E 0x40 // Enable
  45:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** #define B_RST 0x20 // Reset
  46:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** #define B_CS2 0x10 // Controller Select 2
  47:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** #define B_CS1 8 // Controller Select 1
  48:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** #define B_SELECT 4 // 0 Graphics, 1 ASCII
  49:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** #define B_RW 2 // 0 Write, 1 Read
  50:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** #define B_RS 1 // 0 Command, 1 Data
  51:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
  52:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** #define LCD_ON 0x3F // Display on
  53:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** #define LCD_OFF 0x3E // Display off
  54:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** #define LCD_SET_ADD 0x40 // Set horizontal coordinate
  55:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** #define LCD_SET_PAGE 0xB8 // Set vertical coordinate
  56:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** #define LCD_DISP_START 0xC0 // Start address
  57:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** #define LCD_BUSY 0x80 // Read busy status
  58:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
  59:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** #define LCD_WIDTH 128 //LC skärmens bredd
  60:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** #define LCD_HEIGHT 64 //LC skärmens höjd
  61:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** #define MAX_POINTS 14 //max antal punkter som en Geometry får ha.
  62:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
  63:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** #define SIMULATOR //Om man kör i labbsystemet kommentera ut hela raden.
  64:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** #define WinPoints 9 //Poängen man ska få för att vinna.
  65:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
  66:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
  67:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** unsigned char Segcodes[16] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7
  68:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** unsigned char Key[16]  = {1,2,3,0xA, 4, 5, 6 , 0xB, 7, 8, 9, 0xC, 0xE, 0, 0xF, 0xD};
  69:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** char *AsciiOutPrint; //Pekaren som i Print_To_Ascii
  70:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
  71:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** // Structs
  72:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** typedef struct tpoint{
  73:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	unsigned char x;
  74:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	unsigned char y;
  75:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }POINT;
  76:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** typedef struct tGeometry{
  77:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	int numPoints;
  78:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	int sizeX;
  79:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	int sizeY;
  80:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	POINT px[MAX_POINTS];
  81:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }GEOMETRY, *PGEOMETRY;
  82:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** typedef struct tObj{
  83:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	PGEOMETRY geo;
  84:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	int dirx,diry;
  85:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	int posx,posy;
  86:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	void (*draw)(struct tobj*);
  87:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	void (*clear)(struct tobj*);
  88:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	void (*move)(struct tobj*);
  89:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	void (*set_speed)(struct tobj*, int, int);
  90:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	void (*set_pos)(struct tobj*, int, int);
  91:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	void (*check_ball_collision)(struct tobj*);
  92:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }OBJECT, *POBJECT;
  93:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** typedef struct tPlayer{ //Spelar Structen
  94:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	POBJECT objct;
  95:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	int points;
  96:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	char PAscii[10];
  97:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	char winMsg[12];
  98:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
  99:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	
 100:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }PLAYER, *PPLAYER;
 101:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
 102:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
 103:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** //Funktions declarationer
 104:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void graphic_initialize(void);
 105:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** static void graphic_write_command(uint8_t command, uint8_t controller);
 106:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** static void graphic_write_data(uint8_t data, uint8_t controller);
 107:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** static void graphic_write(uint8_t value, uint8_t controller);
 108:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** static void graphic_ctrl_bit_clear(uint8_t x);
 109:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void move_bouncer(POBJECT O);
 110:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void move_ball(POBJECT O);
 111:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void clear_object(POBJECT O);
 112:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void draw_object(POBJECT O);
 113:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void set_object_speed(POBJECT O, int speedx, int speedy);
 114:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void set_pos(POBJECT O, int x, int y);
 115:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** unsigned char ascii_read_status(void);
 116:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void ascii_write_CMD(unsigned char command);
 117:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void check_ball_collision(POBJECT O);
 118:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
 119:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** GEOMETRY ball_geometry ={
 120:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.numPoints = 12,
 121:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.sizeX = 4,
 122:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.sizeY = 4,
 123:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	{
 124:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		/* px[0,1,2 ....] */
 125:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		{0,1}, {0,2}, {1,0}, {1,1}, {1,2},
 126:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		{1,3}, {2,0}, {2,1}, {2,2}, {2,3},
 127:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		{3,1}, {3,2}
 128:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 129:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** };
 130:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** GEOMETRY bouncer_geometry={
 131:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.numPoints = 14,
 132:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.sizeX = 2,
 133:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.sizeY = 6,
 134:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	{
 135:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		{0,0},{1,0},
 136:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		{0,1},{1,1},
 137:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		{0,2},{1,2},
 138:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		{0,3},{1,3},
 139:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		{0,4},{1,4},
 140:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		{0,5},{1,5},
 141:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		{0,6},{1,6}
 142:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 143:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** };
 144:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** static OBJECT left_bouncer ={ // Den vänstra "pinnen".
 145:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.geo = &bouncer_geometry,
 146:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.dirx = 0,
 147:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.diry = 0,
 148:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.posx = 15,
 149:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.posy = LCD_HEIGHT/2,
 150:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	draw_object,
 151:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	clear_object,
 152:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	move_bouncer,
 153:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	set_object_speed,
 154:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	set_pos,
 155:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** };
 156:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** static OBJECT right_bouncer ={ //Den högra "pinnen".
 157:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.geo = &bouncer_geometry,
 158:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.dirx = 0,
 159:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.diry = 0,
 160:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.posx = LCD_WIDTH-15,
 161:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.posy = LCD_HEIGHT/2,
 162:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	draw_object,
 163:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	clear_object,
 164:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	move_bouncer,
 165:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	set_object_speed,
 166:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	set_pos,
 167:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** };
 168:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
 169:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** static OBJECT ball = {
 170:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.geo = &ball_geometry,
 171:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.dirx = 0,
 172:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.diry = 0,
 173:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.posx = LCD_WIDTH/2,
 174:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.posy = LCD_HEIGHT/2,
 175:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	draw_object,
 176:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	clear_object,
 177:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	move_ball,
 178:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	set_object_speed,
 179:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	set_pos,
 180:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	check_ball_collision,
 181:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** };
 182:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** static PLAYER Player1 = { //Spelare 1
 183:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.objct = &left_bouncer,
 184:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.points = 0, //P1:s poäng.
 185:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.PAscii = "player1: ",
 186:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.winMsg = "Player1 wins"
 187:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** };
 188:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** static PLAYER Player2= { //Spelare 2
 189:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.objct = &right_bouncer,
 190:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.points = 0, //P2:s poäng.
 191:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.PAscii = "Player2: ",
 192:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	.winMsg = "PLayer2 wins",
 193:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** };
 194:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
 195:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** //                      Functions
 196:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** // LCD functions
 197:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** static void graphic_ctrl_bit_set(uint8_t x) {
 203              		.loc 1 197 45
 204              		.cfi_startproc
 205              		@ args = 0, pretend = 0, frame = 16
 206              		@ frame_needed = 1, uses_anonymous_args = 0
 207 0000 80B5     		push	{r7, lr}
 208              		.cfi_def_cfa_offset 8
 209              		.cfi_offset 7, -8
 210              		.cfi_offset 14, -4
 211 0002 84B0     		sub	sp, sp, #16
 212              		.cfi_def_cfa_offset 24
 213 0004 00AF     		add	r7, sp, #0
 214              		.cfi_def_cfa_register 7
 215 0006 0200     		movs	r2, r0
 216 0008 FB1D     		adds	r3, r7, #7
 217 000a 1A70     		strb	r2, [r3]
 198:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** uint8_t c;
 199:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** c = GPIO_E.odr_low;
 218              		.loc 1 199 5
 219 000c 0F4A     		ldr	r2, .L3
 220              		.loc 1 199 3
 221 000e 0F20     		movs	r0, #15
 222 0010 3B18     		adds	r3, r7, r0
 223 0012 127D     		ldrb	r2, [r2, #20]
 224 0014 1A70     		strb	r2, [r3]
 200:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** c &= ~B_SELECT;
 225              		.loc 1 200 3
 226 0016 3B18     		adds	r3, r7, r0
 227 0018 3A18     		adds	r2, r7, r0
 228 001a 1278     		ldrb	r2, [r2]
 229 001c 0421     		movs	r1, #4
 230 001e 8A43     		bics	r2, r1
 231 0020 1A70     		strb	r2, [r3]
 201:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** c |= (~B_SELECT & x);
 232              		.loc 1 201 17
 233 0022 FB1D     		adds	r3, r7, #7
 234 0024 1B78     		ldrb	r3, [r3]
 235 0026 5BB2     		sxtb	r3, r3
 236 0028 0422     		movs	r2, #4
 237 002a 9343     		bics	r3, r2
 238 002c 5AB2     		sxtb	r2, r3
 239              		.loc 1 201 3
 240 002e 3B18     		adds	r3, r7, r0
 241 0030 1B78     		ldrb	r3, [r3]
 242 0032 5BB2     		sxtb	r3, r3
 243 0034 1343     		orrs	r3, r2
 244 0036 5AB2     		sxtb	r2, r3
 245 0038 3B18     		adds	r3, r7, r0
 246 003a 1A70     		strb	r2, [r3]
 202:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** GPIO_E.odr_low = c;
 247              		.loc 1 202 1
 248 003c 034A     		ldr	r2, .L3
 249              		.loc 1 202 16
 250 003e 3B18     		adds	r3, r7, r0
 251 0040 1B78     		ldrb	r3, [r3]
 252 0042 1375     		strb	r3, [r2, #20]
 203:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 253              		.loc 1 203 1
 254 0044 C046     		nop
 255 0046 BD46     		mov	sp, r7
 256 0048 04B0     		add	sp, sp, #16
 257              		@ sp needed
 258 004a 80BD     		pop	{r7, pc}
 259              	.L4:
 260              		.align	2
 261              	.L3:
 262 004c 00100240 		.word	1073876992
 263              		.cfi_endproc
 264              	.LFE1:
 266              		.align	1
 267              		.syntax unified
 268              		.code	16
 269              		.thumb_func
 270              		.fpu softvfp
 272              	graphic_ctrl_bit_clear:
 273              	.LFB2:
 204:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** static void graphic_ctrl_bit_clear(uint8_t x) {
 274              		.loc 1 204 47
 275              		.cfi_startproc
 276              		@ args = 0, pretend = 0, frame = 16
 277              		@ frame_needed = 1, uses_anonymous_args = 0
 278 0050 80B5     		push	{r7, lr}
 279              		.cfi_def_cfa_offset 8
 280              		.cfi_offset 7, -8
 281              		.cfi_offset 14, -4
 282 0052 84B0     		sub	sp, sp, #16
 283              		.cfi_def_cfa_offset 24
 284 0054 00AF     		add	r7, sp, #0
 285              		.cfi_def_cfa_register 7
 286 0056 0200     		movs	r2, r0
 287 0058 FB1D     		adds	r3, r7, #7
 288 005a 1A70     		strb	r2, [r3]
 205:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** uint8_t c;
 206:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** c = GPIO_E.odr_low;
 289              		.loc 1 206 5
 290 005c 0F4A     		ldr	r2, .L6
 291              		.loc 1 206 3
 292 005e 0F20     		movs	r0, #15
 293 0060 3B18     		adds	r3, r7, r0
 294 0062 127D     		ldrb	r2, [r2, #20]
 295 0064 1A70     		strb	r2, [r3]
 207:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** c &= ~B_SELECT;
 296              		.loc 1 207 3
 297 0066 3B18     		adds	r3, r7, r0
 298 0068 3A18     		adds	r2, r7, r0
 299 006a 1278     		ldrb	r2, [r2]
 300 006c 0421     		movs	r1, #4
 301 006e 8A43     		bics	r2, r1
 302 0070 1A70     		strb	r2, [r3]
 208:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** c &= ~x;
 303              		.loc 1 208 3
 304 0072 FB1D     		adds	r3, r7, #7
 305 0074 1B78     		ldrb	r3, [r3]
 306 0076 5BB2     		sxtb	r3, r3
 307 0078 DB43     		mvns	r3, r3
 308 007a 5BB2     		sxtb	r3, r3
 309 007c 3A18     		adds	r2, r7, r0
 310 007e 1278     		ldrb	r2, [r2]
 311 0080 52B2     		sxtb	r2, r2
 312 0082 1340     		ands	r3, r2
 313 0084 5AB2     		sxtb	r2, r3
 314 0086 3B18     		adds	r3, r7, r0
 315 0088 1A70     		strb	r2, [r3]
 209:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** GPIO_E.odr_low = c;
 316              		.loc 1 209 1
 317 008a 044A     		ldr	r2, .L6
 318              		.loc 1 209 16
 319 008c 3B18     		adds	r3, r7, r0
 320 008e 1B78     		ldrb	r3, [r3]
 321 0090 1375     		strb	r3, [r2, #20]
 210:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 322              		.loc 1 210 1
 323 0092 C046     		nop
 324 0094 BD46     		mov	sp, r7
 325 0096 04B0     		add	sp, sp, #16
 326              		@ sp needed
 327 0098 80BD     		pop	{r7, pc}
 328              	.L7:
 329 009a C046     		.align	2
 330              	.L6:
 331 009c 00100240 		.word	1073876992
 332              		.cfi_endproc
 333              	.LFE2:
 335              		.align	1
 336              		.syntax unified
 337              		.code	16
 338              		.thumb_func
 339              		.fpu softvfp
 341              	select_controller:
 342              	.LFB3:
 211:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** static void select_controller(uint8_t controller){
 343              		.loc 1 211 50
 344              		.cfi_startproc
 345              		@ args = 0, pretend = 0, frame = 8
 346              		@ frame_needed = 1, uses_anonymous_args = 0
 347 00a0 80B5     		push	{r7, lr}
 348              		.cfi_def_cfa_offset 8
 349              		.cfi_offset 7, -8
 350              		.cfi_offset 14, -4
 351 00a2 82B0     		sub	sp, sp, #8
 352              		.cfi_def_cfa_offset 16
 353 00a4 00AF     		add	r7, sp, #0
 354              		.cfi_def_cfa_register 7
 355 00a6 0200     		movs	r2, r0
 356 00a8 FB1D     		adds	r3, r7, #7
 357 00aa 1A70     		strb	r2, [r3]
 212:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	switch(controller){
 358              		.loc 1 212 2
 359 00ac FB1D     		adds	r3, r7, #7
 360 00ae 1B78     		ldrb	r3, [r3]
 361 00b0 182B     		cmp	r3, #24
 362 00b2 1AD0     		beq	.L9
 363 00b4 1DDC     		bgt	.L14
 364 00b6 102B     		cmp	r3, #16
 365 00b8 10D0     		beq	.L11
 366 00ba 1ADC     		bgt	.L14
 367 00bc 002B     		cmp	r3, #0
 368 00be 02D0     		beq	.L12
 369 00c0 082B     		cmp	r3, #8
 370 00c2 04D0     		beq	.L13
 213:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		case 0:
 214:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			graphic_ctrl_bit_clear(B_CS1|B_CS2);
 215:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			break;
 216:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		case B_CS1 :
 217:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			graphic_ctrl_bit_set(B_CS1);
 218:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			graphic_ctrl_bit_clear(B_CS2);
 219:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			break;
 220:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		case B_CS2 :
 221:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			graphic_ctrl_bit_set(B_CS2);
 222:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			graphic_ctrl_bit_clear(B_CS1);
 223:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			break;
 224:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		case B_CS1|B_CS2 :
 225:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			graphic_ctrl_bit_set(B_CS1|B_CS2);
 226:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			break;
 227:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 228:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 371              		.loc 1 228 1
 372 00c4 15E0     		b	.L14
 373              	.L12:
 214:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			break;
 374              		.loc 1 214 4
 375 00c6 1820     		movs	r0, #24
 376 00c8 FFF7C2FF 		bl	graphic_ctrl_bit_clear
 215:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		case B_CS1 :
 377              		.loc 1 215 4
 378 00cc 11E0     		b	.L10
 379              	.L13:
 217:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			graphic_ctrl_bit_clear(B_CS2);
 380              		.loc 1 217 4
 381 00ce 0820     		movs	r0, #8
 382 00d0 FFF796FF 		bl	graphic_ctrl_bit_set
 218:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			break;
 383              		.loc 1 218 4
 384 00d4 1020     		movs	r0, #16
 385 00d6 FFF7BBFF 		bl	graphic_ctrl_bit_clear
 219:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		case B_CS2 :
 386              		.loc 1 219 4
 387 00da 0AE0     		b	.L10
 388              	.L11:
 221:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			graphic_ctrl_bit_clear(B_CS1);
 389              		.loc 1 221 4
 390 00dc 1020     		movs	r0, #16
 391 00de FFF78FFF 		bl	graphic_ctrl_bit_set
 222:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			break;
 392              		.loc 1 222 4
 393 00e2 0820     		movs	r0, #8
 394 00e4 FFF7B4FF 		bl	graphic_ctrl_bit_clear
 223:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		case B_CS1|B_CS2 :
 395              		.loc 1 223 4
 396 00e8 03E0     		b	.L10
 397              	.L9:
 225:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			break;
 398              		.loc 1 225 4
 399 00ea 1820     		movs	r0, #24
 400 00ec FFF788FF 		bl	graphic_ctrl_bit_set
 226:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 401              		.loc 1 226 4
 402 00f0 C046     		nop
 403              	.L10:
 404              	.L14:
 405              		.loc 1 228 1
 406 00f2 C046     		nop
 407 00f4 BD46     		mov	sp, r7
 408 00f6 02B0     		add	sp, sp, #8
 409              		@ sp needed
 410 00f8 80BD     		pop	{r7, pc}
 411              		.cfi_endproc
 412              	.LFE3:
 414              		.align	1
 415              		.global	graphic_initialize
 416              		.syntax unified
 417              		.code	16
 418              		.thumb_func
 419              		.fpu softvfp
 421              	graphic_initialize:
 422              	.LFB4:
 229:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void graphic_initialize(void) {
 423              		.loc 1 229 31
 424              		.cfi_startproc
 425              		@ args = 0, pretend = 0, frame = 0
 426              		@ frame_needed = 1, uses_anonymous_args = 0
 427 00fa 80B5     		push	{r7, lr}
 428              		.cfi_def_cfa_offset 8
 429              		.cfi_offset 7, -8
 430              		.cfi_offset 14, -4
 431 00fc 00AF     		add	r7, sp, #0
 432              		.cfi_def_cfa_register 7
 230:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_set(B_E);
 433              		.loc 1 230 2
 434 00fe 4020     		movs	r0, #64
 435 0100 FFF77EFF 		bl	graphic_ctrl_bit_set
 231:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	delay_mikro(10);
 436              		.loc 1 231 2
 437 0104 0A20     		movs	r0, #10
 438 0106 FFF7FEFF 		bl	delay_mikro
 232:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_CS1|B_CS2|B_RST|B_E);
 439              		.loc 1 232 2
 440 010a 7820     		movs	r0, #120
 441 010c FFF7A0FF 		bl	graphic_ctrl_bit_clear
 233:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	delay_milli(30);
 442              		.loc 1 233 2
 443 0110 1E20     		movs	r0, #30
 444 0112 FFF7FEFF 		bl	delay_milli
 234:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_set(B_RST);
 445              		.loc 1 234 2
 446 0116 2020     		movs	r0, #32
 447 0118 FFF772FF 		bl	graphic_ctrl_bit_set
 235:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	delay_milli(100);
 448              		.loc 1 235 2
 449 011c 6420     		movs	r0, #100
 450 011e FFF7FEFF 		bl	delay_milli
 236:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	graphic_write_command(LCD_OFF, B_CS1|B_CS2);
 451              		.loc 1 236 2
 452 0122 1821     		movs	r1, #24
 453 0124 3E20     		movs	r0, #62
 454 0126 00F0DFF8 		bl	graphic_write_command
 237:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	graphic_write_command(LCD_ON, B_CS1|B_CS2);
 455              		.loc 1 237 2
 456 012a 1821     		movs	r1, #24
 457 012c 3F20     		movs	r0, #63
 458 012e 00F0DBF8 		bl	graphic_write_command
 238:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	graphic_write_command(LCD_DISP_START, B_CS1|B_CS2);
 459              		.loc 1 238 2
 460 0132 1821     		movs	r1, #24
 461 0134 C020     		movs	r0, #192
 462 0136 00F0D7F8 		bl	graphic_write_command
 239:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	graphic_write_command(LCD_SET_ADD, B_CS1|B_CS2);
 463              		.loc 1 239 2
 464 013a 1821     		movs	r1, #24
 465 013c 4020     		movs	r0, #64
 466 013e 00F0D3F8 		bl	graphic_write_command
 240:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	graphic_write_command(LCD_SET_PAGE, B_CS1|B_CS2);
 467              		.loc 1 240 2
 468 0142 1821     		movs	r1, #24
 469 0144 B820     		movs	r0, #184
 470 0146 00F0CFF8 		bl	graphic_write_command
 241:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	select_controller(0);
 471              		.loc 1 241 2
 472 014a 0020     		movs	r0, #0
 473 014c FFF7A8FF 		bl	select_controller
 242:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 474              		.loc 1 242 1
 475 0150 C046     		nop
 476 0152 BD46     		mov	sp, r7
 477              		@ sp needed
 478 0154 80BD     		pop	{r7, pc}
 479              		.cfi_endproc
 480              	.LFE4:
 482              		.align	1
 483              		.syntax unified
 484              		.code	16
 485              		.thumb_func
 486              		.fpu softvfp
 488              	graphic_wait_ready:
 489              	.LFB5:
 243:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** static void graphic_wait_ready(void) {
 490              		.loc 1 243 38
 491              		.cfi_startproc
 492              		@ args = 0, pretend = 0, frame = 8
 493              		@ frame_needed = 1, uses_anonymous_args = 0
 494 0156 80B5     		push	{r7, lr}
 495              		.cfi_def_cfa_offset 8
 496              		.cfi_offset 7, -8
 497              		.cfi_offset 14, -4
 498 0158 82B0     		sub	sp, sp, #8
 499              		.cfi_def_cfa_offset 16
 500 015a 00AF     		add	r7, sp, #0
 501              		.cfi_def_cfa_register 7
 244:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	uint8_t c;
 245:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_E);
 502              		.loc 1 245 2
 503 015c 4020     		movs	r0, #64
 504 015e FFF777FF 		bl	graphic_ctrl_bit_clear
 246:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	GPIO_E.moder = 0x00005555; // 15-8 inputs, 7-0 outputs
 505              		.loc 1 246 2
 506 0162 144B     		ldr	r3, .L22
 507              		.loc 1 246 15
 508 0164 144A     		ldr	r2, .L22+4
 509 0166 1A60     		str	r2, [r3]
 247:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_RS);
 510              		.loc 1 247 2
 511 0168 0120     		movs	r0, #1
 512 016a FFF771FF 		bl	graphic_ctrl_bit_clear
 248:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_set(B_RW);
 513              		.loc 1 248 2
 514 016e 0220     		movs	r0, #2
 515 0170 FFF746FF 		bl	graphic_ctrl_bit_set
 249:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	delay_500ns();
 516              		.loc 1 249 2
 517 0174 FFF7FEFF 		bl	delay_500ns
 518              	.L19:
 250:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	while(1) {
 251:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		graphic_ctrl_bit_set(B_E);
 519              		.loc 1 251 3
 520 0178 4020     		movs	r0, #64
 521 017a FFF741FF 		bl	graphic_ctrl_bit_set
 252:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		delay_500ns();
 522              		.loc 1 252 3
 523 017e FFF7FEFF 		bl	delay_500ns
 253:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		c = GPIO_E.idr_high & LCD_BUSY;
 524              		.loc 1 253 7
 525 0182 0C4B     		ldr	r3, .L22
 526              		.loc 1 253 13
 527 0184 5B7C     		ldrb	r3, [r3, #17]
 528 0186 DAB2     		uxtb	r2, r3
 529              		.loc 1 253 5
 530 0188 FB1D     		adds	r3, r7, #7
 531 018a 7F21     		movs	r1, #127
 532 018c 8A43     		bics	r2, r1
 533 018e 1A70     		strb	r2, [r3]
 254:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		graphic_ctrl_bit_clear(B_E);
 534              		.loc 1 254 3
 535 0190 4020     		movs	r0, #64
 536 0192 FFF75DFF 		bl	graphic_ctrl_bit_clear
 255:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		delay_500ns();
 537              		.loc 1 255 3
 538 0196 FFF7FEFF 		bl	delay_500ns
 256:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		if( c == 0 ) break;
 539              		.loc 1 256 5
 540 019a FB1D     		adds	r3, r7, #7
 541 019c 1B78     		ldrb	r3, [r3]
 542 019e 002B     		cmp	r3, #0
 543 01a0 00D0     		beq	.L21
 251:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		delay_500ns();
 544              		.loc 1 251 3
 545 01a2 E9E7     		b	.L19
 546              	.L21:
 547              		.loc 1 256 3
 548 01a4 C046     		nop
 257:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 258:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	GPIO_E.moder = 0x55555555; // 15-0 outputs
 549              		.loc 1 258 2
 550 01a6 034B     		ldr	r3, .L22
 551              		.loc 1 258 15
 552 01a8 044A     		ldr	r2, .L22+8
 553 01aa 1A60     		str	r2, [r3]
 259:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 554              		.loc 1 259 1
 555 01ac C046     		nop
 556 01ae BD46     		mov	sp, r7
 557 01b0 02B0     		add	sp, sp, #8
 558              		@ sp needed
 559 01b2 80BD     		pop	{r7, pc}
 560              	.L23:
 561              		.align	2
 562              	.L22:
 563 01b4 00100240 		.word	1073876992
 564 01b8 55550000 		.word	21845
 565 01bc 55555555 		.word	1431655765
 566              		.cfi_endproc
 567              	.LFE5:
 569              		.align	1
 570              		.syntax unified
 571              		.code	16
 572              		.thumb_func
 573              		.fpu softvfp
 575              	graphic_read:
 576              	.LFB6:
 260:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** static uint8_t graphic_read(uint8_t controller) {
 577              		.loc 1 260 49
 578              		.cfi_startproc
 579              		@ args = 0, pretend = 0, frame = 16
 580              		@ frame_needed = 1, uses_anonymous_args = 0
 581 01c0 80B5     		push	{r7, lr}
 582              		.cfi_def_cfa_offset 8
 583              		.cfi_offset 7, -8
 584              		.cfi_offset 14, -4
 585 01c2 84B0     		sub	sp, sp, #16
 586              		.cfi_def_cfa_offset 24
 587 01c4 00AF     		add	r7, sp, #0
 588              		.cfi_def_cfa_register 7
 589 01c6 0200     		movs	r2, r0
 590 01c8 FB1D     		adds	r3, r7, #7
 591 01ca 1A70     		strb	r2, [r3]
 261:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	uint8_t c;
 262:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_E);
 592              		.loc 1 262 2
 593 01cc 4020     		movs	r0, #64
 594 01ce FFF73FFF 		bl	graphic_ctrl_bit_clear
 263:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	GPIO_E.moder = 0x00005555; // 15-8 inputs, 7-0 outputs
 595              		.loc 1 263 2
 596 01d2 1C4B     		ldr	r3, .L28
 597              		.loc 1 263 15
 598 01d4 1C4A     		ldr	r2, .L28+4
 599 01d6 1A60     		str	r2, [r3]
 264:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_set(B_RS|B_RW);
 600              		.loc 1 264 2
 601 01d8 0320     		movs	r0, #3
 602 01da FFF711FF 		bl	graphic_ctrl_bit_set
 265:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	select_controller(controller);
 603              		.loc 1 265 2
 604 01de FB1D     		adds	r3, r7, #7
 605 01e0 1B78     		ldrb	r3, [r3]
 606 01e2 1800     		movs	r0, r3
 607 01e4 FFF75CFF 		bl	select_controller
 266:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	delay_500ns();
 608              		.loc 1 266 2
 609 01e8 FFF7FEFF 		bl	delay_500ns
 267:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_set(B_E);
 610              		.loc 1 267 2
 611 01ec 4020     		movs	r0, #64
 612 01ee FFF707FF 		bl	graphic_ctrl_bit_set
 268:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	delay_500ns();
 613              		.loc 1 268 2
 614 01f2 FFF7FEFF 		bl	delay_500ns
 269:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	c = GPIO_E.idr_high;
 615              		.loc 1 269 6
 616 01f6 134A     		ldr	r2, .L28
 617              		.loc 1 269 4
 618 01f8 0F23     		movs	r3, #15
 619 01fa FB18     		adds	r3, r7, r3
 620 01fc 527C     		ldrb	r2, [r2, #17]
 621 01fe 1A70     		strb	r2, [r3]
 270:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_E);
 622              		.loc 1 270 2
 623 0200 4020     		movs	r0, #64
 624 0202 FFF725FF 		bl	graphic_ctrl_bit_clear
 271:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	GPIO_E.moder = 0x55555555; // 15-0 outputs
 625              		.loc 1 271 2
 626 0206 0F4B     		ldr	r3, .L28
 627              		.loc 1 271 15
 628 0208 104A     		ldr	r2, .L28+8
 629 020a 1A60     		str	r2, [r3]
 272:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	if( controller & B_CS1 ) {
 630              		.loc 1 272 17
 631 020c FB1D     		adds	r3, r7, #7
 632 020e 1B78     		ldrb	r3, [r3]
 633 0210 0822     		movs	r2, #8
 634 0212 1340     		ands	r3, r2
 635              		.loc 1 272 4
 636 0214 04D0     		beq	.L25
 273:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		select_controller(B_CS1);
 637              		.loc 1 273 3
 638 0216 0820     		movs	r0, #8
 639 0218 FFF742FF 		bl	select_controller
 274:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		graphic_wait_ready();
 640              		.loc 1 274 3
 641 021c FFF79BFF 		bl	graphic_wait_ready
 642              	.L25:
 275:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 276:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	if( controller & B_CS2 ) {
 643              		.loc 1 276 17
 644 0220 FB1D     		adds	r3, r7, #7
 645 0222 1B78     		ldrb	r3, [r3]
 646 0224 1022     		movs	r2, #16
 647 0226 1340     		ands	r3, r2
 648              		.loc 1 276 4
 649 0228 04D0     		beq	.L26
 277:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		select_controller(B_CS2);
 650              		.loc 1 277 3
 651 022a 1020     		movs	r0, #16
 652 022c FFF738FF 		bl	select_controller
 278:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		graphic_wait_ready();
 653              		.loc 1 278 3
 654 0230 FFF791FF 		bl	graphic_wait_ready
 655              	.L26:
 279:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 280:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** return c;
 656              		.loc 1 280 8
 657 0234 0F23     		movs	r3, #15
 658 0236 FB18     		adds	r3, r7, r3
 659 0238 1B78     		ldrb	r3, [r3]
 281:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 660              		.loc 1 281 1
 661 023a 1800     		movs	r0, r3
 662 023c BD46     		mov	sp, r7
 663 023e 04B0     		add	sp, sp, #16
 664              		@ sp needed
 665 0240 80BD     		pop	{r7, pc}
 666              	.L29:
 667 0242 C046     		.align	2
 668              	.L28:
 669 0244 00100240 		.word	1073876992
 670 0248 55550000 		.word	21845
 671 024c 55555555 		.word	1431655765
 672              		.cfi_endproc
 673              	.LFE6:
 675              		.align	1
 676              		.syntax unified
 677              		.code	16
 678              		.thumb_func
 679              		.fpu softvfp
 681              	graphic_read_data:
 682              	.LFB7:
 282:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** static uint8_t graphic_read_data(uint8_t controller) {
 683              		.loc 1 282 54
 684              		.cfi_startproc
 685              		@ args = 0, pretend = 0, frame = 8
 686              		@ frame_needed = 1, uses_anonymous_args = 0
 687 0250 80B5     		push	{r7, lr}
 688              		.cfi_def_cfa_offset 8
 689              		.cfi_offset 7, -8
 690              		.cfi_offset 14, -4
 691 0252 82B0     		sub	sp, sp, #8
 692              		.cfi_def_cfa_offset 16
 693 0254 00AF     		add	r7, sp, #0
 694              		.cfi_def_cfa_register 7
 695 0256 0200     		movs	r2, r0
 696 0258 FB1D     		adds	r3, r7, #7
 697 025a 1A70     		strb	r2, [r3]
 283:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** graphic_read(controller);
 698              		.loc 1 283 1
 699 025c FB1D     		adds	r3, r7, #7
 700 025e 1B78     		ldrb	r3, [r3]
 701 0260 1800     		movs	r0, r3
 702 0262 FFF7ADFF 		bl	graphic_read
 284:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** return graphic_read(controller);
 703              		.loc 1 284 8
 704 0266 FB1D     		adds	r3, r7, #7
 705 0268 1B78     		ldrb	r3, [r3]
 706 026a 1800     		movs	r0, r3
 707 026c FFF7A8FF 		bl	graphic_read
 708 0270 0300     		movs	r3, r0
 285:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 709              		.loc 1 285 1
 710 0272 1800     		movs	r0, r3
 711 0274 BD46     		mov	sp, r7
 712 0276 02B0     		add	sp, sp, #8
 713              		@ sp needed
 714 0278 80BD     		pop	{r7, pc}
 715              		.cfi_endproc
 716              	.LFE7:
 718              		.align	1
 719              		.syntax unified
 720              		.code	16
 721              		.thumb_func
 722              		.fpu softvfp
 724              	graphic_write:
 725              	.LFB8:
 286:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** static void graphic_write(uint8_t value, uint8_t controller) {
 726              		.loc 1 286 62
 727              		.cfi_startproc
 728              		@ args = 0, pretend = 0, frame = 8
 729              		@ frame_needed = 1, uses_anonymous_args = 0
 730 027a 80B5     		push	{r7, lr}
 731              		.cfi_def_cfa_offset 8
 732              		.cfi_offset 7, -8
 733              		.cfi_offset 14, -4
 734 027c 82B0     		sub	sp, sp, #8
 735              		.cfi_def_cfa_offset 16
 736 027e 00AF     		add	r7, sp, #0
 737              		.cfi_def_cfa_register 7
 738 0280 0200     		movs	r2, r0
 739 0282 FB1D     		adds	r3, r7, #7
 740 0284 1A70     		strb	r2, [r3]
 741 0286 BB1D     		adds	r3, r7, #6
 742 0288 0A1C     		adds	r2, r1, #0
 743 028a 1A70     		strb	r2, [r3]
 287:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	GPIO_E.odr_high = value;
 744              		.loc 1 287 2
 745 028c 154A     		ldr	r2, .L36
 746              		.loc 1 287 18
 747 028e FB1D     		adds	r3, r7, #7
 748 0290 1B78     		ldrb	r3, [r3]
 749 0292 5375     		strb	r3, [r2, #21]
 288:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	select_controller(controller);
 750              		.loc 1 288 2
 751 0294 BB1D     		adds	r3, r7, #6
 752 0296 1B78     		ldrb	r3, [r3]
 753 0298 1800     		movs	r0, r3
 754 029a FFF701FF 		bl	select_controller
 289:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	delay_500ns();
 755              		.loc 1 289 2
 756 029e FFF7FEFF 		bl	delay_500ns
 290:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_set(B_E);
 757              		.loc 1 290 2
 758 02a2 4020     		movs	r0, #64
 759 02a4 FFF7ACFE 		bl	graphic_ctrl_bit_set
 291:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	delay_500ns();
 760              		.loc 1 291 2
 761 02a8 FFF7FEFF 		bl	delay_500ns
 292:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_clear( B_E );
 762              		.loc 1 292 2
 763 02ac 4020     		movs	r0, #64
 764 02ae FFF7CFFE 		bl	graphic_ctrl_bit_clear
 293:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	if(controller & B_CS1) {
 765              		.loc 1 293 16
 766 02b2 BB1D     		adds	r3, r7, #6
 767 02b4 1B78     		ldrb	r3, [r3]
 768 02b6 0822     		movs	r2, #8
 769 02b8 1340     		ands	r3, r2
 770              		.loc 1 293 4
 771 02ba 04D0     		beq	.L33
 294:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		select_controller( B_CS1);
 772              		.loc 1 294 3
 773 02bc 0820     		movs	r0, #8
 774 02be FFF7EFFE 		bl	select_controller
 295:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		graphic_wait_ready();
 775              		.loc 1 295 3
 776 02c2 FFF748FF 		bl	graphic_wait_ready
 777              	.L33:
 296:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 297:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	if(controller & B_CS2) {
 778              		.loc 1 297 16
 779 02c6 BB1D     		adds	r3, r7, #6
 780 02c8 1B78     		ldrb	r3, [r3]
 781 02ca 1022     		movs	r2, #16
 782 02cc 1340     		ands	r3, r2
 783              		.loc 1 297 4
 784 02ce 04D0     		beq	.L35
 298:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		select_controller( B_CS2);
 785              		.loc 1 298 3
 786 02d0 1020     		movs	r0, #16
 787 02d2 FFF7E5FE 		bl	select_controller
 299:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		graphic_wait_ready();
 788              		.loc 1 299 3
 789 02d6 FFF73EFF 		bl	graphic_wait_ready
 790              	.L35:
 300:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 301:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 791              		.loc 1 301 1
 792 02da C046     		nop
 793 02dc BD46     		mov	sp, r7
 794 02de 02B0     		add	sp, sp, #8
 795              		@ sp needed
 796 02e0 80BD     		pop	{r7, pc}
 797              	.L37:
 798 02e2 C046     		.align	2
 799              	.L36:
 800 02e4 00100240 		.word	1073876992
 801              		.cfi_endproc
 802              	.LFE8:
 804              		.align	1
 805              		.syntax unified
 806              		.code	16
 807              		.thumb_func
 808              		.fpu softvfp
 810              	graphic_write_command:
 811              	.LFB9:
 302:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** static void graphic_write_command(uint8_t command, uint8_t controller) {
 812              		.loc 1 302 72
 813              		.cfi_startproc
 814              		@ args = 0, pretend = 0, frame = 8
 815              		@ frame_needed = 1, uses_anonymous_args = 0
 816 02e8 80B5     		push	{r7, lr}
 817              		.cfi_def_cfa_offset 8
 818              		.cfi_offset 7, -8
 819              		.cfi_offset 14, -4
 820 02ea 82B0     		sub	sp, sp, #8
 821              		.cfi_def_cfa_offset 16
 822 02ec 00AF     		add	r7, sp, #0
 823              		.cfi_def_cfa_register 7
 824 02ee 0200     		movs	r2, r0
 825 02f0 FB1D     		adds	r3, r7, #7
 826 02f2 1A70     		strb	r2, [r3]
 827 02f4 BB1D     		adds	r3, r7, #6
 828 02f6 0A1C     		adds	r2, r1, #0
 829 02f8 1A70     		strb	r2, [r3]
 303:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_E);
 830              		.loc 1 303 2
 831 02fa 4020     		movs	r0, #64
 832 02fc FFF7A8FE 		bl	graphic_ctrl_bit_clear
 304:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	select_controller(controller);
 833              		.loc 1 304 2
 834 0300 BB1D     		adds	r3, r7, #6
 835 0302 1B78     		ldrb	r3, [r3]
 836 0304 1800     		movs	r0, r3
 837 0306 FFF7CBFE 		bl	select_controller
 305:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_RS|B_RW);
 838              		.loc 1 305 2
 839 030a 0320     		movs	r0, #3
 840 030c FFF7A0FE 		bl	graphic_ctrl_bit_clear
 306:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	graphic_write(command, controller);
 841              		.loc 1 306 2
 842 0310 BB1D     		adds	r3, r7, #6
 843 0312 1A78     		ldrb	r2, [r3]
 844 0314 FB1D     		adds	r3, r7, #7
 845 0316 1B78     		ldrb	r3, [r3]
 846 0318 1100     		movs	r1, r2
 847 031a 1800     		movs	r0, r3
 848 031c FFF7ADFF 		bl	graphic_write
 307:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 849              		.loc 1 307 1
 850 0320 C046     		nop
 851 0322 BD46     		mov	sp, r7
 852 0324 02B0     		add	sp, sp, #8
 853              		@ sp needed
 854 0326 80BD     		pop	{r7, pc}
 855              		.cfi_endproc
 856              	.LFE9:
 858              		.align	1
 859              		.syntax unified
 860              		.code	16
 861              		.thumb_func
 862              		.fpu softvfp
 864              	graphic_write_data:
 865              	.LFB10:
 308:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** static void graphic_write_data(uint8_t data, uint8_t controller) {
 866              		.loc 1 308 66
 867              		.cfi_startproc
 868              		@ args = 0, pretend = 0, frame = 8
 869              		@ frame_needed = 1, uses_anonymous_args = 0
 870 0328 80B5     		push	{r7, lr}
 871              		.cfi_def_cfa_offset 8
 872              		.cfi_offset 7, -8
 873              		.cfi_offset 14, -4
 874 032a 82B0     		sub	sp, sp, #8
 875              		.cfi_def_cfa_offset 16
 876 032c 00AF     		add	r7, sp, #0
 877              		.cfi_def_cfa_register 7
 878 032e 0200     		movs	r2, r0
 879 0330 FB1D     		adds	r3, r7, #7
 880 0332 1A70     		strb	r2, [r3]
 881 0334 BB1D     		adds	r3, r7, #6
 882 0336 0A1C     		adds	r2, r1, #0
 883 0338 1A70     		strb	r2, [r3]
 309:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_E);
 884              		.loc 1 309 2
 885 033a 4020     		movs	r0, #64
 886 033c FFF788FE 		bl	graphic_ctrl_bit_clear
 310:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	select_controller(controller);
 887              		.loc 1 310 2
 888 0340 BB1D     		adds	r3, r7, #6
 889 0342 1B78     		ldrb	r3, [r3]
 890 0344 1800     		movs	r0, r3
 891 0346 FFF7ABFE 		bl	select_controller
 311:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_set(B_RS);
 892              		.loc 1 311 2
 893 034a 0120     		movs	r0, #1
 894 034c FFF758FE 		bl	graphic_ctrl_bit_set
 312:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_RW);
 895              		.loc 1 312 2
 896 0350 0220     		movs	r0, #2
 897 0352 FFF77DFE 		bl	graphic_ctrl_bit_clear
 313:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	graphic_write(data, controller);
 898              		.loc 1 313 2
 899 0356 BB1D     		adds	r3, r7, #6
 900 0358 1A78     		ldrb	r2, [r3]
 901 035a FB1D     		adds	r3, r7, #7
 902 035c 1B78     		ldrb	r3, [r3]
 903 035e 1100     		movs	r1, r2
 904 0360 1800     		movs	r0, r3
 905 0362 FFF78AFF 		bl	graphic_write
 314:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 906              		.loc 1 314 1
 907 0366 C046     		nop
 908 0368 BD46     		mov	sp, r7
 909 036a 02B0     		add	sp, sp, #8
 910              		@ sp needed
 911 036c 80BD     		pop	{r7, pc}
 912              		.cfi_endproc
 913              	.LFE10:
 915              		.align	1
 916              		.global	graphic_clear_screen
 917              		.syntax unified
 918              		.code	16
 919              		.thumb_func
 920              		.fpu softvfp
 922              	graphic_clear_screen:
 923              	.LFB11:
 315:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void graphic_clear_screen(void) {
 924              		.loc 1 315 33
 925              		.cfi_startproc
 926              		@ args = 0, pretend = 0, frame = 8
 927              		@ frame_needed = 1, uses_anonymous_args = 0
 928 036e 80B5     		push	{r7, lr}
 929              		.cfi_def_cfa_offset 8
 930              		.cfi_offset 7, -8
 931              		.cfi_offset 14, -4
 932 0370 82B0     		sub	sp, sp, #8
 933              		.cfi_def_cfa_offset 16
 934 0372 00AF     		add	r7, sp, #0
 935              		.cfi_def_cfa_register 7
 316:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	uint8_t i, j;
 317:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	for(j = 0; j < 8; j++) {
 936              		.loc 1 317 8
 937 0374 BB1D     		adds	r3, r7, #6
 938 0376 0022     		movs	r2, #0
 939 0378 1A70     		strb	r2, [r3]
 940              		.loc 1 317 2
 941 037a 23E0     		b	.L41
 942              	.L44:
 318:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
 943              		.loc 1 318 3
 944 037c BB1D     		adds	r3, r7, #6
 945 037e 1B78     		ldrb	r3, [r3]
 946 0380 4822     		movs	r2, #72
 947 0382 5242     		rsbs	r2, r2, #0
 948 0384 1343     		orrs	r3, r2
 949 0386 DBB2     		uxtb	r3, r3
 950 0388 1821     		movs	r1, #24
 951 038a 1800     		movs	r0, r3
 952 038c FFF7ACFF 		bl	graphic_write_command
 319:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		graphic_write_command(LCD_SET_ADD | 0, B_CS1|B_CS2);
 953              		.loc 1 319 3
 954 0390 1821     		movs	r1, #24
 955 0392 4020     		movs	r0, #64
 956 0394 FFF7A8FF 		bl	graphic_write_command
 320:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		for(i = 0; i <= 63; i++){
 957              		.loc 1 320 9
 958 0398 FB1D     		adds	r3, r7, #7
 959 039a 0022     		movs	r2, #0
 960 039c 1A70     		strb	r2, [r3]
 961              		.loc 1 320 3
 962 039e 08E0     		b	.L42
 963              	.L43:
 321:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			graphic_write_data(0, B_CS1|B_CS2);
 964              		.loc 1 321 4 discriminator 3
 965 03a0 1821     		movs	r1, #24
 966 03a2 0020     		movs	r0, #0
 967 03a4 FFF7C0FF 		bl	graphic_write_data
 320:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		for(i = 0; i <= 63; i++){
 968              		.loc 1 320 24 discriminator 3
 969 03a8 FB1D     		adds	r3, r7, #7
 970 03aa 1A78     		ldrb	r2, [r3]
 971 03ac FB1D     		adds	r3, r7, #7
 972 03ae 0132     		adds	r2, r2, #1
 973 03b0 1A70     		strb	r2, [r3]
 974              	.L42:
 320:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		for(i = 0; i <= 63; i++){
 975              		.loc 1 320 3 discriminator 1
 976 03b2 FB1D     		adds	r3, r7, #7
 977 03b4 1B78     		ldrb	r3, [r3]
 978 03b6 3F2B     		cmp	r3, #63
 979 03b8 F2D9     		bls	.L43
 317:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
 980              		.loc 1 317 21 discriminator 2
 981 03ba BB1D     		adds	r3, r7, #6
 982 03bc 1A78     		ldrb	r2, [r3]
 983 03be BB1D     		adds	r3, r7, #6
 984 03c0 0132     		adds	r2, r2, #1
 985 03c2 1A70     		strb	r2, [r3]
 986              	.L41:
 317:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
 987              		.loc 1 317 2 discriminator 1
 988 03c4 BB1D     		adds	r3, r7, #6
 989 03c6 1B78     		ldrb	r3, [r3]
 990 03c8 072B     		cmp	r3, #7
 991 03ca D7D9     		bls	.L44
 322:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		}
 323:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 324:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 992              		.loc 1 324 1
 993 03cc C046     		nop
 994 03ce C046     		nop
 995 03d0 BD46     		mov	sp, r7
 996 03d2 02B0     		add	sp, sp, #8
 997              		@ sp needed
 998 03d4 80BD     		pop	{r7, pc}
 999              		.cfi_endproc
 1000              	.LFE11:
 1002              		.align	1
 1003              		.global	pixel
 1004              		.syntax unified
 1005              		.code	16
 1006              		.thumb_func
 1007              		.fpu softvfp
 1009              	pixel:
 1010              	.LFB12:
 325:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
 326:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void pixel(int x, int y, int set) {
 1011              		.loc 1 326 35
 1012              		.cfi_startproc
 1013              		@ args = 0, pretend = 0, frame = 32
 1014              		@ frame_needed = 1, uses_anonymous_args = 0
 1015 03d6 F0B5     		push	{r4, r5, r6, r7, lr}
 1016              		.cfi_def_cfa_offset 20
 1017              		.cfi_offset 4, -20
 1018              		.cfi_offset 5, -16
 1019              		.cfi_offset 6, -12
 1020              		.cfi_offset 7, -8
 1021              		.cfi_offset 14, -4
 1022 03d8 89B0     		sub	sp, sp, #36
 1023              		.cfi_def_cfa_offset 56
 1024 03da 00AF     		add	r7, sp, #0
 1025              		.cfi_def_cfa_register 7
 1026 03dc F860     		str	r0, [r7, #12]
 1027 03de B960     		str	r1, [r7, #8]
 1028 03e0 7A60     		str	r2, [r7, #4]
 327:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	uint8_t mask, c, controller;
 328:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	int index;
 329:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	if((x < 1) || (y < 1) || (x > 128) || (y > 64)) return;
 1029              		.loc 1 329 4
 1030 03e2 FB68     		ldr	r3, [r7, #12]
 1031 03e4 002B     		cmp	r3, #0
 1032 03e6 00DC     		bgt	.LCB696
 1033 03e8 B5E0     		b	.L66	@long jump
 1034              	.LCB696:
 1035              		.loc 1 329 13 discriminator 2
 1036 03ea BB68     		ldr	r3, [r7, #8]
 1037 03ec 002B     		cmp	r3, #0
 1038 03ee 00DC     		bgt	.LCB699
 1039 03f0 B1E0     		b	.L66	@long jump
 1040              	.LCB699:
 1041              		.loc 1 329 24 discriminator 4
 1042 03f2 FB68     		ldr	r3, [r7, #12]
 1043 03f4 802B     		cmp	r3, #128
 1044 03f6 00DD     		ble	.LCB702
 1045 03f8 ADE0     		b	.L66	@long jump
 1046              	.LCB702:
 1047              		.loc 1 329 37 discriminator 6
 1048 03fa BB68     		ldr	r3, [r7, #8]
 1049 03fc 402B     		cmp	r3, #64
 1050 03fe 00DD     		ble	.LCB705
 1051 0400 A9E0     		b	.L66	@long jump
 1052              	.LCB705:
 330:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	index = (y-1)/8;
 1053              		.loc 1 330 12
 1054 0402 BB68     		ldr	r3, [r7, #8]
 1055 0404 013B     		subs	r3, r3, #1
 1056              		.loc 1 330 8
 1057 0406 002B     		cmp	r3, #0
 1058 0408 00DA     		bge	.L49
 1059 040a 0733     		adds	r3, r3, #7
 1060              	.L49:
 1061 040c DB10     		asrs	r3, r3, #3
 1062 040e BB61     		str	r3, [r7, #24]
 331:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	switch( (y-1)%8 ) {
 1063              		.loc 1 331 12
 1064 0410 BB68     		ldr	r3, [r7, #8]
 1065 0412 013B     		subs	r3, r3, #1
 1066              		.loc 1 331 15
 1067 0414 524A     		ldr	r2, .L67
 1068 0416 1340     		ands	r3, r2
 1069 0418 04D5     		bpl	.L50
 1070 041a 013B     		subs	r3, r3, #1
 1071 041c 0822     		movs	r2, #8
 1072 041e 5242     		rsbs	r2, r2, #0
 1073 0420 1343     		orrs	r3, r2
 1074 0422 0133     		adds	r3, r3, #1
 1075              	.L50:
 1076 0424 072B     		cmp	r3, #7
 1077 0426 2CD8     		bhi	.L51
 1078 0428 9A00     		lsls	r2, r3, #2
 1079 042a 4E4B     		ldr	r3, .L67+4
 1080 042c D318     		adds	r3, r2, r3
 1081 042e 1B68     		ldr	r3, [r3]
 1082 0430 9F46     		mov	pc, r3
 1083              		.section	.rodata
 1084              		.align	2
 1085              	.L53:
 1086 0000 32040000 		.word	.L60
 1087 0004 3C040000 		.word	.L59
 1088 0008 46040000 		.word	.L58
 1089 000c 50040000 		.word	.L57
 1090 0010 5A040000 		.word	.L56
 1091 0014 64040000 		.word	.L55
 1092 0018 6E040000 		.word	.L54
 1093 001c 78040000 		.word	.L52
 1094              		.text
 1095              	.L60:
 332:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		case 0: mask = 1; break;
 1096              		.loc 1 332 16
 1097 0432 1F23     		movs	r3, #31
 1098 0434 FB18     		adds	r3, r7, r3
 1099 0436 0122     		movs	r2, #1
 1100 0438 1A70     		strb	r2, [r3]
 1101              		.loc 1 332 3
 1102 043a 22E0     		b	.L51
 1103              	.L59:
 333:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		case 1: mask = 2; break;
 1104              		.loc 1 333 16
 1105 043c 1F23     		movs	r3, #31
 1106 043e FB18     		adds	r3, r7, r3
 1107 0440 0222     		movs	r2, #2
 1108 0442 1A70     		strb	r2, [r3]
 1109              		.loc 1 333 3
 1110 0444 1DE0     		b	.L51
 1111              	.L58:
 334:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		case 2: mask = 4; break;
 1112              		.loc 1 334 16
 1113 0446 1F23     		movs	r3, #31
 1114 0448 FB18     		adds	r3, r7, r3
 1115 044a 0422     		movs	r2, #4
 1116 044c 1A70     		strb	r2, [r3]
 1117              		.loc 1 334 3
 1118 044e 18E0     		b	.L51
 1119              	.L57:
 335:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		case 3: mask = 8; break;
 1120              		.loc 1 335 16
 1121 0450 1F23     		movs	r3, #31
 1122 0452 FB18     		adds	r3, r7, r3
 1123 0454 0822     		movs	r2, #8
 1124 0456 1A70     		strb	r2, [r3]
 1125              		.loc 1 335 3
 1126 0458 13E0     		b	.L51
 1127              	.L56:
 336:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		case 4: mask = 0x10; break;
 1128              		.loc 1 336 16
 1129 045a 1F23     		movs	r3, #31
 1130 045c FB18     		adds	r3, r7, r3
 1131 045e 1022     		movs	r2, #16
 1132 0460 1A70     		strb	r2, [r3]
 1133              		.loc 1 336 3
 1134 0462 0EE0     		b	.L51
 1135              	.L55:
 337:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		case 5: mask = 0x20; break;
 1136              		.loc 1 337 16
 1137 0464 1F23     		movs	r3, #31
 1138 0466 FB18     		adds	r3, r7, r3
 1139 0468 2022     		movs	r2, #32
 1140 046a 1A70     		strb	r2, [r3]
 1141              		.loc 1 337 3
 1142 046c 09E0     		b	.L51
 1143              	.L54:
 338:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		case 6: mask = 0x40; break;
 1144              		.loc 1 338 16
 1145 046e 1F23     		movs	r3, #31
 1146 0470 FB18     		adds	r3, r7, r3
 1147 0472 4022     		movs	r2, #64
 1148 0474 1A70     		strb	r2, [r3]
 1149              		.loc 1 338 3
 1150 0476 04E0     		b	.L51
 1151              	.L52:
 339:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		case 7: mask = 0x80; break;
 1152              		.loc 1 339 16
 1153 0478 1F23     		movs	r3, #31
 1154 047a FB18     		adds	r3, r7, r3
 1155 047c 8022     		movs	r2, #128
 1156 047e 1A70     		strb	r2, [r3]
 1157              		.loc 1 339 3
 1158 0480 C046     		nop
 1159              	.L51:
 340:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 341:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		if(set == 0)
 1160              		.loc 1 341 5
 1161 0482 7B68     		ldr	r3, [r7, #4]
 1162 0484 002B     		cmp	r3, #0
 1163 0486 05D1     		bne	.L61
 342:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			mask = ~mask;
 1164              		.loc 1 342 9
 1165 0488 1F22     		movs	r2, #31
 1166 048a BB18     		adds	r3, r7, r2
 1167 048c BA18     		adds	r2, r7, r2
 1168 048e 1278     		ldrb	r2, [r2]
 1169 0490 D243     		mvns	r2, r2
 1170 0492 1A70     		strb	r2, [r3]
 1171              	.L61:
 343:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		if(x > 64){
 1172              		.loc 1 343 5
 1173 0494 FB68     		ldr	r3, [r7, #12]
 1174 0496 402B     		cmp	r3, #64
 1175 0498 07DD     		ble	.L62
 344:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			controller = B_CS2;
 1176              		.loc 1 344 15
 1177 049a 1E23     		movs	r3, #30
 1178 049c FB18     		adds	r3, r7, r3
 1179 049e 1022     		movs	r2, #16
 1180 04a0 1A70     		strb	r2, [r3]
 345:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		x = x - 65;
 1181              		.loc 1 345 5
 1182 04a2 FB68     		ldr	r3, [r7, #12]
 1183 04a4 413B     		subs	r3, r3, #65
 1184 04a6 FB60     		str	r3, [r7, #12]
 1185 04a8 06E0     		b	.L63
 1186              	.L62:
 346:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		} 
 347:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		else {
 348:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		controller = B_CS1;
 1187              		.loc 1 348 14
 1188 04aa 1E23     		movs	r3, #30
 1189 04ac FB18     		adds	r3, r7, r3
 1190 04ae 0822     		movs	r2, #8
 1191 04b0 1A70     		strb	r2, [r3]
 349:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		x = x-1;
 1192              		.loc 1 349 5
 1193 04b2 FB68     		ldr	r3, [r7, #12]
 1194 04b4 013B     		subs	r3, r3, #1
 1195 04b6 FB60     		str	r3, [r7, #12]
 1196              	.L63:
 350:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		}
 351:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		graphic_write_command(LCD_SET_ADD | x, controller );
 1197              		.loc 1 351 37
 1198 04b8 FB68     		ldr	r3, [r7, #12]
 1199 04ba 5BB2     		sxtb	r3, r3
 1200 04bc 4022     		movs	r2, #64
 1201 04be 1343     		orrs	r3, r2
 1202 04c0 5BB2     		sxtb	r3, r3
 1203              		.loc 1 351 3
 1204 04c2 DAB2     		uxtb	r2, r3
 1205 04c4 1E25     		movs	r5, #30
 1206 04c6 7B19     		adds	r3, r7, r5
 1207 04c8 1B78     		ldrb	r3, [r3]
 1208 04ca 1900     		movs	r1, r3
 1209 04cc 1000     		movs	r0, r2
 1210 04ce FFF70BFF 		bl	graphic_write_command
 352:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		graphic_write_command(LCD_SET_PAGE | index, controller );
 1211              		.loc 1 352 38
 1212 04d2 BB69     		ldr	r3, [r7, #24]
 1213 04d4 5BB2     		sxtb	r3, r3
 1214 04d6 4822     		movs	r2, #72
 1215 04d8 5242     		rsbs	r2, r2, #0
 1216 04da 1343     		orrs	r3, r2
 1217 04dc 5BB2     		sxtb	r3, r3
 1218              		.loc 1 352 3
 1219 04de DAB2     		uxtb	r2, r3
 1220 04e0 7B19     		adds	r3, r7, r5
 1221 04e2 1B78     		ldrb	r3, [r3]
 1222 04e4 1900     		movs	r1, r3
 1223 04e6 1000     		movs	r0, r2
 1224 04e8 FFF7FEFE 		bl	graphic_write_command
 353:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		c = graphic_read_data(controller);
 1225              		.loc 1 353 7
 1226 04ec 1726     		movs	r6, #23
 1227 04ee BC19     		adds	r4, r7, r6
 1228 04f0 7B19     		adds	r3, r7, r5
 1229 04f2 1B78     		ldrb	r3, [r3]
 1230 04f4 1800     		movs	r0, r3
 1231 04f6 FFF7ABFE 		bl	graphic_read_data
 1232 04fa 0300     		movs	r3, r0
 1233 04fc 2370     		strb	r3, [r4]
 354:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		graphic_write_command(LCD_SET_ADD | x, controller);
 1234              		.loc 1 354 37
 1235 04fe FB68     		ldr	r3, [r7, #12]
 1236 0500 5BB2     		sxtb	r3, r3
 1237 0502 4022     		movs	r2, #64
 1238 0504 1343     		orrs	r3, r2
 1239 0506 5BB2     		sxtb	r3, r3
 1240              		.loc 1 354 3
 1241 0508 DAB2     		uxtb	r2, r3
 1242 050a 7B19     		adds	r3, r7, r5
 1243 050c 1B78     		ldrb	r3, [r3]
 1244 050e 1900     		movs	r1, r3
 1245 0510 1000     		movs	r0, r2
 1246 0512 FFF7E9FE 		bl	graphic_write_command
 355:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		if(set)
 1247              		.loc 1 355 5
 1248 0516 7B68     		ldr	r3, [r7, #4]
 1249 0518 002B     		cmp	r3, #0
 1250 051a 08D0     		beq	.L64
 356:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			mask = mask | c;
 1251              		.loc 1 356 9
 1252 051c 1F22     		movs	r2, #31
 1253 051e BB18     		adds	r3, r7, r2
 1254 0520 B918     		adds	r1, r7, r2
 1255 0522 BA19     		adds	r2, r7, r6
 1256 0524 0978     		ldrb	r1, [r1]
 1257 0526 1278     		ldrb	r2, [r2]
 1258 0528 0A43     		orrs	r2, r1
 1259 052a 1A70     		strb	r2, [r3]
 1260 052c 08E0     		b	.L65
 1261              	.L64:
 357:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		else
 358:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			mask = mask & c;
 1262              		.loc 1 358 9
 1263 052e 1F22     		movs	r2, #31
 1264 0530 BB18     		adds	r3, r7, r2
 1265 0532 BA18     		adds	r2, r7, r2
 1266 0534 1721     		movs	r1, #23
 1267 0536 7918     		adds	r1, r7, r1
 1268 0538 1278     		ldrb	r2, [r2]
 1269 053a 0978     		ldrb	r1, [r1]
 1270 053c 0A40     		ands	r2, r1
 1271 053e 1A70     		strb	r2, [r3]
 1272              	.L65:
 359:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		graphic_write_data(mask, controller);
 1273              		.loc 1 359 3
 1274 0540 1E23     		movs	r3, #30
 1275 0542 FB18     		adds	r3, r7, r3
 1276 0544 1A78     		ldrb	r2, [r3]
 1277 0546 1F23     		movs	r3, #31
 1278 0548 FB18     		adds	r3, r7, r3
 1279 054a 1B78     		ldrb	r3, [r3]
 1280 054c 1100     		movs	r1, r2
 1281 054e 1800     		movs	r0, r3
 1282 0550 FFF7EAFE 		bl	graphic_write_data
 1283 0554 00E0     		b	.L45
 1284              	.L66:
 329:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	index = (y-1)/8;
 1285              		.loc 1 329 50
 1286 0556 C046     		nop
 1287              	.L45:
 360:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 1288              		.loc 1 360 1
 1289 0558 BD46     		mov	sp, r7
 1290 055a 09B0     		add	sp, sp, #36
 1291              		@ sp needed
 1292 055c F0BD     		pop	{r4, r5, r6, r7, pc}
 1293              	.L68:
 1294 055e C046     		.align	2
 1295              	.L67:
 1296 0560 07000080 		.word	-2147483641
 1297 0564 00000000 		.word	.L53
 1298              		.cfi_endproc
 1299              	.LFE12:
 1301              		.align	1
 1302              		.global	check_ball_collision
 1303              		.syntax unified
 1304              		.code	16
 1305              		.thumb_func
 1306              		.fpu softvfp
 1308              	check_ball_collision:
 1309              	.LFB13:
 361:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
 362:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** // Game object funcions.
 363:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void check_ball_collision(POBJECT O){ //Check if the ball hits anything.
 1310              		.loc 1 363 37
 1311              		.cfi_startproc
 1312              		@ args = 0, pretend = 0, frame = 8
 1313              		@ frame_needed = 1, uses_anonymous_args = 0
 1314 0568 90B5     		push	{r4, r7, lr}
 1315              		.cfi_def_cfa_offset 12
 1316              		.cfi_offset 4, -12
 1317              		.cfi_offset 7, -8
 1318              		.cfi_offset 14, -4
 1319 056a 83B0     		sub	sp, sp, #12
 1320              		.cfi_def_cfa_offset 24
 1321 056c 00AF     		add	r7, sp, #0
 1322              		.cfi_def_cfa_register 7
 1323 056e 7860     		str	r0, [r7, #4]
 364:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	// Check if hits left side. if it does P2 get point.
 365:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	if(O->posx < 1){
 1324              		.loc 1 365 6
 1325 0570 7B68     		ldr	r3, [r7, #4]
 1326 0572 DB68     		ldr	r3, [r3, #12]
 1327              		.loc 1 365 4
 1328 0574 002B     		cmp	r3, #0
 1329 0576 22DC     		bgt	.L70
 1330              	.LBB2:
 366:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		Player2.points = Player2.points + 1;
 1331              		.loc 1 366 27
 1332 0578 664B     		ldr	r3, .L77
 1333 057a 5B68     		ldr	r3, [r3, #4]
 1334              		.loc 1 366 35
 1335 057c 5A1C     		adds	r2, r3, #1
 1336              		.loc 1 366 18
 1337 057e 654B     		ldr	r3, .L77
 1338 0580 5A60     		str	r2, [r3, #4]
 367:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		ascii_clear_dsplay();
 1339              		.loc 1 367 3
 1340 0582 FFF7FEFF 		bl	ascii_clear_dsplay
 368:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		print_to_ascii(Player1.PAscii, ('0' + Player1.points), 1);
 1341              		.loc 1 368 48
 1342 0586 644B     		ldr	r3, .L77+4
 1343 0588 5B68     		ldr	r3, [r3, #4]
 1344              		.loc 1 368 3
 1345 058a 3033     		adds	r3, r3, #48
 1346 058c 1900     		movs	r1, r3
 1347 058e 634B     		ldr	r3, .L77+8
 1348 0590 0122     		movs	r2, #1
 1349 0592 1800     		movs	r0, r3
 1350 0594 FFF7FEFF 		bl	print_to_ascii
 369:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		print_to_ascii(Player2.PAscii, ('0' + Player2.points), 2);
 1351              		.loc 1 369 48
 1352 0598 5E4B     		ldr	r3, .L77
 1353 059a 5B68     		ldr	r3, [r3, #4]
 1354              		.loc 1 369 3
 1355 059c 3033     		adds	r3, r3, #48
 1356 059e 1900     		movs	r1, r3
 1357 05a0 5F4B     		ldr	r3, .L77+12
 1358 05a2 0222     		movs	r2, #2
 1359 05a4 1800     		movs	r0, r3
 1360 05a6 FFF7FEFF 		bl	print_to_ascii
 370:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->set_pos(O,LCD_WIDTH/2,LCD_HEIGHT/2);
 1361              		.loc 1 370 4
 1362 05aa 7B68     		ldr	r3, [r7, #4]
 1363 05ac 5B6A     		ldr	r3, [r3, #36]
 1364              		.loc 1 370 3
 1365 05ae 7868     		ldr	r0, [r7, #4]
 1366 05b0 2022     		movs	r2, #32
 1367 05b2 4021     		movs	r1, #64
 1368 05b4 9847     		blx	r3
 1369              	.LVL0:
 371:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		delay_milli(200);
 1370              		.loc 1 371 3
 1371 05b6 C820     		movs	r0, #200
 1372 05b8 FFF7FEFF 		bl	delay_milli
 1373              	.LBE2:
 372:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 373:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	// Check if hits right side. if it does P1 get point.
 374:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	else if(O->posx > LCD_WIDTH){
 375:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		Player1.points = Player1.points + 1;
 376:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		ascii_clear_dsplay();
 377:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		print_to_ascii(Player1.PAscii, ('0' + Player1.points), 1);
 378:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		print_to_ascii(Player2.PAscii, ('0' + Player2.points), 2);
 379:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->set_pos(O,LCD_WIDTH/2,LCD_HEIGHT/2);
 380:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		delay_milli(200);
 381:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
 382:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 383:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	//Check if the ball hits the roof or floor it changes Y direction.
 384:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	else if(O->posy < 3 || O->posy >= LCD_HEIGHT - O->geo->sizeY){
 385:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->diry = -(O->diry);
 386:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 387:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	//If the ball hits player1's paddle, change direction.
 388:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	else if(O->posx <= Player1.objct->posx + 6 && Player1.objct->posy -2 <= O->posy && O->posy <= Play
 389:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 390:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->set_pos(O, Player1.objct->posx + 5, O->posy);
 391:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 392:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	//If the ball hits player1's paddle, change direction.
 393:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	else if(O->posx >= Player2.objct->posx - 6 && Player2.objct->posy -2 <= O->posy && O->posy <= Play
 394:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 395:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->set_pos(O, Player2.objct->posx - 5, O->posy);
 396:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 397:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 1374              		.loc 1 397 1
 1375 05bc A5E0     		b	.L76
 1376              	.L70:
 374:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		Player1.points = Player1.points + 1;
 1377              		.loc 1 374 11
 1378 05be 7B68     		ldr	r3, [r7, #4]
 1379 05c0 DB68     		ldr	r3, [r3, #12]
 374:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		Player1.points = Player1.points + 1;
 1380              		.loc 1 374 9
 1381 05c2 802B     		cmp	r3, #128
 1382 05c4 22DD     		ble	.L72
 1383              	.LBB3:
 375:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		ascii_clear_dsplay();
 1384              		.loc 1 375 27
 1385 05c6 544B     		ldr	r3, .L77+4
 1386 05c8 5B68     		ldr	r3, [r3, #4]
 375:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		ascii_clear_dsplay();
 1387              		.loc 1 375 35
 1388 05ca 5A1C     		adds	r2, r3, #1
 375:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		ascii_clear_dsplay();
 1389              		.loc 1 375 18
 1390 05cc 524B     		ldr	r3, .L77+4
 1391 05ce 5A60     		str	r2, [r3, #4]
 376:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		print_to_ascii(Player1.PAscii, ('0' + Player1.points), 1);
 1392              		.loc 1 376 3
 1393 05d0 FFF7FEFF 		bl	ascii_clear_dsplay
 377:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		print_to_ascii(Player2.PAscii, ('0' + Player2.points), 2);
 1394              		.loc 1 377 48
 1395 05d4 504B     		ldr	r3, .L77+4
 1396 05d6 5B68     		ldr	r3, [r3, #4]
 377:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		print_to_ascii(Player2.PAscii, ('0' + Player2.points), 2);
 1397              		.loc 1 377 3
 1398 05d8 3033     		adds	r3, r3, #48
 1399 05da 1900     		movs	r1, r3
 1400 05dc 4F4B     		ldr	r3, .L77+8
 1401 05de 0122     		movs	r2, #1
 1402 05e0 1800     		movs	r0, r3
 1403 05e2 FFF7FEFF 		bl	print_to_ascii
 378:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->set_pos(O,LCD_WIDTH/2,LCD_HEIGHT/2);
 1404              		.loc 1 378 48
 1405 05e6 4B4B     		ldr	r3, .L77
 1406 05e8 5B68     		ldr	r3, [r3, #4]
 378:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->set_pos(O,LCD_WIDTH/2,LCD_HEIGHT/2);
 1407              		.loc 1 378 3
 1408 05ea 3033     		adds	r3, r3, #48
 1409 05ec 1900     		movs	r1, r3
 1410 05ee 4C4B     		ldr	r3, .L77+12
 1411 05f0 0222     		movs	r2, #2
 1412 05f2 1800     		movs	r0, r3
 1413 05f4 FFF7FEFF 		bl	print_to_ascii
 379:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		delay_milli(200);
 1414              		.loc 1 379 4
 1415 05f8 7B68     		ldr	r3, [r7, #4]
 1416 05fa 5B6A     		ldr	r3, [r3, #36]
 379:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		delay_milli(200);
 1417              		.loc 1 379 3
 1418 05fc 7868     		ldr	r0, [r7, #4]
 1419 05fe 2022     		movs	r2, #32
 1420 0600 4021     		movs	r1, #64
 1421 0602 9847     		blx	r3
 1422              	.LVL1:
 380:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
 1423              		.loc 1 380 3
 1424 0604 C820     		movs	r0, #200
 1425 0606 FFF7FEFF 		bl	delay_milli
 1426              	.LBE3:
 1427              		.loc 1 397 1
 1428 060a 7EE0     		b	.L76
 1429              	.L72:
 384:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->diry = -(O->diry);
 1430              		.loc 1 384 11
 1431 060c 7B68     		ldr	r3, [r7, #4]
 1432 060e 1B69     		ldr	r3, [r3, #16]
 384:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->diry = -(O->diry);
 1433              		.loc 1 384 9
 1434 0610 022B     		cmp	r3, #2
 1435 0612 08DD     		ble	.L73
 384:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->diry = -(O->diry);
 1436              		.loc 1 384 26 discriminator 1
 1437 0614 7B68     		ldr	r3, [r7, #4]
 1438 0616 1A69     		ldr	r2, [r3, #16]
 384:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->diry = -(O->diry);
 1439              		.loc 1 384 50 discriminator 1
 1440 0618 7B68     		ldr	r3, [r7, #4]
 1441 061a 1B68     		ldr	r3, [r3]
 384:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->diry = -(O->diry);
 1442              		.loc 1 384 55 discriminator 1
 1443 061c 9B68     		ldr	r3, [r3, #8]
 384:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->diry = -(O->diry);
 1444              		.loc 1 384 47 discriminator 1
 1445 061e 4021     		movs	r1, #64
 1446 0620 CB1A     		subs	r3, r1, r3
 384:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->diry = -(O->diry);
 1447              		.loc 1 384 22 discriminator 1
 1448 0622 9A42     		cmp	r2, r3
 1449 0624 05DB     		blt	.L74
 1450              	.L73:
 385:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 1451              		.loc 1 385 16
 1452 0626 7B68     		ldr	r3, [r7, #4]
 1453 0628 9B68     		ldr	r3, [r3, #8]
 385:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 1454              		.loc 1 385 13
 1455 062a 5A42     		rsbs	r2, r3, #0
 385:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 1456              		.loc 1 385 11
 1457 062c 7B68     		ldr	r3, [r7, #4]
 1458 062e 9A60     		str	r2, [r3, #8]
 1459 0630 6BE0     		b	.L71
 1460              	.L74:
 388:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1461              		.loc 1 388 11
 1462 0632 7B68     		ldr	r3, [r7, #4]
 1463 0634 DA68     		ldr	r2, [r3, #12]
 388:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1464              		.loc 1 388 28
 1465 0636 384B     		ldr	r3, .L77+4
 1466 0638 1B68     		ldr	r3, [r3]
 388:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1467              		.loc 1 388 34
 1468 063a DB68     		ldr	r3, [r3, #12]
 388:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1469              		.loc 1 388 41
 1470 063c 0633     		adds	r3, r3, #6
 388:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1471              		.loc 1 388 9
 1472 063e 9A42     		cmp	r2, r3
 1473 0640 2DDC     		bgt	.L75
 388:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1474              		.loc 1 388 55 discriminator 1
 1475 0642 354B     		ldr	r3, .L77+4
 1476 0644 1B68     		ldr	r3, [r3]
 388:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1477              		.loc 1 388 61 discriminator 1
 1478 0646 1B69     		ldr	r3, [r3, #16]
 388:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1479              		.loc 1 388 68 discriminator 1
 1480 0648 9A1E     		subs	r2, r3, #2
 388:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1481              		.loc 1 388 75 discriminator 1
 1482 064a 7B68     		ldr	r3, [r7, #4]
 1483 064c 1B69     		ldr	r3, [r3, #16]
 388:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1484              		.loc 1 388 45 discriminator 1
 1485 064e 9A42     		cmp	r2, r3
 1486 0650 25DC     		bgt	.L75
 388:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1487              		.loc 1 388 86 discriminator 2
 1488 0652 7B68     		ldr	r3, [r7, #4]
 1489 0654 1A69     		ldr	r2, [r3, #16]
 388:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1490              		.loc 1 388 103 discriminator 2
 1491 0656 304B     		ldr	r3, .L77+4
 1492 0658 1B68     		ldr	r3, [r3]
 388:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1493              		.loc 1 388 109 discriminator 2
 1494 065a 1969     		ldr	r1, [r3, #16]
 388:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1495              		.loc 1 388 125 discriminator 2
 1496 065c 2E4B     		ldr	r3, .L77+4
 1497 065e 1B68     		ldr	r3, [r3]
 388:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1498              		.loc 1 388 131 discriminator 2
 1499 0660 1B68     		ldr	r3, [r3]
 388:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1500              		.loc 1 388 136 discriminator 2
 1501 0662 9B68     		ldr	r3, [r3, #8]
 388:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1502              		.loc 1 388 116 discriminator 2
 1503 0664 CB18     		adds	r3, r1, r3
 388:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1504              		.loc 1 388 144 discriminator 2
 1505 0666 0133     		adds	r3, r3, #1
 388:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1506              		.loc 1 388 82 discriminator 2
 1507 0668 9A42     		cmp	r2, r3
 1508 066a 18DC     		bgt	.L75
 388:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1509              		.loc 1 388 167 discriminator 3
 1510 066c 2A4B     		ldr	r3, .L77+4
 1511 066e 1B68     		ldr	r3, [r3]
 388:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1512              		.loc 1 388 173 discriminator 3
 1513 0670 DB68     		ldr	r3, [r3, #12]
 388:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1514              		.loc 1 388 158 discriminator 3
 1515 0672 DA1E     		subs	r2, r3, #3
 388:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1516              		.loc 1 388 151 discriminator 3
 1517 0674 7B68     		ldr	r3, [r7, #4]
 1518 0676 DB68     		ldr	r3, [r3, #12]
 388:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1519              		.loc 1 388 147 discriminator 3
 1520 0678 9A42     		cmp	r2, r3
 1521 067a 10DC     		bgt	.L75
 389:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->set_pos(O, Player1.objct->posx + 5, O->posy);
 1522              		.loc 1 389 16
 1523 067c 7B68     		ldr	r3, [r7, #4]
 1524 067e 5B68     		ldr	r3, [r3, #4]
 389:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->set_pos(O, Player1.objct->posx + 5, O->posy);
 1525              		.loc 1 389 13
 1526 0680 5A42     		rsbs	r2, r3, #0
 389:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->set_pos(O, Player1.objct->posx + 5, O->posy);
 1527              		.loc 1 389 11
 1528 0682 7B68     		ldr	r3, [r7, #4]
 1529 0684 5A60     		str	r2, [r3, #4]
 390:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 1530              		.loc 1 390 4
 1531 0686 7B68     		ldr	r3, [r7, #4]
 1532 0688 5C6A     		ldr	r4, [r3, #36]
 390:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 1533              		.loc 1 390 24
 1534 068a 234B     		ldr	r3, .L77+4
 1535 068c 1B68     		ldr	r3, [r3]
 390:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 1536              		.loc 1 390 30
 1537 068e DB68     		ldr	r3, [r3, #12]
 390:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 1538              		.loc 1 390 3
 1539 0690 591D     		adds	r1, r3, #5
 1540 0692 7B68     		ldr	r3, [r7, #4]
 1541 0694 1A69     		ldr	r2, [r3, #16]
 1542 0696 7B68     		ldr	r3, [r7, #4]
 1543 0698 1800     		movs	r0, r3
 1544 069a A047     		blx	r4
 1545              	.LVL2:
 1546 069c 35E0     		b	.L71
 1547              	.L75:
 393:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1548              		.loc 1 393 11
 1549 069e 7B68     		ldr	r3, [r7, #4]
 1550 06a0 DA68     		ldr	r2, [r3, #12]
 393:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1551              		.loc 1 393 28
 1552 06a2 1C4B     		ldr	r3, .L77
 1553 06a4 1B68     		ldr	r3, [r3]
 393:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1554              		.loc 1 393 34
 1555 06a6 DB68     		ldr	r3, [r3, #12]
 393:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1556              		.loc 1 393 41
 1557 06a8 063B     		subs	r3, r3, #6
 393:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1558              		.loc 1 393 9
 1559 06aa 9A42     		cmp	r2, r3
 1560 06ac 2DDB     		blt	.L76
 393:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1561              		.loc 1 393 55 discriminator 1
 1562 06ae 194B     		ldr	r3, .L77
 1563 06b0 1B68     		ldr	r3, [r3]
 393:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1564              		.loc 1 393 61 discriminator 1
 1565 06b2 1B69     		ldr	r3, [r3, #16]
 393:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1566              		.loc 1 393 68 discriminator 1
 1567 06b4 9A1E     		subs	r2, r3, #2
 393:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1568              		.loc 1 393 75 discriminator 1
 1569 06b6 7B68     		ldr	r3, [r7, #4]
 1570 06b8 1B69     		ldr	r3, [r3, #16]
 393:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1571              		.loc 1 393 45 discriminator 1
 1572 06ba 9A42     		cmp	r2, r3
 1573 06bc 25DC     		bgt	.L76
 393:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1574              		.loc 1 393 86 discriminator 2
 1575 06be 7B68     		ldr	r3, [r7, #4]
 1576 06c0 1A69     		ldr	r2, [r3, #16]
 393:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1577              		.loc 1 393 103 discriminator 2
 1578 06c2 144B     		ldr	r3, .L77
 1579 06c4 1B68     		ldr	r3, [r3]
 393:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1580              		.loc 1 393 109 discriminator 2
 1581 06c6 1969     		ldr	r1, [r3, #16]
 393:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1582              		.loc 1 393 125 discriminator 2
 1583 06c8 124B     		ldr	r3, .L77
 1584 06ca 1B68     		ldr	r3, [r3]
 393:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1585              		.loc 1 393 131 discriminator 2
 1586 06cc 1B68     		ldr	r3, [r3]
 393:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1587              		.loc 1 393 136 discriminator 2
 1588 06ce 9B68     		ldr	r3, [r3, #8]
 393:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1589              		.loc 1 393 116 discriminator 2
 1590 06d0 CB18     		adds	r3, r1, r3
 393:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1591              		.loc 1 393 144 discriminator 2
 1592 06d2 0133     		adds	r3, r3, #1
 393:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1593              		.loc 1 393 82 discriminator 2
 1594 06d4 9A42     		cmp	r2, r3
 1595 06d6 18DC     		bgt	.L76
 393:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1596              		.loc 1 393 167 discriminator 3
 1597 06d8 0E4B     		ldr	r3, .L77
 1598 06da 1B68     		ldr	r3, [r3]
 393:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1599              		.loc 1 393 173 discriminator 3
 1600 06dc DB68     		ldr	r3, [r3, #12]
 393:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1601              		.loc 1 393 158 discriminator 3
 1602 06de DA1C     		adds	r2, r3, #3
 393:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1603              		.loc 1 393 151 discriminator 3
 1604 06e0 7B68     		ldr	r3, [r7, #4]
 1605 06e2 DB68     		ldr	r3, [r3, #12]
 393:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1606              		.loc 1 393 147 discriminator 3
 1607 06e4 9A42     		cmp	r2, r3
 1608 06e6 10DB     		blt	.L76
 394:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->set_pos(O, Player2.objct->posx - 5, O->posy);
 1609              		.loc 1 394 16
 1610 06e8 7B68     		ldr	r3, [r7, #4]
 1611 06ea 5B68     		ldr	r3, [r3, #4]
 394:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->set_pos(O, Player2.objct->posx - 5, O->posy);
 1612              		.loc 1 394 13
 1613 06ec 5A42     		rsbs	r2, r3, #0
 394:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->set_pos(O, Player2.objct->posx - 5, O->posy);
 1614              		.loc 1 394 11
 1615 06ee 7B68     		ldr	r3, [r7, #4]
 1616 06f0 5A60     		str	r2, [r3, #4]
 395:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 1617              		.loc 1 395 4
 1618 06f2 7B68     		ldr	r3, [r7, #4]
 1619 06f4 5C6A     		ldr	r4, [r3, #36]
 395:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 1620              		.loc 1 395 24
 1621 06f6 074B     		ldr	r3, .L77
 1622 06f8 1B68     		ldr	r3, [r3]
 395:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 1623              		.loc 1 395 30
 1624 06fa DB68     		ldr	r3, [r3, #12]
 395:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 1625              		.loc 1 395 3
 1626 06fc 591F     		subs	r1, r3, #5
 1627 06fe 7B68     		ldr	r3, [r7, #4]
 1628 0700 1A69     		ldr	r2, [r3, #16]
 1629 0702 7B68     		ldr	r3, [r7, #4]
 1630 0704 1800     		movs	r0, r3
 1631 0706 A047     		blx	r4
 1632              	.LVL3:
 1633              		.loc 1 397 1
 1634 0708 FFE7     		b	.L76
 1635              	.L71:
 1636              	.L76:
 1637 070a C046     		nop
 1638 070c BD46     		mov	sp, r7
 1639 070e 03B0     		add	sp, sp, #12
 1640              		@ sp needed
 1641 0710 90BD     		pop	{r4, r7, pc}
 1642              	.L78:
 1643 0712 C046     		.align	2
 1644              	.L77:
 1645 0714 14010000 		.word	Player2
 1646 0718 F4000000 		.word	Player1
 1647 071c FC000000 		.word	Player1+8
 1648 0720 1C010000 		.word	Player2+8
 1649              		.cfi_endproc
 1650              	.LFE13:
 1652              		.align	1
 1653              		.global	set_object_speed
 1654              		.syntax unified
 1655              		.code	16
 1656              		.thumb_func
 1657              		.fpu softvfp
 1659              	set_object_speed:
 1660              	.LFB14:
 398:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void set_object_speed(POBJECT O, int speedx, int speedy){
 1661              		.loc 1 398 57
 1662              		.cfi_startproc
 1663              		@ args = 0, pretend = 0, frame = 16
 1664              		@ frame_needed = 1, uses_anonymous_args = 0
 1665 0724 80B5     		push	{r7, lr}
 1666              		.cfi_def_cfa_offset 8
 1667              		.cfi_offset 7, -8
 1668              		.cfi_offset 14, -4
 1669 0726 84B0     		sub	sp, sp, #16
 1670              		.cfi_def_cfa_offset 24
 1671 0728 00AF     		add	r7, sp, #0
 1672              		.cfi_def_cfa_register 7
 1673 072a F860     		str	r0, [r7, #12]
 1674 072c B960     		str	r1, [r7, #8]
 1675 072e 7A60     		str	r2, [r7, #4]
 399:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	O->dirx = speedx;
 1676              		.loc 1 399 10
 1677 0730 FB68     		ldr	r3, [r7, #12]
 1678 0732 BA68     		ldr	r2, [r7, #8]
 1679 0734 5A60     		str	r2, [r3, #4]
 400:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	O->diry = speedy;
 1680              		.loc 1 400 10
 1681 0736 FB68     		ldr	r3, [r7, #12]
 1682 0738 7A68     		ldr	r2, [r7, #4]
 1683 073a 9A60     		str	r2, [r3, #8]
 401:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 1684              		.loc 1 401 1
 1685 073c C046     		nop
 1686 073e BD46     		mov	sp, r7
 1687 0740 04B0     		add	sp, sp, #16
 1688              		@ sp needed
 1689 0742 80BD     		pop	{r7, pc}
 1690              		.cfi_endproc
 1691              	.LFE14:
 1693              		.align	1
 1694              		.global	draw_object
 1695              		.syntax unified
 1696              		.code	16
 1697              		.thumb_func
 1698              		.fpu softvfp
 1700              	draw_object:
 1701              	.LFB15:
 402:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void draw_object(POBJECT O){
 1702              		.loc 1 402 28
 1703              		.cfi_startproc
 1704              		@ args = 0, pretend = 0, frame = 16
 1705              		@ frame_needed = 1, uses_anonymous_args = 0
 1706 0744 80B5     		push	{r7, lr}
 1707              		.cfi_def_cfa_offset 8
 1708              		.cfi_offset 7, -8
 1709              		.cfi_offset 14, -4
 1710 0746 84B0     		sub	sp, sp, #16
 1711              		.cfi_def_cfa_offset 24
 1712 0748 00AF     		add	r7, sp, #0
 1713              		.cfi_def_cfa_register 7
 1714 074a 7860     		str	r0, [r7, #4]
 1715              	.LBB4:
 403:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	for(int i = 0; i < MAX_POINTS ;i++){
 1716              		.loc 1 403 10
 1717 074c 0023     		movs	r3, #0
 1718 074e FB60     		str	r3, [r7, #12]
 1719              		.loc 1 403 2
 1720 0750 1CE0     		b	.L81
 1721              	.L82:
 404:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		pixel(O->posx + O->geo->px[i].x, O->posy + O->geo->px[i].y, 1);
 1722              		.loc 1 404 10 discriminator 3
 1723 0752 7B68     		ldr	r3, [r7, #4]
 1724 0754 DA68     		ldr	r2, [r3, #12]
 1725              		.loc 1 404 20 discriminator 3
 1726 0756 7B68     		ldr	r3, [r7, #4]
 1727 0758 1968     		ldr	r1, [r3]
 1728              		.loc 1 404 32 discriminator 3
 1729 075a FB68     		ldr	r3, [r7, #12]
 1730 075c 0433     		adds	r3, r3, #4
 1731 075e 5B00     		lsls	r3, r3, #1
 1732 0760 CB18     		adds	r3, r1, r3
 1733 0762 0433     		adds	r3, r3, #4
 1734 0764 1B78     		ldrb	r3, [r3]
 1735              		.loc 1 404 3 discriminator 3
 1736 0766 D018     		adds	r0, r2, r3
 1737              		.loc 1 404 37 discriminator 3
 1738 0768 7B68     		ldr	r3, [r7, #4]
 1739 076a 1A69     		ldr	r2, [r3, #16]
 1740              		.loc 1 404 47 discriminator 3
 1741 076c 7B68     		ldr	r3, [r7, #4]
 1742 076e 1968     		ldr	r1, [r3]
 1743              		.loc 1 404 59 discriminator 3
 1744 0770 FB68     		ldr	r3, [r7, #12]
 1745 0772 0433     		adds	r3, r3, #4
 1746 0774 5B00     		lsls	r3, r3, #1
 1747 0776 CB18     		adds	r3, r1, r3
 1748 0778 0533     		adds	r3, r3, #5
 1749 077a 1B78     		ldrb	r3, [r3]
 1750              		.loc 1 404 3 discriminator 3
 1751 077c D318     		adds	r3, r2, r3
 1752 077e 0122     		movs	r2, #1
 1753 0780 1900     		movs	r1, r3
 1754 0782 FFF7FEFF 		bl	pixel
 403:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	for(int i = 0; i < MAX_POINTS ;i++){
 1755              		.loc 1 403 34 discriminator 3
 1756 0786 FB68     		ldr	r3, [r7, #12]
 1757 0788 0133     		adds	r3, r3, #1
 1758 078a FB60     		str	r3, [r7, #12]
 1759              	.L81:
 403:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	for(int i = 0; i < MAX_POINTS ;i++){
 1760              		.loc 1 403 2 discriminator 1
 1761 078c FB68     		ldr	r3, [r7, #12]
 1762 078e 0D2B     		cmp	r3, #13
 1763 0790 DFDD     		ble	.L82
 1764              	.LBE4:
 405:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 406:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 1765              		.loc 1 406 1
 1766 0792 C046     		nop
 1767 0794 C046     		nop
 1768 0796 BD46     		mov	sp, r7
 1769 0798 04B0     		add	sp, sp, #16
 1770              		@ sp needed
 1771 079a 80BD     		pop	{r7, pc}
 1772              		.cfi_endproc
 1773              	.LFE15:
 1775              		.align	1
 1776              		.global	clear_object
 1777              		.syntax unified
 1778              		.code	16
 1779              		.thumb_func
 1780              		.fpu softvfp
 1782              	clear_object:
 1783              	.LFB16:
 407:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void clear_object(POBJECT O){
 1784              		.loc 1 407 29
 1785              		.cfi_startproc
 1786              		@ args = 0, pretend = 0, frame = 16
 1787              		@ frame_needed = 1, uses_anonymous_args = 0
 1788 079c 80B5     		push	{r7, lr}
 1789              		.cfi_def_cfa_offset 8
 1790              		.cfi_offset 7, -8
 1791              		.cfi_offset 14, -4
 1792 079e 84B0     		sub	sp, sp, #16
 1793              		.cfi_def_cfa_offset 24
 1794 07a0 00AF     		add	r7, sp, #0
 1795              		.cfi_def_cfa_register 7
 1796 07a2 7860     		str	r0, [r7, #4]
 1797              	.LBB5:
 408:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	for(int i = 0; i < MAX_POINTS; i++){
 1798              		.loc 1 408 10
 1799 07a4 0023     		movs	r3, #0
 1800 07a6 FB60     		str	r3, [r7, #12]
 1801              		.loc 1 408 2
 1802 07a8 1CE0     		b	.L84
 1803              	.L85:
 409:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		pixel(O->posx + O->geo->px[i].x, O->posy + O->geo->px[i].y, 0);
 1804              		.loc 1 409 10 discriminator 3
 1805 07aa 7B68     		ldr	r3, [r7, #4]
 1806 07ac DA68     		ldr	r2, [r3, #12]
 1807              		.loc 1 409 20 discriminator 3
 1808 07ae 7B68     		ldr	r3, [r7, #4]
 1809 07b0 1968     		ldr	r1, [r3]
 1810              		.loc 1 409 32 discriminator 3
 1811 07b2 FB68     		ldr	r3, [r7, #12]
 1812 07b4 0433     		adds	r3, r3, #4
 1813 07b6 5B00     		lsls	r3, r3, #1
 1814 07b8 CB18     		adds	r3, r1, r3
 1815 07ba 0433     		adds	r3, r3, #4
 1816 07bc 1B78     		ldrb	r3, [r3]
 1817              		.loc 1 409 3 discriminator 3
 1818 07be D018     		adds	r0, r2, r3
 1819              		.loc 1 409 37 discriminator 3
 1820 07c0 7B68     		ldr	r3, [r7, #4]
 1821 07c2 1A69     		ldr	r2, [r3, #16]
 1822              		.loc 1 409 47 discriminator 3
 1823 07c4 7B68     		ldr	r3, [r7, #4]
 1824 07c6 1968     		ldr	r1, [r3]
 1825              		.loc 1 409 59 discriminator 3
 1826 07c8 FB68     		ldr	r3, [r7, #12]
 1827 07ca 0433     		adds	r3, r3, #4
 1828 07cc 5B00     		lsls	r3, r3, #1
 1829 07ce CB18     		adds	r3, r1, r3
 1830 07d0 0533     		adds	r3, r3, #5
 1831 07d2 1B78     		ldrb	r3, [r3]
 1832              		.loc 1 409 3 discriminator 3
 1833 07d4 D318     		adds	r3, r2, r3
 1834 07d6 0022     		movs	r2, #0
 1835 07d8 1900     		movs	r1, r3
 1836 07da FFF7FEFF 		bl	pixel
 408:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	for(int i = 0; i < MAX_POINTS; i++){
 1837              		.loc 1 408 34 discriminator 3
 1838 07de FB68     		ldr	r3, [r7, #12]
 1839 07e0 0133     		adds	r3, r3, #1
 1840 07e2 FB60     		str	r3, [r7, #12]
 1841              	.L84:
 408:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	for(int i = 0; i < MAX_POINTS; i++){
 1842              		.loc 1 408 2 discriminator 1
 1843 07e4 FB68     		ldr	r3, [r7, #12]
 1844 07e6 0D2B     		cmp	r3, #13
 1845 07e8 DFDD     		ble	.L85
 1846              	.LBE5:
 410:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 411:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 1847              		.loc 1 411 1
 1848 07ea C046     		nop
 1849 07ec C046     		nop
 1850 07ee BD46     		mov	sp, r7
 1851 07f0 04B0     		add	sp, sp, #16
 1852              		@ sp needed
 1853 07f2 80BD     		pop	{r7, pc}
 1854              		.cfi_endproc
 1855              	.LFE16:
 1857              		.align	1
 1858              		.global	set_pos
 1859              		.syntax unified
 1860              		.code	16
 1861              		.thumb_func
 1862              		.fpu softvfp
 1864              	set_pos:
 1865              	.LFB17:
 412:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void set_pos(POBJECT O, int x, int y){
 1866              		.loc 1 412 38
 1867              		.cfi_startproc
 1868              		@ args = 0, pretend = 0, frame = 16
 1869              		@ frame_needed = 1, uses_anonymous_args = 0
 1870 07f4 80B5     		push	{r7, lr}
 1871              		.cfi_def_cfa_offset 8
 1872              		.cfi_offset 7, -8
 1873              		.cfi_offset 14, -4
 1874 07f6 84B0     		sub	sp, sp, #16
 1875              		.cfi_def_cfa_offset 24
 1876 07f8 00AF     		add	r7, sp, #0
 1877              		.cfi_def_cfa_register 7
 1878 07fa F860     		str	r0, [r7, #12]
 1879 07fc B960     		str	r1, [r7, #8]
 1880 07fe 7A60     		str	r2, [r7, #4]
 413:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	O->posx = x;
 1881              		.loc 1 413 10
 1882 0800 FB68     		ldr	r3, [r7, #12]
 1883 0802 BA68     		ldr	r2, [r7, #8]
 1884 0804 DA60     		str	r2, [r3, #12]
 414:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	O->posy = y;
 1885              		.loc 1 414 10
 1886 0806 FB68     		ldr	r3, [r7, #12]
 1887 0808 7A68     		ldr	r2, [r7, #4]
 1888 080a 1A61     		str	r2, [r3, #16]
 415:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 1889              		.loc 1 415 1
 1890 080c C046     		nop
 1891 080e BD46     		mov	sp, r7
 1892 0810 04B0     		add	sp, sp, #16
 1893              		@ sp needed
 1894 0812 80BD     		pop	{r7, pc}
 1895              		.cfi_endproc
 1896              	.LFE17:
 1898              		.align	1
 1899              		.global	move_ball
 1900              		.syntax unified
 1901              		.code	16
 1902              		.thumb_func
 1903              		.fpu softvfp
 1905              	move_ball:
 1906              	.LFB18:
 416:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void move_ball(POBJECT O){
 1907              		.loc 1 416 26
 1908              		.cfi_startproc
 1909              		@ args = 0, pretend = 0, frame = 8
 1910              		@ frame_needed = 1, uses_anonymous_args = 0
 1911 0814 80B5     		push	{r7, lr}
 1912              		.cfi_def_cfa_offset 8
 1913              		.cfi_offset 7, -8
 1914              		.cfi_offset 14, -4
 1915 0816 82B0     		sub	sp, sp, #8
 1916              		.cfi_def_cfa_offset 16
 1917 0818 00AF     		add	r7, sp, #0
 1918              		.cfi_def_cfa_register 7
 1919 081a 7860     		str	r0, [r7, #4]
 417:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	clear_object(O);
 1920              		.loc 1 417 2
 1921 081c 7B68     		ldr	r3, [r7, #4]
 1922 081e 1800     		movs	r0, r3
 1923 0820 FFF7FEFF 		bl	clear_object
 418:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	O->check_ball_collision(O);
 1924              		.loc 1 418 3
 1925 0824 7B68     		ldr	r3, [r7, #4]
 1926 0826 9B6A     		ldr	r3, [r3, #40]
 1927              		.loc 1 418 2
 1928 0828 7A68     		ldr	r2, [r7, #4]
 1929 082a 1000     		movs	r0, r2
 1930 082c 9847     		blx	r3
 1931              	.LVL4:
 419:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	O->posx += O->dirx;
 1932              		.loc 1 419 10
 1933 082e 7B68     		ldr	r3, [r7, #4]
 1934 0830 DA68     		ldr	r2, [r3, #12]
 1935              		.loc 1 419 14
 1936 0832 7B68     		ldr	r3, [r7, #4]
 1937 0834 5B68     		ldr	r3, [r3, #4]
 1938              		.loc 1 419 10
 1939 0836 D218     		adds	r2, r2, r3
 1940 0838 7B68     		ldr	r3, [r7, #4]
 1941 083a DA60     		str	r2, [r3, #12]
 420:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	O->posy += O->diry;
 1942              		.loc 1 420 10
 1943 083c 7B68     		ldr	r3, [r7, #4]
 1944 083e 1A69     		ldr	r2, [r3, #16]
 1945              		.loc 1 420 14
 1946 0840 7B68     		ldr	r3, [r7, #4]
 1947 0842 9B68     		ldr	r3, [r3, #8]
 1948              		.loc 1 420 10
 1949 0844 D218     		adds	r2, r2, r3
 1950 0846 7B68     		ldr	r3, [r7, #4]
 1951 0848 1A61     		str	r2, [r3, #16]
 421:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	draw_object(O);
 1952              		.loc 1 421 2
 1953 084a 7B68     		ldr	r3, [r7, #4]
 1954 084c 1800     		movs	r0, r3
 1955 084e FFF7FEFF 		bl	draw_object
 422:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 1956              		.loc 1 422 1
 1957 0852 C046     		nop
 1958 0854 BD46     		mov	sp, r7
 1959 0856 02B0     		add	sp, sp, #8
 1960              		@ sp needed
 1961 0858 80BD     		pop	{r7, pc}
 1962              		.cfi_endproc
 1963              	.LFE18:
 1965              		.align	1
 1966              		.global	move_bouncer
 1967              		.syntax unified
 1968              		.code	16
 1969              		.thumb_func
 1970              		.fpu softvfp
 1972              	move_bouncer:
 1973              	.LFB19:
 423:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void move_bouncer(POBJECT O){
 1974              		.loc 1 423 29
 1975              		.cfi_startproc
 1976              		@ args = 0, pretend = 0, frame = 8
 1977              		@ frame_needed = 1, uses_anonymous_args = 0
 1978 085a 80B5     		push	{r7, lr}
 1979              		.cfi_def_cfa_offset 8
 1980              		.cfi_offset 7, -8
 1981              		.cfi_offset 14, -4
 1982 085c 82B0     		sub	sp, sp, #8
 1983              		.cfi_def_cfa_offset 16
 1984 085e 00AF     		add	r7, sp, #0
 1985              		.cfi_def_cfa_register 7
 1986 0860 7860     		str	r0, [r7, #4]
 424:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	clear_object(O);
 1987              		.loc 1 424 2
 1988 0862 7B68     		ldr	r3, [r7, #4]
 1989 0864 1800     		movs	r0, r3
 1990 0866 FFF7FEFF 		bl	clear_object
 425:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	// Check if at top or bottom of scren and if so change the Y-dirrection.
 426:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	if(O->posy > 3 && O->diry < 0){
 1991              		.loc 1 426 6
 1992 086a 7B68     		ldr	r3, [r7, #4]
 1993 086c 1B69     		ldr	r3, [r3, #16]
 1994              		.loc 1 426 4
 1995 086e 032B     		cmp	r3, #3
 1996 0870 0BDD     		ble	.L89
 1997              		.loc 1 426 21 discriminator 1
 1998 0872 7B68     		ldr	r3, [r7, #4]
 1999 0874 9B68     		ldr	r3, [r3, #8]
 2000              		.loc 1 426 17 discriminator 1
 2001 0876 002B     		cmp	r3, #0
 2002 0878 07DA     		bge	.L89
 427:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->posy += O->diry;
 2003              		.loc 1 427 11
 2004 087a 7B68     		ldr	r3, [r7, #4]
 2005 087c 1A69     		ldr	r2, [r3, #16]
 2006              		.loc 1 427 15
 2007 087e 7B68     		ldr	r3, [r7, #4]
 2008 0880 9B68     		ldr	r3, [r3, #8]
 2009              		.loc 1 427 11
 2010 0882 D218     		adds	r2, r2, r3
 2011 0884 7B68     		ldr	r3, [r7, #4]
 2012 0886 1A61     		str	r2, [r3, #16]
 2013 0888 13E0     		b	.L90
 2014              	.L89:
 428:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 429:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	else if(O->posy < LCD_HEIGHT - O->geo->sizeY-2 && O->diry > 0){
 2015              		.loc 1 429 11
 2016 088a 7B68     		ldr	r3, [r7, #4]
 2017 088c 1A69     		ldr	r2, [r3, #16]
 2018              		.loc 1 429 34
 2019 088e 7B68     		ldr	r3, [r7, #4]
 2020 0890 1B68     		ldr	r3, [r3]
 2021              		.loc 1 429 39
 2022 0892 9B68     		ldr	r3, [r3, #8]
 2023              		.loc 1 429 46
 2024 0894 3E21     		movs	r1, #62
 2025 0896 CB1A     		subs	r3, r1, r3
 2026              		.loc 1 429 9
 2027 0898 9A42     		cmp	r2, r3
 2028 089a 0ADA     		bge	.L90
 2029              		.loc 1 429 53 discriminator 1
 2030 089c 7B68     		ldr	r3, [r7, #4]
 2031 089e 9B68     		ldr	r3, [r3, #8]
 2032              		.loc 1 429 49 discriminator 1
 2033 08a0 002B     		cmp	r3, #0
 2034 08a2 06DD     		ble	.L90
 430:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		O->posy += O->diry;
 2035              		.loc 1 430 11
 2036 08a4 7B68     		ldr	r3, [r7, #4]
 2037 08a6 1A69     		ldr	r2, [r3, #16]
 2038              		.loc 1 430 15
 2039 08a8 7B68     		ldr	r3, [r7, #4]
 2040 08aa 9B68     		ldr	r3, [r3, #8]
 2041              		.loc 1 430 11
 2042 08ac D218     		adds	r2, r2, r3
 2043 08ae 7B68     		ldr	r3, [r7, #4]
 2044 08b0 1A61     		str	r2, [r3, #16]
 2045              	.L90:
 431:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 432:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	//Move the bouncer to the new cordinates.
 433:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	
 434:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	//Set diry to zero so the bouncer stops.
 435:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	O->diry = 0;
 2046              		.loc 1 435 10
 2047 08b2 7B68     		ldr	r3, [r7, #4]
 2048 08b4 0022     		movs	r2, #0
 2049 08b6 9A60     		str	r2, [r3, #8]
 436:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	draw_object(O);
 2050              		.loc 1 436 2
 2051 08b8 7B68     		ldr	r3, [r7, #4]
 2052 08ba 1800     		movs	r0, r3
 2053 08bc FFF7FEFF 		bl	draw_object
 437:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	
 438:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 2054              		.loc 1 438 1
 2055 08c0 C046     		nop
 2056 08c2 BD46     		mov	sp, r7
 2057 08c4 02B0     		add	sp, sp, #8
 2058              		@ sp needed
 2059 08c6 80BD     		pop	{r7, pc}
 2060              		.cfi_endproc
 2061              	.LFE19:
 2063              		.align	1
 2064              		.global	delay_250ns
 2065              		.syntax unified
 2066              		.code	16
 2067              		.thumb_func
 2068              		.fpu softvfp
 2070              	delay_250ns:
 2071              	.LFB20:
 439:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
 440:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** //Delay funktioner
 441:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void delay_250ns ( void ) {
 2072              		.loc 1 441 27
 2073              		.cfi_startproc
 2074              		@ args = 0, pretend = 0, frame = 0
 2075              		@ frame_needed = 1, uses_anonymous_args = 0
 2076 08c8 80B5     		push	{r7, lr}
 2077              		.cfi_def_cfa_offset 8
 2078              		.cfi_offset 7, -8
 2079              		.cfi_offset 14, -4
 2080 08ca 00AF     		add	r7, sp, #0
 2081              		.cfi_def_cfa_register 7
 442:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		*STK_CTRL = 0x00;
 2082              		.loc 1 442 3
 2083 08cc 0C4B     		ldr	r3, .L93
 2084              		.loc 1 442 13
 2085 08ce 0022     		movs	r2, #0
 2086 08d0 1A60     		str	r2, [r3]
 443:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		*STK_LOAD = ((168/4) - 1);
 2087              		.loc 1 443 3
 2088 08d2 0C4B     		ldr	r3, .L93+4
 2089              		.loc 1 443 13
 2090 08d4 2922     		movs	r2, #41
 2091 08d6 1A60     		str	r2, [r3]
 444:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		*STK_VAL = 0;
 2092              		.loc 1 444 3
 2093 08d8 0B4B     		ldr	r3, .L93+8
 2094              		.loc 1 444 12
 2095 08da 0022     		movs	r2, #0
 2096 08dc 1A60     		str	r2, [r3]
 445:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		*STK_CTRL = 5;
 2097              		.loc 1 445 3
 2098 08de 084B     		ldr	r3, .L93
 2099              		.loc 1 445 13
 2100 08e0 0522     		movs	r2, #5
 2101 08e2 1A60     		str	r2, [r3]
 446:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		while ((*STK_CTRL & 0x10000) == 0){}
 2102              		.loc 1 446 9
 2103 08e4 C046     		nop
 2104              	.L92:
 2105              		.loc 1 446 11 discriminator 1
 2106 08e6 064B     		ldr	r3, .L93
 2107 08e8 1A68     		ldr	r2, [r3]
 2108              		.loc 1 446 21 discriminator 1
 2109 08ea 8023     		movs	r3, #128
 2110 08ec 5B02     		lsls	r3, r3, #9
 2111 08ee 1340     		ands	r3, r2
 2112              		.loc 1 446 9 discriminator 1
 2113 08f0 F9D0     		beq	.L92
 447:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		*STK_CTRL = 0;
 2114              		.loc 1 447 3
 2115 08f2 034B     		ldr	r3, .L93
 2116              		.loc 1 447 13
 2117 08f4 0022     		movs	r2, #0
 2118 08f6 1A60     		str	r2, [r3]
 448:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 2119              		.loc 1 448 1
 2120 08f8 C046     		nop
 2121 08fa BD46     		mov	sp, r7
 2122              		@ sp needed
 2123 08fc 80BD     		pop	{r7, pc}
 2124              	.L94:
 2125 08fe C046     		.align	2
 2126              	.L93:
 2127 0900 10E000E0 		.word	-536813552
 2128 0904 14E000E0 		.word	-536813548
 2129 0908 18E000E0 		.word	-536813544
 2130              		.cfi_endproc
 2131              	.LFE20:
 2133              		.align	1
 2134              		.global	delay_500ns
 2135              		.syntax unified
 2136              		.code	16
 2137              		.thumb_func
 2138              		.fpu softvfp
 2140              	delay_500ns:
 2141              	.LFB21:
 449:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void delay_500ns(void){
 2142              		.loc 1 449 23
 2143              		.cfi_startproc
 2144              		@ args = 0, pretend = 0, frame = 0
 2145              		@ frame_needed = 1, uses_anonymous_args = 0
 2146 090c 80B5     		push	{r7, lr}
 2147              		.cfi_def_cfa_offset 8
 2148              		.cfi_offset 7, -8
 2149              		.cfi_offset 14, -4
 2150 090e 00AF     		add	r7, sp, #0
 2151              		.cfi_def_cfa_register 7
 450:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	delay_250ns();
 2152              		.loc 1 450 2
 2153 0910 FFF7FEFF 		bl	delay_250ns
 451:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	delay_250ns();
 2154              		.loc 1 451 2
 2155 0914 FFF7FEFF 		bl	delay_250ns
 452:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 2156              		.loc 1 452 1
 2157 0918 C046     		nop
 2158 091a BD46     		mov	sp, r7
 2159              		@ sp needed
 2160 091c 80BD     		pop	{r7, pc}
 2161              		.cfi_endproc
 2162              	.LFE21:
 2164              		.align	1
 2165              		.global	delay_mikro
 2166              		.syntax unified
 2167              		.code	16
 2168              		.thumb_func
 2169              		.fpu softvfp
 2171              	delay_mikro:
 2172              	.LFB22:
 453:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void delay_mikro (unsigned int us){
 2173              		.loc 1 453 35
 2174              		.cfi_startproc
 2175              		@ args = 0, pretend = 0, frame = 16
 2176              		@ frame_needed = 1, uses_anonymous_args = 0
 2177 091e 80B5     		push	{r7, lr}
 2178              		.cfi_def_cfa_offset 8
 2179              		.cfi_offset 7, -8
 2180              		.cfi_offset 14, -4
 2181 0920 84B0     		sub	sp, sp, #16
 2182              		.cfi_def_cfa_offset 24
 2183 0922 00AF     		add	r7, sp, #0
 2184              		.cfi_def_cfa_register 7
 2185 0924 7860     		str	r0, [r7, #4]
 2186              	.LBB6:
 454:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	for (int i = 0; i < us; i++) {
 2187              		.loc 1 454 11
 2188 0926 0023     		movs	r3, #0
 2189 0928 FB60     		str	r3, [r7, #12]
 2190              		.loc 1 454 2
 2191 092a 0AE0     		b	.L97
 2192              	.L98:
 455:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		delay_250ns();
 2193              		.loc 1 455 3 discriminator 3
 2194 092c FFF7FEFF 		bl	delay_250ns
 456:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		delay_250ns();
 2195              		.loc 1 456 3 discriminator 3
 2196 0930 FFF7FEFF 		bl	delay_250ns
 457:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		delay_250ns();
 2197              		.loc 1 457 3 discriminator 3
 2198 0934 FFF7FEFF 		bl	delay_250ns
 458:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		delay_250ns();
 2199              		.loc 1 458 3 discriminator 3
 2200 0938 FFF7FEFF 		bl	delay_250ns
 454:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		delay_250ns();
 2201              		.loc 1 454 27 discriminator 3
 2202 093c FB68     		ldr	r3, [r7, #12]
 2203 093e 0133     		adds	r3, r3, #1
 2204 0940 FB60     		str	r3, [r7, #12]
 2205              	.L97:
 454:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		delay_250ns();
 2206              		.loc 1 454 20 discriminator 1
 2207 0942 FB68     		ldr	r3, [r7, #12]
 454:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		delay_250ns();
 2208              		.loc 1 454 2 discriminator 1
 2209 0944 7A68     		ldr	r2, [r7, #4]
 2210 0946 9A42     		cmp	r2, r3
 2211 0948 F0D8     		bhi	.L98
 2212              	.LBE6:
 459:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		}
 460:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }	
 2213              		.loc 1 460 1
 2214 094a C046     		nop
 2215 094c C046     		nop
 2216 094e BD46     		mov	sp, r7
 2217 0950 04B0     		add	sp, sp, #16
 2218              		@ sp needed
 2219 0952 80BD     		pop	{r7, pc}
 2220              		.cfi_endproc
 2221              	.LFE22:
 2223              		.align	1
 2224              		.global	delay_milli
 2225              		.syntax unified
 2226              		.code	16
 2227              		.thumb_func
 2228              		.fpu softvfp
 2230              	delay_milli:
 2231              	.LFB23:
 461:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void delay_milli (unsigned int ms){
 2232              		.loc 1 461 35
 2233              		.cfi_startproc
 2234              		@ args = 0, pretend = 0, frame = 8
 2235              		@ frame_needed = 1, uses_anonymous_args = 0
 2236 0954 80B5     		push	{r7, lr}
 2237              		.cfi_def_cfa_offset 8
 2238              		.cfi_offset 7, -8
 2239              		.cfi_offset 14, -4
 2240 0956 82B0     		sub	sp, sp, #8
 2241              		.cfi_def_cfa_offset 16
 2242 0958 00AF     		add	r7, sp, #0
 2243              		.cfi_def_cfa_register 7
 2244 095a 7860     		str	r0, [r7, #4]
 462:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	#ifdef SIMULATOR
 463:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		delay_mikro(1);
 2245              		.loc 1 463 3
 2246 095c 0120     		movs	r0, #1
 2247 095e FFF7FEFF 		bl	delay_mikro
 464:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	#else
 465:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		delay_mikro(ms * 1000);
 466:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	#endif
 467:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 2248              		.loc 1 467 1
 2249 0962 C046     		nop
 2250 0964 BD46     		mov	sp, r7
 2251 0966 02B0     		add	sp, sp, #8
 2252              		@ sp needed
 2253 0968 80BD     		pop	{r7, pc}
 2254              		.cfi_endproc
 2255              	.LFE23:
 2257              		.align	1
 2258              		.global	keyb
 2259              		.syntax unified
 2260              		.code	16
 2261              		.thumb_func
 2262              		.fpu softvfp
 2264              	keyb:
 2265              	.LFB24:
 468:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
 469:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** //Keypad Funktioner
 470:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** unsigned char keyb(void){
 2266              		.loc 1 470 25
 2267              		.cfi_startproc
 2268              		@ args = 0, pretend = 0, frame = 8
 2269              		@ frame_needed = 1, uses_anonymous_args = 0
 2270 096a 80B5     		push	{r7, lr}
 2271              		.cfi_def_cfa_offset 8
 2272              		.cfi_offset 7, -8
 2273              		.cfi_offset 14, -4
 2274 096c 82B0     		sub	sp, sp, #8
 2275              		.cfi_def_cfa_offset 16
 2276 096e 00AF     		add	r7, sp, #0
 2277              		.cfi_def_cfa_register 7
 471:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	int row, column;
 472:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	for (row = 1; row <= 4; row++){
 2278              		.loc 1 472 11
 2279 0970 0123     		movs	r3, #1
 2280 0972 7B60     		str	r3, [r7, #4]
 2281              		.loc 1 472 2
 2282 0974 19E0     		b	.L101
 2283              	.L104:
 2284              	.LBB7:
 473:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		ActivateRow(row);
 2285              		.loc 1 473 3
 2286 0976 7B68     		ldr	r3, [r7, #4]
 2287 0978 1800     		movs	r0, r3
 2288 097a FFF7FEFF 		bl	ActivateRow
 2289              	.LBB8:
 474:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		if (column = ReadColumn()){
 2290              		.loc 1 474 16
 2291 097e FFF7FEFF 		bl	ReadColumn
 2292 0982 0300     		movs	r3, r0
 2293 0984 3B60     		str	r3, [r7]
 2294              		.loc 1 474 6
 2295 0986 3B68     		ldr	r3, [r7]
 2296 0988 002B     		cmp	r3, #0
 2297 098a 0BD0     		beq	.L102
 475:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			ActivateRow(0);
 2298              		.loc 1 475 4
 2299 098c 0020     		movs	r0, #0
 2300 098e FFF7FEFF 		bl	ActivateRow
 476:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			return Key[4*(row-1) + (column-1)];
 2301              		.loc 1 476 21
 2302 0992 7B68     		ldr	r3, [r7, #4]
 2303 0994 013B     		subs	r3, r3, #1
 2304              		.loc 1 476 16
 2305 0996 9A00     		lsls	r2, r3, #2
 2306              		.loc 1 476 34
 2307 0998 3B68     		ldr	r3, [r7]
 2308 099a 013B     		subs	r3, r3, #1
 2309              		.loc 1 476 25
 2310 099c D318     		adds	r3, r2, r3
 2311              		.loc 1 476 14
 2312 099e 084A     		ldr	r2, .L105
 2313 09a0 D35C     		ldrb	r3, [r2, r3]
 2314 09a2 09E0     		b	.L103
 2315              	.L102:
 2316              	.LBE8:
 2317              	.LBE7:
 472:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		ActivateRow(row);
 2318              		.loc 1 472 29 discriminator 2
 2319 09a4 7B68     		ldr	r3, [r7, #4]
 2320 09a6 0133     		adds	r3, r3, #1
 2321 09a8 7B60     		str	r3, [r7, #4]
 2322              	.L101:
 472:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		ActivateRow(row);
 2323              		.loc 1 472 2 discriminator 1
 2324 09aa 7B68     		ldr	r3, [r7, #4]
 2325 09ac 042B     		cmp	r3, #4
 2326 09ae E2DD     		ble	.L104
 477:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		}
 478:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 479:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	ActivateRow(0);
 2327              		.loc 1 479 2
 2328 09b0 0020     		movs	r0, #0
 2329 09b2 FFF7FEFF 		bl	ActivateRow
 480:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	return 0xFF;
 2330              		.loc 1 480 9
 2331 09b6 FF23     		movs	r3, #255
 2332              	.L103:
 481:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 2333              		.loc 1 481 1
 2334 09b8 1800     		movs	r0, r3
 2335 09ba BD46     		mov	sp, r7
 2336 09bc 02B0     		add	sp, sp, #8
 2337              		@ sp needed
 2338 09be 80BD     		pop	{r7, pc}
 2339              	.L106:
 2340              		.align	2
 2341              	.L105:
 2342 09c0 00000000 		.word	Key
 2343              		.cfi_endproc
 2344              	.LFE24:
 2346              		.align	1
 2347              		.global	ActivateRow
 2348              		.syntax unified
 2349              		.code	16
 2350              		.thumb_func
 2351              		.fpu softvfp
 2353              	ActivateRow:
 2354              	.LFB25:
 482:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void ActivateRow(char row){
 2355              		.loc 1 482 27
 2356              		.cfi_startproc
 2357              		@ args = 0, pretend = 0, frame = 8
 2358              		@ frame_needed = 1, uses_anonymous_args = 0
 2359 09c4 80B5     		push	{r7, lr}
 2360              		.cfi_def_cfa_offset 8
 2361              		.cfi_offset 7, -8
 2362              		.cfi_offset 14, -4
 2363 09c6 82B0     		sub	sp, sp, #8
 2364              		.cfi_def_cfa_offset 16
 2365 09c8 00AF     		add	r7, sp, #0
 2366              		.cfi_def_cfa_register 7
 2367 09ca 0200     		movs	r2, r0
 2368 09cc FB1D     		adds	r3, r7, #7
 2369 09ce 1A70     		strb	r2, [r3]
 483:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	switch(row){
 2370              		.loc 1 483 2
 2371 09d0 FB1D     		adds	r3, r7, #7
 2372 09d2 1B78     		ldrb	r3, [r3]
 2373 09d4 042B     		cmp	r3, #4
 2374 09d6 18D8     		bhi	.L115
 2375 09d8 9A00     		lsls	r2, r3, #2
 2376 09da 0E4B     		ldr	r3, .L116
 2377 09dc D318     		adds	r3, r2, r3
 2378 09de 1B68     		ldr	r3, [r3]
 2379 09e0 9F46     		mov	pc, r3
 2380              		.section	.rodata
 2381              		.align	2
 2382              	.L110:
 2383 0020 020A0000 		.word	.L114
 2384 0024 E2090000 		.word	.L113
 2385 0028 EA090000 		.word	.L112
 2386 002c F2090000 		.word	.L111
 2387 0030 FA090000 		.word	.L109
 2388              		.text
 2389              	.L113:
 484:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		case 1: GPIO_D.odr_high = 0x10; break;
 2390              		.loc 1 484 11
 2391 09e2 0D4B     		ldr	r3, .L116+4
 2392              		.loc 1 484 27
 2393 09e4 1022     		movs	r2, #16
 2394 09e6 5A75     		strb	r2, [r3, #21]
 2395              		.loc 1 484 3
 2396 09e8 0FE0     		b	.L108
 2397              	.L112:
 485:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		case 2: GPIO_D.odr_high = 0x20; break;
 2398              		.loc 1 485 11
 2399 09ea 0B4B     		ldr	r3, .L116+4
 2400              		.loc 1 485 27
 2401 09ec 2022     		movs	r2, #32
 2402 09ee 5A75     		strb	r2, [r3, #21]
 2403              		.loc 1 485 3
 2404 09f0 0BE0     		b	.L108
 2405              	.L111:
 486:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		case 3: GPIO_D.odr_high = 0x40; break;
 2406              		.loc 1 486 11
 2407 09f2 094B     		ldr	r3, .L116+4
 2408              		.loc 1 486 27
 2409 09f4 4022     		movs	r2, #64
 2410 09f6 5A75     		strb	r2, [r3, #21]
 2411              		.loc 1 486 3
 2412 09f8 07E0     		b	.L108
 2413              	.L109:
 487:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		case 4: GPIO_D.odr_high = 0x80; break;
 2414              		.loc 1 487 11
 2415 09fa 074B     		ldr	r3, .L116+4
 2416              		.loc 1 487 27
 2417 09fc 8022     		movs	r2, #128
 2418 09fe 5A75     		strb	r2, [r3, #21]
 2419              		.loc 1 487 3
 2420 0a00 03E0     		b	.L108
 2421              	.L114:
 488:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		case 0: GPIO_D.odr_high = 0x00; break;
 2422              		.loc 1 488 11
 2423 0a02 054B     		ldr	r3, .L116+4
 2424              		.loc 1 488 27
 2425 0a04 0022     		movs	r2, #0
 2426 0a06 5A75     		strb	r2, [r3, #21]
 2427              		.loc 1 488 3
 2428 0a08 C046     		nop
 2429              	.L108:
 2430              	.L115:
 489:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 490:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 2431              		.loc 1 490 1
 2432 0a0a C046     		nop
 2433 0a0c BD46     		mov	sp, r7
 2434 0a0e 02B0     		add	sp, sp, #8
 2435              		@ sp needed
 2436 0a10 80BD     		pop	{r7, pc}
 2437              	.L117:
 2438 0a12 C046     		.align	2
 2439              	.L116:
 2440 0a14 20000000 		.word	.L110
 2441 0a18 000C0240 		.word	1073875968
 2442              		.cfi_endproc
 2443              	.LFE25:
 2445              		.align	1
 2446              		.global	ReadColumn
 2447              		.syntax unified
 2448              		.code	16
 2449              		.thumb_func
 2450              		.fpu softvfp
 2452              	ReadColumn:
 2453              	.LFB26:
 491:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** int ReadColumn (void){
 2454              		.loc 1 491 22
 2455              		.cfi_startproc
 2456              		@ args = 0, pretend = 0, frame = 8
 2457              		@ frame_needed = 1, uses_anonymous_args = 0
 2458 0a1c 80B5     		push	{r7, lr}
 2459              		.cfi_def_cfa_offset 8
 2460              		.cfi_offset 7, -8
 2461              		.cfi_offset 14, -4
 2462 0a1e 82B0     		sub	sp, sp, #8
 2463              		.cfi_def_cfa_offset 16
 2464 0a20 00AF     		add	r7, sp, #0
 2465              		.cfi_def_cfa_register 7
 492:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	unsigned char c;
 493:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	c = GPIO_D.idr_high;
 2466              		.loc 1 493 6
 2467 0a22 124A     		ldr	r2, .L124
 2468              		.loc 1 493 4
 2469 0a24 FB1D     		adds	r3, r7, #7
 2470 0a26 527C     		ldrb	r2, [r2, #17]
 2471 0a28 1A70     		strb	r2, [r3]
 494:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	if(c & 0x8) return 4;
 2472              		.loc 1 494 7
 2473 0a2a FB1D     		adds	r3, r7, #7
 2474 0a2c 1B78     		ldrb	r3, [r3]
 2475 0a2e 0822     		movs	r2, #8
 2476 0a30 1340     		ands	r3, r2
 2477              		.loc 1 494 4
 2478 0a32 01D0     		beq	.L119
 2479              		.loc 1 494 21 discriminator 1
 2480 0a34 0423     		movs	r3, #4
 2481 0a36 15E0     		b	.L120
 2482              	.L119:
 495:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	if(c & 0x4) return 3;
 2483              		.loc 1 495 7
 2484 0a38 FB1D     		adds	r3, r7, #7
 2485 0a3a 1B78     		ldrb	r3, [r3]
 2486 0a3c 0422     		movs	r2, #4
 2487 0a3e 1340     		ands	r3, r2
 2488              		.loc 1 495 4
 2489 0a40 01D0     		beq	.L121
 2490              		.loc 1 495 21 discriminator 1
 2491 0a42 0323     		movs	r3, #3
 2492 0a44 0EE0     		b	.L120
 2493              	.L121:
 496:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	if(c & 0x2) return 2;
 2494              		.loc 1 496 7
 2495 0a46 FB1D     		adds	r3, r7, #7
 2496 0a48 1B78     		ldrb	r3, [r3]
 2497 0a4a 0222     		movs	r2, #2
 2498 0a4c 1340     		ands	r3, r2
 2499              		.loc 1 496 4
 2500 0a4e 01D0     		beq	.L122
 2501              		.loc 1 496 21 discriminator 1
 2502 0a50 0223     		movs	r3, #2
 2503 0a52 07E0     		b	.L120
 2504              	.L122:
 497:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	if(c & 0x1) return 1;
 2505              		.loc 1 497 7
 2506 0a54 FB1D     		adds	r3, r7, #7
 2507 0a56 1B78     		ldrb	r3, [r3]
 2508 0a58 0122     		movs	r2, #1
 2509 0a5a 1340     		ands	r3, r2
 2510              		.loc 1 497 4
 2511 0a5c 01D0     		beq	.L123
 2512              		.loc 1 497 21 discriminator 1
 2513 0a5e 0123     		movs	r3, #1
 2514 0a60 00E0     		b	.L120
 2515              	.L123:
 498:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	return 0;
 2516              		.loc 1 498 9
 2517 0a62 0023     		movs	r3, #0
 2518              	.L120:
 499:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 2519              		.loc 1 499 1
 2520 0a64 1800     		movs	r0, r3
 2521 0a66 BD46     		mov	sp, r7
 2522 0a68 02B0     		add	sp, sp, #8
 2523              		@ sp needed
 2524 0a6a 80BD     		pop	{r7, pc}
 2525              	.L125:
 2526              		.align	2
 2527              	.L124:
 2528 0a6c 000C0240 		.word	1073875968
 2529              		.cfi_endproc
 2530              	.LFE26:
 2532              		.align	1
 2533              		.global	out7seg
 2534              		.syntax unified
 2535              		.code	16
 2536              		.thumb_func
 2537              		.fpu softvfp
 2539              	out7seg:
 2540              	.LFB27:
 500:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void out7seg(unsigned char c){
 2541              		.loc 1 500 30
 2542              		.cfi_startproc
 2543              		@ args = 0, pretend = 0, frame = 8
 2544              		@ frame_needed = 1, uses_anonymous_args = 0
 2545 0a70 80B5     		push	{r7, lr}
 2546              		.cfi_def_cfa_offset 8
 2547              		.cfi_offset 7, -8
 2548              		.cfi_offset 14, -4
 2549 0a72 82B0     		sub	sp, sp, #8
 2550              		.cfi_def_cfa_offset 16
 2551 0a74 00AF     		add	r7, sp, #0
 2552              		.cfi_def_cfa_register 7
 2553 0a76 0200     		movs	r2, r0
 2554 0a78 FB1D     		adds	r3, r7, #7
 2555 0a7a 1A70     		strb	r2, [r3]
 501:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	if (c > 0xF){
 2556              		.loc 1 501 5
 2557 0a7c FB1D     		adds	r3, r7, #7
 2558 0a7e 1B78     		ldrb	r3, [r3]
 2559 0a80 0F2B     		cmp	r3, #15
 2560 0a82 03D9     		bls	.L127
 502:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		GPIO_D.odr_low = 0x00;
 2561              		.loc 1 502 3
 2562 0a84 064B     		ldr	r3, .L130
 2563              		.loc 1 502 18
 2564 0a86 0022     		movs	r2, #0
 2565 0a88 1A75     		strb	r2, [r3, #20]
 503:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 504:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	else GPIO_D.odr_low = Segcodes[c];
 505:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 2566              		.loc 1 505 2
 2567 0a8a 05E0     		b	.L129
 2568              	.L127:
 504:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 2569              		.loc 1 504 32
 2570 0a8c FB1D     		adds	r3, r7, #7
 2571 0a8e 1B78     		ldrb	r3, [r3]
 504:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 2572              		.loc 1 504 7
 2573 0a90 0349     		ldr	r1, .L130
 504:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 2574              		.loc 1 504 32
 2575 0a92 044A     		ldr	r2, .L130+4
 2576 0a94 D35C     		ldrb	r3, [r2, r3]
 504:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 2577              		.loc 1 504 22
 2578 0a96 0B75     		strb	r3, [r1, #20]
 2579              	.L129:
 2580              		.loc 1 505 2
 2581 0a98 C046     		nop
 2582 0a9a BD46     		mov	sp, r7
 2583 0a9c 02B0     		add	sp, sp, #8
 2584              		@ sp needed
 2585 0a9e 80BD     		pop	{r7, pc}
 2586              	.L131:
 2587              		.align	2
 2588              	.L130:
 2589 0aa0 000C0240 		.word	1073875968
 2590 0aa4 00000000 		.word	Segcodes
 2591              		.cfi_endproc
 2592              	.LFE27:
 2594              		.align	1
 2595              		.global	ascii_init
 2596              		.syntax unified
 2597              		.code	16
 2598              		.thumb_func
 2599              		.fpu softvfp
 2601              	ascii_init:
 2602              	.LFB28:
 506:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
 507:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** //ascii Funktioner
 508:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void ascii_init(void){
 2603              		.loc 1 508 22
 2604              		.cfi_startproc
 2605              		@ args = 0, pretend = 0, frame = 0
 2606              		@ frame_needed = 1, uses_anonymous_args = 0
 2607 0aa8 80B5     		push	{r7, lr}
 2608              		.cfi_def_cfa_offset 8
 2609              		.cfi_offset 7, -8
 2610              		.cfi_offset 14, -4
 2611 0aaa 00AF     		add	r7, sp, #0
 2612              		.cfi_def_cfa_register 7
 509:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	while((ascii_read_status() & 0x80) == 0x80){}
 2613              		.loc 1 509 7
 2614 0aac C046     		nop
 2615              	.L133:
 2616              		.loc 1 509 9 discriminator 1
 2617 0aae FFF7FEFF 		bl	ascii_read_status
 2618 0ab2 0300     		movs	r3, r0
 2619              		.loc 1 509 29 discriminator 1
 2620 0ab4 1A00     		movs	r2, r3
 2621 0ab6 8023     		movs	r3, #128
 2622 0ab8 1340     		ands	r3, r2
 2623              		.loc 1 509 7 discriminator 1
 2624 0aba 802B     		cmp	r3, #128
 2625 0abc F7D0     		beq	.L133
 510:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		delay_mikro(8);
 2626              		.loc 1 510 3
 2627 0abe 0820     		movs	r0, #8
 2628 0ac0 FFF7FEFF 		bl	delay_mikro
 511:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		ascii_write_CMD(0x38);
 2629              		.loc 1 511 3
 2630 0ac4 3820     		movs	r0, #56
 2631 0ac6 FFF7FEFF 		bl	ascii_write_CMD
 512:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		delay_mikro(39);
 2632              		.loc 1 512 3
 2633 0aca 2720     		movs	r0, #39
 2634 0acc FFF7FEFF 		bl	delay_mikro
 513:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		ascii_write_CMD(0x0E);
 2635              		.loc 1 513 3
 2636 0ad0 0E20     		movs	r0, #14
 2637 0ad2 FFF7FEFF 		bl	ascii_write_CMD
 514:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		delay_mikro(39);
 2638              		.loc 1 514 3
 2639 0ad6 2720     		movs	r0, #39
 2640 0ad8 FFF7FEFF 		bl	delay_mikro
 515:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		ascii_write_CMD(0x06);
 2641              		.loc 1 515 3
 2642 0adc 0620     		movs	r0, #6
 2643 0ade FFF7FEFF 		bl	ascii_write_CMD
 516:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		delay_mikro(39);
 2644              		.loc 1 516 3
 2645 0ae2 2720     		movs	r0, #39
 2646 0ae4 FFF7FEFF 		bl	delay_mikro
 517:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 2647              		.loc 1 517 1
 2648 0ae8 C046     		nop
 2649 0aea BD46     		mov	sp, r7
 2650              		@ sp needed
 2651 0aec 80BD     		pop	{r7, pc}
 2652              		.cfi_endproc
 2653              	.LFE28:
 2655              		.align	1
 2656              		.global	ascii_gotoxy
 2657              		.syntax unified
 2658              		.code	16
 2659              		.thumb_func
 2660              		.fpu softvfp
 2662              	ascii_gotoxy:
 2663              	.LFB29:
 518:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void ascii_gotoxy(int x, int y){
 2664              		.loc 1 518 32
 2665              		.cfi_startproc
 2666              		@ args = 0, pretend = 0, frame = 16
 2667              		@ frame_needed = 1, uses_anonymous_args = 0
 2668 0aee 80B5     		push	{r7, lr}
 2669              		.cfi_def_cfa_offset 8
 2670              		.cfi_offset 7, -8
 2671              		.cfi_offset 14, -4
 2672 0af0 84B0     		sub	sp, sp, #16
 2673              		.cfi_def_cfa_offset 24
 2674 0af2 00AF     		add	r7, sp, #0
 2675              		.cfi_def_cfa_register 7
 2676 0af4 7860     		str	r0, [r7, #4]
 2677 0af6 3960     		str	r1, [r7]
 519:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	int address = x - 1;
 2678              		.loc 1 519 6
 2679 0af8 7B68     		ldr	r3, [r7, #4]
 2680 0afa 013B     		subs	r3, r3, #1
 2681 0afc FB60     		str	r3, [r7, #12]
 520:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	if(y == 2){
 2682              		.loc 1 520 4
 2683 0afe 3B68     		ldr	r3, [r7]
 2684 0b00 022B     		cmp	r3, #2
 2685 0b02 02D1     		bne	.L135
 521:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		address = address + 0x40;
 2686              		.loc 1 521 11
 2687 0b04 FB68     		ldr	r3, [r7, #12]
 2688 0b06 4033     		adds	r3, r3, #64
 2689 0b08 FB60     		str	r3, [r7, #12]
 2690              	.L135:
 522:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	}
 523:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	ascii_write_CMD(0x80 | address);
 2691              		.loc 1 523 23
 2692 0b0a FB68     		ldr	r3, [r7, #12]
 2693 0b0c 5BB2     		sxtb	r3, r3
 2694 0b0e 8022     		movs	r2, #128
 2695 0b10 5242     		rsbs	r2, r2, #0
 2696 0b12 1343     		orrs	r3, r2
 2697 0b14 5BB2     		sxtb	r3, r3
 2698              		.loc 1 523 2
 2699 0b16 DBB2     		uxtb	r3, r3
 2700 0b18 1800     		movs	r0, r3
 2701 0b1a FFF7FEFF 		bl	ascii_write_CMD
 524:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 2702              		.loc 1 524 1
 2703 0b1e C046     		nop
 2704 0b20 BD46     		mov	sp, r7
 2705 0b22 04B0     		add	sp, sp, #16
 2706              		@ sp needed
 2707 0b24 80BD     		pop	{r7, pc}
 2708              		.cfi_endproc
 2709              	.LFE29:
 2711              		.align	1
 2712              		.global	ascii_write_char
 2713              		.syntax unified
 2714              		.code	16
 2715              		.thumb_func
 2716              		.fpu softvfp
 2718              	ascii_write_char:
 2719              	.LFB30:
 525:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void ascii_write_char(unsigned char c){
 2720              		.loc 1 525 39
 2721              		.cfi_startproc
 2722              		@ args = 0, pretend = 0, frame = 8
 2723              		@ frame_needed = 1, uses_anonymous_args = 0
 2724 0b26 80B5     		push	{r7, lr}
 2725              		.cfi_def_cfa_offset 8
 2726              		.cfi_offset 7, -8
 2727              		.cfi_offset 14, -4
 2728 0b28 82B0     		sub	sp, sp, #8
 2729              		.cfi_def_cfa_offset 16
 2730 0b2a 00AF     		add	r7, sp, #0
 2731              		.cfi_def_cfa_register 7
 2732 0b2c 0200     		movs	r2, r0
 2733 0b2e FB1D     		adds	r3, r7, #7
 2734 0b30 1A70     		strb	r2, [r3]
 526:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	while((ascii_read_status() & 0x80) == 0x80){}
 2735              		.loc 1 526 7
 2736 0b32 C046     		nop
 2737              	.L137:
 2738              		.loc 1 526 9 discriminator 1
 2739 0b34 FFF7FEFF 		bl	ascii_read_status
 2740 0b38 0300     		movs	r3, r0
 2741              		.loc 1 526 29 discriminator 1
 2742 0b3a 1A00     		movs	r2, r3
 2743 0b3c 8023     		movs	r3, #128
 2744 0b3e 1340     		ands	r3, r2
 2745              		.loc 1 526 7 discriminator 1
 2746 0b40 802B     		cmp	r3, #128
 2747 0b42 F7D0     		beq	.L137
 527:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	delay_mikro(8);
 2748              		.loc 1 527 2
 2749 0b44 0820     		movs	r0, #8
 2750 0b46 FFF7FEFF 		bl	delay_mikro
 528:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	ascii_write_data(c);
 2751              		.loc 1 528 2
 2752 0b4a FB1D     		adds	r3, r7, #7
 2753 0b4c 1B78     		ldrb	r3, [r3]
 2754 0b4e 1800     		movs	r0, r3
 2755 0b50 FFF7FEFF 		bl	ascii_write_data
 529:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	delay_mikro(43);
 2756              		.loc 1 529 2
 2757 0b54 2B20     		movs	r0, #43
 2758 0b56 FFF7FEFF 		bl	delay_mikro
 530:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 2759              		.loc 1 530 1
 2760 0b5a C046     		nop
 2761 0b5c BD46     		mov	sp, r7
 2762 0b5e 02B0     		add	sp, sp, #8
 2763              		@ sp needed
 2764 0b60 80BD     		pop	{r7, pc}
 2765              		.cfi_endproc
 2766              	.LFE30:
 2768              		.align	1
 2769              		.global	ascii_ctrl_bit_set
 2770              		.syntax unified
 2771              		.code	16
 2772              		.thumb_func
 2773              		.fpu softvfp
 2775              	ascii_ctrl_bit_set:
 2776              	.LFB31:
 531:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
 532:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void ascii_ctrl_bit_set( unsigned char x ){ /* Funktion för att 1-ställa bitar */
 2777              		.loc 1 532 43
 2778              		.cfi_startproc
 2779              		@ args = 0, pretend = 0, frame = 16
 2780              		@ frame_needed = 1, uses_anonymous_args = 0
 2781 0b62 80B5     		push	{r7, lr}
 2782              		.cfi_def_cfa_offset 8
 2783              		.cfi_offset 7, -8
 2784              		.cfi_offset 14, -4
 2785 0b64 84B0     		sub	sp, sp, #16
 2786              		.cfi_def_cfa_offset 24
 2787 0b66 00AF     		add	r7, sp, #0
 2788              		.cfi_def_cfa_register 7
 2789 0b68 0200     		movs	r2, r0
 2790 0b6a FB1D     		adds	r3, r7, #7
 2791 0b6c 1A70     		strb	r2, [r3]
 533:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	unsigned char c;
 534:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	c = GPIO_E.odr_low;
 2792              		.loc 1 534 6
 2793 0b6e 0C4A     		ldr	r2, .L139
 2794              		.loc 1 534 4
 2795 0b70 0F21     		movs	r1, #15
 2796 0b72 7B18     		adds	r3, r7, r1
 2797 0b74 127D     		ldrb	r2, [r2, #20]
 2798 0b76 1A70     		strb	r2, [r3]
 535:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	c |= ( B_SELECT | x );
 2799              		.loc 1 535 4
 2800 0b78 FA1D     		adds	r2, r7, #7
 2801 0b7a 7B18     		adds	r3, r7, r1
 2802 0b7c 1278     		ldrb	r2, [r2]
 2803 0b7e 1B78     		ldrb	r3, [r3]
 2804 0b80 1343     		orrs	r3, r2
 2805 0b82 DAB2     		uxtb	r2, r3
 2806 0b84 0800     		movs	r0, r1
 2807 0b86 7B18     		adds	r3, r7, r1
 2808 0b88 0421     		movs	r1, #4
 2809 0b8a 0A43     		orrs	r2, r1
 2810 0b8c 1A70     		strb	r2, [r3]
 536:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	GPIO_E.odr_low = c;
 2811              		.loc 1 536 2
 2812 0b8e 044A     		ldr	r2, .L139
 2813              		.loc 1 536 17
 2814 0b90 3B18     		adds	r3, r7, r0
 2815 0b92 1B78     		ldrb	r3, [r3]
 2816 0b94 1375     		strb	r3, [r2, #20]
 537:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 2817              		.loc 1 537 1
 2818 0b96 C046     		nop
 2819 0b98 BD46     		mov	sp, r7
 2820 0b9a 04B0     		add	sp, sp, #16
 2821              		@ sp needed
 2822 0b9c 80BD     		pop	{r7, pc}
 2823              	.L140:
 2824 0b9e C046     		.align	2
 2825              	.L139:
 2826 0ba0 00100240 		.word	1073876992
 2827              		.cfi_endproc
 2828              	.LFE31:
 2830              		.align	1
 2831              		.global	ascii_ctrl_bit_clear
 2832              		.syntax unified
 2833              		.code	16
 2834              		.thumb_func
 2835              		.fpu softvfp
 2837              	ascii_ctrl_bit_clear:
 2838              	.LFB32:
 538:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void ascii_ctrl_bit_clear( unsigned char x ){
 2839              		.loc 1 538 45
 2840              		.cfi_startproc
 2841              		@ args = 0, pretend = 0, frame = 16
 2842              		@ frame_needed = 1, uses_anonymous_args = 0
 2843 0ba4 80B5     		push	{r7, lr}
 2844              		.cfi_def_cfa_offset 8
 2845              		.cfi_offset 7, -8
 2846              		.cfi_offset 14, -4
 2847 0ba6 84B0     		sub	sp, sp, #16
 2848              		.cfi_def_cfa_offset 24
 2849 0ba8 00AF     		add	r7, sp, #0
 2850              		.cfi_def_cfa_register 7
 2851 0baa 0200     		movs	r2, r0
 2852 0bac FB1D     		adds	r3, r7, #7
 2853 0bae 1A70     		strb	r2, [r3]
 539:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	unsigned char c;
 540:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	c = GPIO_E.odr_low;
 2854              		.loc 1 540 6
 2855 0bb0 0D4A     		ldr	r2, .L142
 2856              		.loc 1 540 4
 2857 0bb2 0F21     		movs	r1, #15
 2858 0bb4 7B18     		adds	r3, r7, r1
 2859 0bb6 127D     		ldrb	r2, [r2, #20]
 2860 0bb8 1A70     		strb	r2, [r3]
 541:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	c = B_SELECT | ( c & ~x );
 2861              		.loc 1 541 21
 2862 0bba FB1D     		adds	r3, r7, #7
 2863 0bbc 1B78     		ldrb	r3, [r3]
 2864 0bbe 5BB2     		sxtb	r3, r3
 2865 0bc0 DB43     		mvns	r3, r3
 2866 0bc2 5BB2     		sxtb	r3, r3
 2867 0bc4 7A18     		adds	r2, r7, r1
 2868 0bc6 1278     		ldrb	r2, [r2]
 2869 0bc8 52B2     		sxtb	r2, r2
 2870 0bca 1340     		ands	r3, r2
 2871 0bcc 5BB2     		sxtb	r3, r3
 2872              		.loc 1 541 15
 2873 0bce 0422     		movs	r2, #4
 2874 0bd0 1343     		orrs	r3, r2
 2875 0bd2 5AB2     		sxtb	r2, r3
 2876              		.loc 1 541 4
 2877 0bd4 7B18     		adds	r3, r7, r1
 2878 0bd6 1A70     		strb	r2, [r3]
 542:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	GPIO_E.odr_low = c;
 2879              		.loc 1 542 2
 2880 0bd8 034A     		ldr	r2, .L142
 2881              		.loc 1 542 17
 2882 0bda 7B18     		adds	r3, r7, r1
 2883 0bdc 1B78     		ldrb	r3, [r3]
 2884 0bde 1375     		strb	r3, [r2, #20]
 543:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** } 
 2885              		.loc 1 543 1
 2886 0be0 C046     		nop
 2887 0be2 BD46     		mov	sp, r7
 2888 0be4 04B0     		add	sp, sp, #16
 2889              		@ sp needed
 2890 0be6 80BD     		pop	{r7, pc}
 2891              	.L143:
 2892              		.align	2
 2893              	.L142:
 2894 0be8 00100240 		.word	1073876992
 2895              		.cfi_endproc
 2896              	.LFE32:
 2898              		.align	1
 2899              		.global	ascii_write_controller
 2900              		.syntax unified
 2901              		.code	16
 2902              		.thumb_func
 2903              		.fpu softvfp
 2905              	ascii_write_controller:
 2906              	.LFB33:
 544:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
 545:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void ascii_write_controller(unsigned char c){
 2907              		.loc 1 545 45
 2908              		.cfi_startproc
 2909              		@ args = 0, pretend = 0, frame = 8
 2910              		@ frame_needed = 1, uses_anonymous_args = 0
 2911 0bec 80B5     		push	{r7, lr}
 2912              		.cfi_def_cfa_offset 8
 2913              		.cfi_offset 7, -8
 2914              		.cfi_offset 14, -4
 2915 0bee 82B0     		sub	sp, sp, #8
 2916              		.cfi_def_cfa_offset 16
 2917 0bf0 00AF     		add	r7, sp, #0
 2918              		.cfi_def_cfa_register 7
 2919 0bf2 0200     		movs	r2, r0
 2920 0bf4 FB1D     		adds	r3, r7, #7
 2921 0bf6 1A70     		strb	r2, [r3]
 546:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	ascii_ctrl_bit_set(B_E);
 2922              		.loc 1 546 2
 2923 0bf8 4020     		movs	r0, #64
 2924 0bfa FFF7FEFF 		bl	ascii_ctrl_bit_set
 547:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	GPIO_E.odr_high = c;
 2925              		.loc 1 547 2
 2926 0bfe 064A     		ldr	r2, .L145
 2927              		.loc 1 547 18
 2928 0c00 FB1D     		adds	r3, r7, #7
 2929 0c02 1B78     		ldrb	r3, [r3]
 2930 0c04 5375     		strb	r3, [r2, #21]
 548:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	delay_250ns();
 2931              		.loc 1 548 2
 2932 0c06 FFF7FEFF 		bl	delay_250ns
 549:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	ascii_ctrl_bit_clear(B_E);
 2933              		.loc 1 549 2
 2934 0c0a 4020     		movs	r0, #64
 2935 0c0c FFF7FEFF 		bl	ascii_ctrl_bit_clear
 550:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 2936              		.loc 1 550 1
 2937 0c10 C046     		nop
 2938 0c12 BD46     		mov	sp, r7
 2939 0c14 02B0     		add	sp, sp, #8
 2940              		@ sp needed
 2941 0c16 80BD     		pop	{r7, pc}
 2942              	.L146:
 2943              		.align	2
 2944              	.L145:
 2945 0c18 00100240 		.word	1073876992
 2946              		.cfi_endproc
 2947              	.LFE33:
 2949              		.align	1
 2950              		.global	ascii_write_CMD
 2951              		.syntax unified
 2952              		.code	16
 2953              		.thumb_func
 2954              		.fpu softvfp
 2956              	ascii_write_CMD:
 2957              	.LFB34:
 551:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void ascii_write_CMD(unsigned char command){
 2958              		.loc 1 551 44
 2959              		.cfi_startproc
 2960              		@ args = 0, pretend = 0, frame = 8
 2961              		@ frame_needed = 1, uses_anonymous_args = 0
 2962 0c1c 80B5     		push	{r7, lr}
 2963              		.cfi_def_cfa_offset 8
 2964              		.cfi_offset 7, -8
 2965              		.cfi_offset 14, -4
 2966 0c1e 82B0     		sub	sp, sp, #8
 2967              		.cfi_def_cfa_offset 16
 2968 0c20 00AF     		add	r7, sp, #0
 2969              		.cfi_def_cfa_register 7
 2970 0c22 0200     		movs	r2, r0
 2971 0c24 FB1D     		adds	r3, r7, #7
 2972 0c26 1A70     		strb	r2, [r3]
 552:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	ascii_ctrl_bit_clear(B_RS);
 2973              		.loc 1 552 2
 2974 0c28 0120     		movs	r0, #1
 2975 0c2a FFF7FEFF 		bl	ascii_ctrl_bit_clear
 553:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	ascii_ctrl_bit_clear(B_RW);
 2976              		.loc 1 553 2
 2977 0c2e 0220     		movs	r0, #2
 2978 0c30 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 554:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	ascii_write_controller(command);
 2979              		.loc 1 554 2
 2980 0c34 FB1D     		adds	r3, r7, #7
 2981 0c36 1B78     		ldrb	r3, [r3]
 2982 0c38 1800     		movs	r0, r3
 2983 0c3a FFF7FEFF 		bl	ascii_write_controller
 555:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 2984              		.loc 1 555 1
 2985 0c3e C046     		nop
 2986 0c40 BD46     		mov	sp, r7
 2987 0c42 02B0     		add	sp, sp, #8
 2988              		@ sp needed
 2989 0c44 80BD     		pop	{r7, pc}
 2990              		.cfi_endproc
 2991              	.LFE34:
 2993              		.align	1
 2994              		.global	ascii_write_data
 2995              		.syntax unified
 2996              		.code	16
 2997              		.thumb_func
 2998              		.fpu softvfp
 3000              	ascii_write_data:
 3001              	.LFB35:
 556:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void ascii_write_data(unsigned char data){
 3002              		.loc 1 556 42
 3003              		.cfi_startproc
 3004              		@ args = 0, pretend = 0, frame = 8
 3005              		@ frame_needed = 1, uses_anonymous_args = 0
 3006 0c46 80B5     		push	{r7, lr}
 3007              		.cfi_def_cfa_offset 8
 3008              		.cfi_offset 7, -8
 3009              		.cfi_offset 14, -4
 3010 0c48 82B0     		sub	sp, sp, #8
 3011              		.cfi_def_cfa_offset 16
 3012 0c4a 00AF     		add	r7, sp, #0
 3013              		.cfi_def_cfa_register 7
 3014 0c4c 0200     		movs	r2, r0
 3015 0c4e FB1D     		adds	r3, r7, #7
 3016 0c50 1A70     		strb	r2, [r3]
 557:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	ascii_ctrl_bit_set(B_RS);
 3017              		.loc 1 557 2
 3018 0c52 0120     		movs	r0, #1
 3019 0c54 FFF7FEFF 		bl	ascii_ctrl_bit_set
 558:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	ascii_ctrl_bit_clear(B_RW);
 3020              		.loc 1 558 2
 3021 0c58 0220     		movs	r0, #2
 3022 0c5a FFF7FEFF 		bl	ascii_ctrl_bit_clear
 559:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	ascii_write_controller(data);
 3023              		.loc 1 559 2
 3024 0c5e FB1D     		adds	r3, r7, #7
 3025 0c60 1B78     		ldrb	r3, [r3]
 3026 0c62 1800     		movs	r0, r3
 3027 0c64 FFF7FEFF 		bl	ascii_write_controller
 560:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 3028              		.loc 1 560 1
 3029 0c68 C046     		nop
 3030 0c6a BD46     		mov	sp, r7
 3031 0c6c 02B0     		add	sp, sp, #8
 3032              		@ sp needed
 3033 0c6e 80BD     		pop	{r7, pc}
 3034              		.cfi_endproc
 3035              	.LFE35:
 3037              		.align	1
 3038              		.global	ascii_read_controller
 3039              		.syntax unified
 3040              		.code	16
 3041              		.thumb_func
 3042              		.fpu softvfp
 3044              	ascii_read_controller:
 3045              	.LFB36:
 561:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** unsigned char ascii_read_controller(void){
 3046              		.loc 1 561 42
 3047              		.cfi_startproc
 3048              		@ args = 0, pretend = 0, frame = 8
 3049              		@ frame_needed = 1, uses_anonymous_args = 0
 3050 0c70 80B5     		push	{r7, lr}
 3051              		.cfi_def_cfa_offset 8
 3052              		.cfi_offset 7, -8
 3053              		.cfi_offset 14, -4
 3054 0c72 82B0     		sub	sp, sp, #8
 3055              		.cfi_def_cfa_offset 16
 3056 0c74 00AF     		add	r7, sp, #0
 3057              		.cfi_def_cfa_register 7
 562:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	ascii_ctrl_bit_set(B_E);
 3058              		.loc 1 562 2
 3059 0c76 4020     		movs	r0, #64
 3060 0c78 FFF7FEFF 		bl	ascii_ctrl_bit_set
 563:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	delay_250ns();
 3061              		.loc 1 563 2
 3062 0c7c FFF7FEFF 		bl	delay_250ns
 564:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	delay_250ns();
 3063              		.loc 1 564 2
 3064 0c80 FFF7FEFF 		bl	delay_250ns
 565:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	unsigned char r = GPIO_E.idr_high;
 3065              		.loc 1 565 20
 3066 0c84 064A     		ldr	r2, .L151
 3067              		.loc 1 565 16
 3068 0c86 FB1D     		adds	r3, r7, #7
 3069 0c88 527C     		ldrb	r2, [r2, #17]
 3070 0c8a 1A70     		strb	r2, [r3]
 566:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	ascii_ctrl_bit_clear(B_E);
 3071              		.loc 1 566 2
 3072 0c8c 4020     		movs	r0, #64
 3073 0c8e FFF7FEFF 		bl	ascii_ctrl_bit_clear
 567:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	return r;
 3074              		.loc 1 567 9
 3075 0c92 FB1D     		adds	r3, r7, #7
 3076 0c94 1B78     		ldrb	r3, [r3]
 568:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 3077              		.loc 1 568 1
 3078 0c96 1800     		movs	r0, r3
 3079 0c98 BD46     		mov	sp, r7
 3080 0c9a 02B0     		add	sp, sp, #8
 3081              		@ sp needed
 3082 0c9c 80BD     		pop	{r7, pc}
 3083              	.L152:
 3084 0c9e C046     		.align	2
 3085              	.L151:
 3086 0ca0 00100240 		.word	1073876992
 3087              		.cfi_endproc
 3088              	.LFE36:
 3090              		.align	1
 3091              		.global	ascii_read_status
 3092              		.syntax unified
 3093              		.code	16
 3094              		.thumb_func
 3095              		.fpu softvfp
 3097              	ascii_read_status:
 3098              	.LFB37:
 569:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** unsigned char ascii_read_status(void){
 3099              		.loc 1 569 38
 3100              		.cfi_startproc
 3101              		@ args = 0, pretend = 0, frame = 8
 3102              		@ frame_needed = 1, uses_anonymous_args = 0
 3103 0ca4 90B5     		push	{r4, r7, lr}
 3104              		.cfi_def_cfa_offset 12
 3105              		.cfi_offset 4, -12
 3106              		.cfi_offset 7, -8
 3107              		.cfi_offset 14, -4
 3108 0ca6 83B0     		sub	sp, sp, #12
 3109              		.cfi_def_cfa_offset 24
 3110 0ca8 00AF     		add	r7, sp, #0
 3111              		.cfi_def_cfa_register 7
 570:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	GPIO_E.moder = 0x00005555;
 3112              		.loc 1 570 2
 3113 0caa 0B4B     		ldr	r3, .L155
 3114              		.loc 1 570 15
 3115 0cac 0B4A     		ldr	r2, .L155+4
 3116 0cae 1A60     		str	r2, [r3]
 571:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	ascii_ctrl_bit_clear(B_RS);
 3117              		.loc 1 571 2
 3118 0cb0 0120     		movs	r0, #1
 3119 0cb2 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 572:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	ascii_ctrl_bit_set(B_RW);
 3120              		.loc 1 572 2
 3121 0cb6 0220     		movs	r0, #2
 3122 0cb8 FFF7FEFF 		bl	ascii_ctrl_bit_set
 573:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	unsigned char r = ascii_read_controller();
 3123              		.loc 1 573 20
 3124 0cbc FC1D     		adds	r4, r7, #7
 3125 0cbe FFF7FEFF 		bl	ascii_read_controller
 3126 0cc2 0300     		movs	r3, r0
 3127 0cc4 2370     		strb	r3, [r4]
 574:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	GPIO_E.moder = 0x55555555;
 3128              		.loc 1 574 2
 3129 0cc6 044B     		ldr	r3, .L155
 3130              		.loc 1 574 15
 3131 0cc8 054A     		ldr	r2, .L155+8
 3132 0cca 1A60     		str	r2, [r3]
 575:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	return r;
 3133              		.loc 1 575 9
 3134 0ccc FB1D     		adds	r3, r7, #7
 3135 0cce 1B78     		ldrb	r3, [r3]
 576:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 3136              		.loc 1 576 1
 3137 0cd0 1800     		movs	r0, r3
 3138 0cd2 BD46     		mov	sp, r7
 3139 0cd4 03B0     		add	sp, sp, #12
 3140              		@ sp needed
 3141 0cd6 90BD     		pop	{r4, r7, pc}
 3142              	.L156:
 3143              		.align	2
 3144              	.L155:
 3145 0cd8 00100240 		.word	1073876992
 3146 0cdc 55550000 		.word	21845
 3147 0ce0 55555555 		.word	1431655765
 3148              		.cfi_endproc
 3149              	.LFE37:
 3151              		.align	1
 3152              		.global	ascii_read_data
 3153              		.syntax unified
 3154              		.code	16
 3155              		.thumb_func
 3156              		.fpu softvfp
 3158              	ascii_read_data:
 3159              	.LFB38:
 577:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** unsigned char ascii_read_data(void){
 3160              		.loc 1 577 36
 3161              		.cfi_startproc
 3162              		@ args = 0, pretend = 0, frame = 8
 3163              		@ frame_needed = 1, uses_anonymous_args = 0
 3164 0ce4 80B5     		push	{r7, lr}
 3165              		.cfi_def_cfa_offset 8
 3166              		.cfi_offset 7, -8
 3167              		.cfi_offset 14, -4
 3168 0ce6 82B0     		sub	sp, sp, #8
 3169              		.cfi_def_cfa_offset 16
 3170 0ce8 00AF     		add	r7, sp, #0
 3171              		.cfi_def_cfa_register 7
 578:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	unsigned char rv;
 579:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	GPIO_E.moder = 0x00005555;
 3172              		.loc 1 579 2
 3173 0cea 0A4B     		ldr	r3, .L159
 3174              		.loc 1 579 15
 3175 0cec 0A4A     		ldr	r2, .L159+4
 3176 0cee 1A60     		str	r2, [r3]
 580:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	ascii_ctrl_bit_set(B_RS);
 3177              		.loc 1 580 2
 3178 0cf0 0120     		movs	r0, #1
 3179 0cf2 FFF7FEFF 		bl	ascii_ctrl_bit_set
 581:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	ascii_ctrl_bit_set(B_RW);
 3180              		.loc 1 581 2
 3181 0cf6 0220     		movs	r0, #2
 3182 0cf8 FFF7FEFF 		bl	ascii_ctrl_bit_set
 582:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	rv = ascii_read_controller;
 3183              		.loc 1 582 5
 3184 0cfc 074A     		ldr	r2, .L159+8
 3185 0cfe FB1D     		adds	r3, r7, #7
 3186 0d00 1A70     		strb	r2, [r3]
 583:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	GPIO_E.moder = 0x55555555;
 3187              		.loc 1 583 2
 3188 0d02 044B     		ldr	r3, .L159
 3189              		.loc 1 583 15
 3190 0d04 064A     		ldr	r2, .L159+12
 3191 0d06 1A60     		str	r2, [r3]
 584:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	return rv;
 3192              		.loc 1 584 9
 3193 0d08 FB1D     		adds	r3, r7, #7
 3194 0d0a 1B78     		ldrb	r3, [r3]
 585:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 3195              		.loc 1 585 1
 3196 0d0c 1800     		movs	r0, r3
 3197 0d0e BD46     		mov	sp, r7
 3198 0d10 02B0     		add	sp, sp, #8
 3199              		@ sp needed
 3200 0d12 80BD     		pop	{r7, pc}
 3201              	.L160:
 3202              		.align	2
 3203              	.L159:
 3204 0d14 00100240 		.word	1073876992
 3205 0d18 55550000 		.word	21845
 3206 0d1c 00000000 		.word	ascii_read_controller
 3207 0d20 55555555 		.word	1431655765
 3208              		.cfi_endproc
 3209              	.LFE38:
 3211              		.align	1
 3212              		.global	ascii_clear_dsplay
 3213              		.syntax unified
 3214              		.code	16
 3215              		.thumb_func
 3216              		.fpu softvfp
 3218              	ascii_clear_dsplay:
 3219              	.LFB39:
 586:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void ascii_clear_dsplay(void){
 3220              		.loc 1 586 30
 3221              		.cfi_startproc
 3222              		@ args = 0, pretend = 0, frame = 0
 3223              		@ frame_needed = 1, uses_anonymous_args = 0
 3224 0d24 80B5     		push	{r7, lr}
 3225              		.cfi_def_cfa_offset 8
 3226              		.cfi_offset 7, -8
 3227              		.cfi_offset 14, -4
 3228 0d26 00AF     		add	r7, sp, #0
 3229              		.cfi_def_cfa_register 7
 587:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	ascii_write_CMD(1);
 3230              		.loc 1 587 2
 3231 0d28 0120     		movs	r0, #1
 3232 0d2a FFF7FEFF 		bl	ascii_write_CMD
 588:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 3233              		.loc 1 588 1
 3234 0d2e C046     		nop
 3235 0d30 BD46     		mov	sp, r7
 3236              		@ sp needed
 3237 0d32 80BD     		pop	{r7, pc}
 3238              		.cfi_endproc
 3239              	.LFE39:
 3241              		.align	1
 3242              		.global	print_to_ascii
 3243              		.syntax unified
 3244              		.code	16
 3245              		.thumb_func
 3246              		.fpu softvfp
 3248              	print_to_ascii:
 3249              	.LFB40:
 589:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** //skriver ut det som finns i PAscii till AsciiDisplayen.
 590:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void print_to_ascii(char line[], signed char x, char i){		
 3250              		.loc 1 590 56
 3251              		.cfi_startproc
 3252              		@ args = 0, pretend = 0, frame = 8
 3253              		@ frame_needed = 1, uses_anonymous_args = 0
 3254 0d34 80B5     		push	{r7, lr}
 3255              		.cfi_def_cfa_offset 8
 3256              		.cfi_offset 7, -8
 3257              		.cfi_offset 14, -4
 3258 0d36 82B0     		sub	sp, sp, #8
 3259              		.cfi_def_cfa_offset 16
 3260 0d38 00AF     		add	r7, sp, #0
 3261              		.cfi_def_cfa_register 7
 3262 0d3a 7860     		str	r0, [r7, #4]
 3263 0d3c 0800     		movs	r0, r1
 3264 0d3e 1100     		movs	r1, r2
 3265 0d40 FB1C     		adds	r3, r7, #3
 3266 0d42 021C     		adds	r2, r0, #0
 3267 0d44 1A70     		strb	r2, [r3]
 3268 0d46 BB1C     		adds	r3, r7, #2
 3269 0d48 0A1C     		adds	r2, r1, #0
 3270 0d4a 1A70     		strb	r2, [r3]
 591:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		ascii_gotoxy(1,i);
 3271              		.loc 1 591 3
 3272 0d4c BB1C     		adds	r3, r7, #2
 3273 0d4e 1B78     		ldrb	r3, [r3]
 3274 0d50 1900     		movs	r1, r3
 3275 0d52 0120     		movs	r0, #1
 3276 0d54 FFF7FEFF 		bl	ascii_gotoxy
 592:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		while(*line)
 3277              		.loc 1 592 8
 3278 0d58 06E0     		b	.L163
 3279              	.L164:
 593:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			ascii_write_char(*line++);
 3280              		.loc 1 593 26
 3281 0d5a 7B68     		ldr	r3, [r7, #4]
 3282 0d5c 5A1C     		adds	r2, r3, #1
 3283 0d5e 7A60     		str	r2, [r7, #4]
 3284              		.loc 1 593 4
 3285 0d60 1B78     		ldrb	r3, [r3]
 3286 0d62 1800     		movs	r0, r3
 3287 0d64 FFF7FEFF 		bl	ascii_write_char
 3288              	.L163:
 592:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		while(*line)
 3289              		.loc 1 592 9
 3290 0d68 7B68     		ldr	r3, [r7, #4]
 3291 0d6a 1B78     		ldrb	r3, [r3]
 592:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		while(*line)
 3292              		.loc 1 592 8
 3293 0d6c 002B     		cmp	r3, #0
 3294 0d6e F4D1     		bne	.L164
 594:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		if(x >= 0){ //If X is negative, don't print the players point.
 3295              		.loc 1 594 5
 3296 0d70 FB1C     		adds	r3, r7, #3
 3297 0d72 1B78     		ldrb	r3, [r3]
 3298 0d74 7F2B     		cmp	r3, #127
 3299 0d76 04D8     		bhi	.L166
 595:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			ascii_write_char(x);
 3300              		.loc 1 595 4
 3301 0d78 FB1C     		adds	r3, r7, #3
 3302 0d7a 1B78     		ldrb	r3, [r3]
 3303 0d7c 1800     		movs	r0, r3
 3304 0d7e FFF7FEFF 		bl	ascii_write_char
 3305              	.L166:
 596:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		}
 597:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
 598:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 3306              		.loc 1 598 1
 3307 0d82 C046     		nop
 3308 0d84 BD46     		mov	sp, r7
 3309 0d86 02B0     		add	sp, sp, #8
 3310              		@ sp needed
 3311 0d88 80BD     		pop	{r7, pc}
 3312              		.cfi_endproc
 3313              	.LFE40:
 3315              		.align	1
 3316              		.global	init_app
 3317              		.syntax unified
 3318              		.code	16
 3319              		.thumb_func
 3320              		.fpu softvfp
 3322              	init_app:
 3323              	.LFB41:
 599:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
 600:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** //Sets values to their initiall value.
 601:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void init_app(void){ 
 3324              		.loc 1 601 20
 3325              		.cfi_startproc
 3326              		@ args = 0, pretend = 0, frame = 0
 3327              		@ frame_needed = 1, uses_anonymous_args = 0
 3328 0d8a 80B5     		push	{r7, lr}
 3329              		.cfi_def_cfa_offset 8
 3330              		.cfi_offset 7, -8
 3331              		.cfi_offset 14, -4
 3332 0d8c 00AF     		add	r7, sp, #0
 3333              		.cfi_def_cfa_register 7
 602:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	//#ifdef USBDM
 603:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	//	*((unsigned long*)0x40023830) = 0x18;
 604:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	//	__asm volatile( "LDR R0, =0x8000209\n BLX R0\n");
 605:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	//#endif
 606:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	
 607:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	
 608:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	GPIO_E.moder = 0x55555555;
 3334              		.loc 1 608 2
 3335 0d8e 084B     		ldr	r3, .L168
 3336              		.loc 1 608 15
 3337 0d90 084A     		ldr	r2, .L168+4
 3338 0d92 1A60     		str	r2, [r3]
 609:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	GPIO_D.moder = 0x55005555;
 3339              		.loc 1 609 2
 3340 0d94 084B     		ldr	r3, .L168+8
 3341              		.loc 1 609 15
 3342 0d96 094A     		ldr	r2, .L168+12
 3343 0d98 1A60     		str	r2, [r3]
 610:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	GPIO_D.otyper = 0x0F00;
 3344              		.loc 1 610 2
 3345 0d9a 074B     		ldr	r3, .L168+8
 3346              		.loc 1 610 16
 3347 0d9c F022     		movs	r2, #240
 3348 0d9e 1201     		lsls	r2, r2, #4
 3349 0da0 9A80     		strh	r2, [r3, #4]
 611:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	GPIO_D.pupdr = 0xAAAA0000;
 3350              		.loc 1 611 2
 3351 0da2 054B     		ldr	r3, .L168+8
 3352              		.loc 1 611 15
 3353 0da4 064A     		ldr	r2, .L168+16
 3354 0da6 DA60     		str	r2, [r3, #12]
 612:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }	
 3355              		.loc 1 612 1
 3356 0da8 C046     		nop
 3357 0daa BD46     		mov	sp, r7
 3358              		@ sp needed
 3359 0dac 80BD     		pop	{r7, pc}
 3360              	.L169:
 3361 0dae C046     		.align	2
 3362              	.L168:
 3363 0db0 00100240 		.word	1073876992
 3364 0db4 55555555 		.word	1431655765
 3365 0db8 000C0240 		.word	1073875968
 3366 0dbc 55550055 		.word	1426085205
 3367 0dc0 0000AAAA 		.word	-1431699456
 3368              		.cfi_endproc
 3369              	.LFE41:
 3371              		.align	1
 3372              		.global	game_init
 3373              		.syntax unified
 3374              		.code	16
 3375              		.thumb_func
 3376              		.fpu softvfp
 3378              	game_init:
 3379              	.LFB42:
 613:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void game_init(POBJECT BALL, PPLAYER P1, PPLAYER P2){
 3380              		.loc 1 613 53
 3381              		.cfi_startproc
 3382              		@ args = 0, pretend = 0, frame = 16
 3383              		@ frame_needed = 1, uses_anonymous_args = 0
 3384 0dc4 80B5     		push	{r7, lr}
 3385              		.cfi_def_cfa_offset 8
 3386              		.cfi_offset 7, -8
 3387              		.cfi_offset 14, -4
 3388 0dc6 84B0     		sub	sp, sp, #16
 3389              		.cfi_def_cfa_offset 24
 3390 0dc8 00AF     		add	r7, sp, #0
 3391              		.cfi_def_cfa_register 7
 3392 0dca F860     		str	r0, [r7, #12]
 3393 0dcc B960     		str	r1, [r7, #8]
 3394 0dce 7A60     		str	r2, [r7, #4]
 614:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		//Reset points
 615:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		P1->points = 0;
 3395              		.loc 1 615 14
 3396 0dd0 BB68     		ldr	r3, [r7, #8]
 3397 0dd2 0022     		movs	r2, #0
 3398 0dd4 5A60     		str	r2, [r3, #4]
 616:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		P2->points = 0;
 3399              		.loc 1 616 14
 3400 0dd6 7B68     		ldr	r3, [r7, #4]
 3401 0dd8 0022     		movs	r2, #0
 3402 0dda 5A60     		str	r2, [r3, #4]
 617:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		// Reset bouncer positions.
 618:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		P1->objct->posx = 6;
 3403              		.loc 1 618 5
 3404 0ddc BB68     		ldr	r3, [r7, #8]
 3405 0dde 1B68     		ldr	r3, [r3]
 3406              		.loc 1 618 19
 3407 0de0 0622     		movs	r2, #6
 3408 0de2 DA60     		str	r2, [r3, #12]
 619:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		P1->objct->posy = 32;
 3409              		.loc 1 619 5
 3410 0de4 BB68     		ldr	r3, [r7, #8]
 3411 0de6 1B68     		ldr	r3, [r3]
 3412              		.loc 1 619 19
 3413 0de8 2022     		movs	r2, #32
 3414 0dea 1A61     		str	r2, [r3, #16]
 620:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		P2->objct->posx = LCD_WIDTH - 6;
 3415              		.loc 1 620 5
 3416 0dec 7B68     		ldr	r3, [r7, #4]
 3417 0dee 1B68     		ldr	r3, [r3]
 3418              		.loc 1 620 19
 3419 0df0 7A22     		movs	r2, #122
 3420 0df2 DA60     		str	r2, [r3, #12]
 621:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		P2->objct->posy = 32;
 3421              		.loc 1 621 5
 3422 0df4 7B68     		ldr	r3, [r7, #4]
 3423 0df6 1B68     		ldr	r3, [r3]
 3424              		.loc 1 621 19
 3425 0df8 2022     		movs	r2, #32
 3426 0dfa 1A61     		str	r2, [r3, #16]
 622:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		
 623:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		//Clears LCD screen
 624:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		graphic_clear_screen();
 3427              		.loc 1 624 3
 3428 0dfc FFF7FEFF 		bl	graphic_clear_screen
 625:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		
 626:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		// Writes the startup values to the AsciiDisplay.
 627:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		ascii_clear_dsplay();
 3429              		.loc 1 627 3
 3430 0e00 FFF7FEFF 		bl	ascii_clear_dsplay
 628:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		print_to_ascii(Player1.PAscii,'0' + Player1.points, 1);
 3431              		.loc 1 628 46
 3432 0e04 194B     		ldr	r3, .L171
 3433 0e06 5B68     		ldr	r3, [r3, #4]
 3434              		.loc 1 628 37
 3435 0e08 DBB2     		uxtb	r3, r3
 3436 0e0a 3033     		adds	r3, r3, #48
 3437 0e0c DBB2     		uxtb	r3, r3
 3438              		.loc 1 628 3
 3439 0e0e 59B2     		sxtb	r1, r3
 3440 0e10 174B     		ldr	r3, .L171+4
 3441 0e12 0122     		movs	r2, #1
 3442 0e14 1800     		movs	r0, r3
 3443 0e16 FFF7FEFF 		bl	print_to_ascii
 629:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		print_to_ascii(Player2.PAscii,'0' + Player2.points, 2);
 3444              		.loc 1 629 46
 3445 0e1a 164B     		ldr	r3, .L171+8
 3446 0e1c 5B68     		ldr	r3, [r3, #4]
 3447              		.loc 1 629 37
 3448 0e1e DBB2     		uxtb	r3, r3
 3449 0e20 3033     		adds	r3, r3, #48
 3450 0e22 DBB2     		uxtb	r3, r3
 3451              		.loc 1 629 3
 3452 0e24 59B2     		sxtb	r1, r3
 3453 0e26 144B     		ldr	r3, .L171+12
 3454 0e28 0222     		movs	r2, #2
 3455 0e2a 1800     		movs	r0, r3
 3456 0e2c FFF7FEFF 		bl	print_to_ascii
 630:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		
 631:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		P1->objct->move(P1->objct); //Flyttar P1 "pinne"
 3457              		.loc 1 631 5
 3458 0e30 BB68     		ldr	r3, [r7, #8]
 3459 0e32 1B68     		ldr	r3, [r3]
 3460              		.loc 1 631 12
 3461 0e34 DA69     		ldr	r2, [r3, #28]
 3462              		.loc 1 631 21
 3463 0e36 BB68     		ldr	r3, [r7, #8]
 3464 0e38 1B68     		ldr	r3, [r3]
 3465              		.loc 1 631 3
 3466 0e3a 1800     		movs	r0, r3
 3467 0e3c 9047     		blx	r2
 3468              	.LVL5:
 632:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		P2->objct->move(P2->objct); //Flyttar P2 "pinne"
 3469              		.loc 1 632 5
 3470 0e3e 7B68     		ldr	r3, [r7, #4]
 3471 0e40 1B68     		ldr	r3, [r3]
 3472              		.loc 1 632 12
 3473 0e42 DA69     		ldr	r2, [r3, #28]
 3474              		.loc 1 632 21
 3475 0e44 7B68     		ldr	r3, [r7, #4]
 3476 0e46 1B68     		ldr	r3, [r3]
 3477              		.loc 1 632 3
 3478 0e48 1800     		movs	r0, r3
 3479 0e4a 9047     		blx	r2
 3480              	.LVL6:
 633:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		
 634:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		// Gives the ball it's speedfactor.
 635:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		BALL->set_speed(BALL,2,1);
 3481              		.loc 1 635 7
 3482 0e4c FB68     		ldr	r3, [r7, #12]
 3483 0e4e 1B6A     		ldr	r3, [r3, #32]
 3484              		.loc 1 635 3
 3485 0e50 F868     		ldr	r0, [r7, #12]
 3486 0e52 0122     		movs	r2, #1
 3487 0e54 0221     		movs	r1, #2
 3488 0e56 9847     		blx	r3
 3489              	.LVL7:
 636:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		delay_milli(300);
 3490              		.loc 1 636 3
 3491 0e58 9623     		movs	r3, #150
 3492 0e5a 5B00     		lsls	r3, r3, #1
 3493 0e5c 1800     		movs	r0, r3
 3494 0e5e FFF7FEFF 		bl	delay_milli
 637:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** }
 3495              		.loc 1 637 1
 3496 0e62 C046     		nop
 3497 0e64 BD46     		mov	sp, r7
 3498 0e66 04B0     		add	sp, sp, #16
 3499              		@ sp needed
 3500 0e68 80BD     		pop	{r7, pc}
 3501              	.L172:
 3502 0e6a C046     		.align	2
 3503              	.L171:
 3504 0e6c F4000000 		.word	Player1
 3505 0e70 FC000000 		.word	Player1+8
 3506 0e74 14010000 		.word	Player2
 3507 0e78 1C010000 		.word	Player2+8
 3508              		.cfi_endproc
 3509              	.LFE42:
 3511              		.section	.rodata
 3512              		.align	2
 3513              	.LC16:
 3514 0034 50726573 		.ascii	"Press 5 to restart\000"
 3514      73203520 
 3514      746F2072 
 3514      65737461 
 3514      727400
 3515              		.text
 3516              		.align	1
 3517              		.global	main
 3518              		.syntax unified
 3519              		.code	16
 3520              		.thumb_func
 3521              		.fpu softvfp
 3523              	main:
 3524              	.LFB43:
 638:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
 639:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** void main(void){
 3525              		.loc 1 639 16
 3526              		.cfi_startproc
 3527              		@ args = 0, pretend = 0, frame = 40
 3528              		@ frame_needed = 1, uses_anonymous_args = 0
 3529 0e7c B0B5     		push	{r4, r5, r7, lr}
 3530              		.cfi_def_cfa_offset 16
 3531              		.cfi_offset 4, -16
 3532              		.cfi_offset 5, -12
 3533              		.cfi_offset 7, -8
 3534              		.cfi_offset 14, -4
 3535 0e7e 8AB0     		sub	sp, sp, #40
 3536              		.cfi_def_cfa_offset 56
 3537 0e80 00AF     		add	r7, sp, #0
 3538              		.cfi_def_cfa_register 7
 640:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	char c;
 641:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	POBJECT BALL = &ball;
 3539              		.loc 1 641 10
 3540 0e82 6A4B     		ldr	r3, .L186
 3541 0e84 3B62     		str	r3, [r7, #32]
 642:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	PPLAYER P1 = &Player1;
 3542              		.loc 1 642 10
 3543 0e86 6A4B     		ldr	r3, .L186+4
 3544 0e88 FB61     		str	r3, [r7, #28]
 643:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	PPLAYER P2 = &Player2;
 3545              		.loc 1 643 10
 3546 0e8a 6A4B     		ldr	r3, .L186+8
 3547 0e8c BB61     		str	r3, [r7, #24]
 644:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	
 645:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	init_app(); //Initierar register
 3548              		.loc 1 645 2
 3549 0e8e FFF7FEFF 		bl	init_app
 646:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	ascii_init(); //Initierar Ascii displayen
 3550              		.loc 1 646 2
 3551 0e92 FFF7FEFF 		bl	ascii_init
 647:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	graphic_initialize(); //initierar LC displayen
 3552              		.loc 1 647 2
 3553 0e96 FFF7FEFF 		bl	graphic_initialize
 648:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	game_init(BALL, P1, P2); //initierar spelet
 3554              		.loc 1 648 2
 3555 0e9a BA69     		ldr	r2, [r7, #24]
 3556 0e9c F969     		ldr	r1, [r7, #28]
 3557 0e9e 3B6A     		ldr	r3, [r7, #32]
 3558 0ea0 1800     		movs	r0, r3
 3559 0ea2 FFF7FEFF 		bl	game_init
 3560              	.L185:
 649:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 	while(1){
 650:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		BALL->move(BALL); //sätter bollen i rörelse
 3561              		.loc 1 650 7
 3562 0ea6 3B6A     		ldr	r3, [r7, #32]
 3563 0ea8 DB69     		ldr	r3, [r3, #28]
 3564              		.loc 1 650 3
 3565 0eaa 3A6A     		ldr	r2, [r7, #32]
 3566 0eac 1000     		movs	r0, r2
 3567 0eae 9847     		blx	r3
 3568              	.LVL8:
 651:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		delay_milli(10);
 3569              		.loc 1 651 3
 3570 0eb0 0A20     		movs	r0, #10
 3571 0eb2 FFF7FEFF 		bl	delay_milli
 652:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		c = keyb(); //Kollar om någon tryckt
 3572              		.loc 1 652 7
 3573 0eb6 1725     		movs	r5, #23
 3574 0eb8 7C19     		adds	r4, r7, r5
 3575 0eba FFF7FEFF 		bl	keyb
 3576 0ebe 0300     		movs	r3, r0
 3577 0ec0 2370     		strb	r3, [r4]
 653:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		GPIO_D.odr_low = c;
 3578              		.loc 1 653 3
 3579 0ec2 5D4A     		ldr	r2, .L186+12
 3580              		.loc 1 653 18
 3581 0ec4 7B19     		adds	r3, r7, r5
 3582 0ec6 1B78     		ldrb	r3, [r3]
 3583 0ec8 1375     		strb	r3, [r2, #20]
 654:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		switch(c){
 3584              		.loc 1 654 3
 3585 0eca 7B19     		adds	r3, r7, r5
 3586 0ecc 1B78     		ldrb	r3, [r3]
 3587 0ece 092B     		cmp	r3, #9
 3588 0ed0 3DD0     		beq	.L174
 3589 0ed2 4DDC     		bgt	.L175
 3590 0ed4 072B     		cmp	r3, #7
 3591 0ed6 17D0     		beq	.L176
 3592 0ed8 4ADC     		bgt	.L175
 3593 0eda 012B     		cmp	r3, #1
 3594 0edc 02D0     		beq	.L177
 3595 0ede 032B     		cmp	r3, #3
 3596 0ee0 23D0     		beq	.L178
 3597 0ee2 45E0     		b	.L175
 3598              	.L177:
 655:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			case 1: P1->objct->set_speed(P1->objct, 0, -2);
 3599              		.loc 1 655 14
 3600 0ee4 FB69     		ldr	r3, [r7, #28]
 3601 0ee6 1B68     		ldr	r3, [r3]
 3602              		.loc 1 655 21
 3603 0ee8 1C6A     		ldr	r4, [r3, #32]
 3604              		.loc 1 655 35
 3605 0eea FB69     		ldr	r3, [r7, #28]
 3606 0eec 1B68     		ldr	r3, [r3]
 3607              		.loc 1 655 12
 3608 0eee 0222     		movs	r2, #2
 3609 0ef0 5242     		rsbs	r2, r2, #0
 3610 0ef2 0021     		movs	r1, #0
 3611 0ef4 1800     		movs	r0, r3
 3612 0ef6 A047     		blx	r4
 3613              	.LVL9:
 656:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 				P1->objct->move(P1->objct);
 3614              		.loc 1 656 7
 3615 0ef8 FB69     		ldr	r3, [r7, #28]
 3616 0efa 1B68     		ldr	r3, [r3]
 3617              		.loc 1 656 14
 3618 0efc DA69     		ldr	r2, [r3, #28]
 3619              		.loc 1 656 23
 3620 0efe FB69     		ldr	r3, [r7, #28]
 3621 0f00 1B68     		ldr	r3, [r3]
 3622              		.loc 1 656 5
 3623 0f02 1800     		movs	r0, r3
 3624 0f04 9047     		blx	r2
 3625              	.LVL10:
 657:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 				break;
 3626              		.loc 1 657 5
 3627 0f06 33E0     		b	.L175
 3628              	.L176:
 658:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			case 7: P1->objct->set_speed(P1->objct, 0, 2);
 3629              		.loc 1 658 14
 3630 0f08 FB69     		ldr	r3, [r7, #28]
 3631 0f0a 1B68     		ldr	r3, [r3]
 3632              		.loc 1 658 21
 3633 0f0c 1C6A     		ldr	r4, [r3, #32]
 3634              		.loc 1 658 35
 3635 0f0e FB69     		ldr	r3, [r7, #28]
 3636 0f10 1B68     		ldr	r3, [r3]
 3637              		.loc 1 658 12
 3638 0f12 0222     		movs	r2, #2
 3639 0f14 0021     		movs	r1, #0
 3640 0f16 1800     		movs	r0, r3
 3641 0f18 A047     		blx	r4
 3642              	.LVL11:
 659:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 				P1->objct->move(P1->objct);
 3643              		.loc 1 659 7
 3644 0f1a FB69     		ldr	r3, [r7, #28]
 3645 0f1c 1B68     		ldr	r3, [r3]
 3646              		.loc 1 659 14
 3647 0f1e DA69     		ldr	r2, [r3, #28]
 3648              		.loc 1 659 23
 3649 0f20 FB69     		ldr	r3, [r7, #28]
 3650 0f22 1B68     		ldr	r3, [r3]
 3651              		.loc 1 659 5
 3652 0f24 1800     		movs	r0, r3
 3653 0f26 9047     		blx	r2
 3654              	.LVL12:
 660:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 				break;
 3655              		.loc 1 660 5
 3656 0f28 22E0     		b	.L175
 3657              	.L178:
 661:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			case 3: P2->objct->set_speed(P2->objct, 0, -2);
 3658              		.loc 1 661 14
 3659 0f2a BB69     		ldr	r3, [r7, #24]
 3660 0f2c 1B68     		ldr	r3, [r3]
 3661              		.loc 1 661 21
 3662 0f2e 1C6A     		ldr	r4, [r3, #32]
 3663              		.loc 1 661 35
 3664 0f30 BB69     		ldr	r3, [r7, #24]
 3665 0f32 1B68     		ldr	r3, [r3]
 3666              		.loc 1 661 12
 3667 0f34 0222     		movs	r2, #2
 3668 0f36 5242     		rsbs	r2, r2, #0
 3669 0f38 0021     		movs	r1, #0
 3670 0f3a 1800     		movs	r0, r3
 3671 0f3c A047     		blx	r4
 3672              	.LVL13:
 662:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 				P2->objct->move(P2->objct);
 3673              		.loc 1 662 7
 3674 0f3e BB69     		ldr	r3, [r7, #24]
 3675 0f40 1B68     		ldr	r3, [r3]
 3676              		.loc 1 662 14
 3677 0f42 DA69     		ldr	r2, [r3, #28]
 3678              		.loc 1 662 23
 3679 0f44 BB69     		ldr	r3, [r7, #24]
 3680 0f46 1B68     		ldr	r3, [r3]
 3681              		.loc 1 662 5
 3682 0f48 1800     		movs	r0, r3
 3683 0f4a 9047     		blx	r2
 3684              	.LVL14:
 663:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 				break;
 3685              		.loc 1 663 5
 3686 0f4c 10E0     		b	.L175
 3687              	.L174:
 664:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			case 9: P2->objct->set_speed(P2->objct, 0, 2);
 3688              		.loc 1 664 14
 3689 0f4e BB69     		ldr	r3, [r7, #24]
 3690 0f50 1B68     		ldr	r3, [r3]
 3691              		.loc 1 664 21
 3692 0f52 1C6A     		ldr	r4, [r3, #32]
 3693              		.loc 1 664 35
 3694 0f54 BB69     		ldr	r3, [r7, #24]
 3695 0f56 1B68     		ldr	r3, [r3]
 3696              		.loc 1 664 12
 3697 0f58 0222     		movs	r2, #2
 3698 0f5a 0021     		movs	r1, #0
 3699 0f5c 1800     		movs	r0, r3
 3700 0f5e A047     		blx	r4
 3701              	.LVL15:
 665:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 				P2->objct->move(P2->objct);
 3702              		.loc 1 665 7
 3703 0f60 BB69     		ldr	r3, [r7, #24]
 3704 0f62 1B68     		ldr	r3, [r3]
 3705              		.loc 1 665 14
 3706 0f64 DA69     		ldr	r2, [r3, #28]
 3707              		.loc 1 665 23
 3708 0f66 BB69     		ldr	r3, [r7, #24]
 3709 0f68 1B68     		ldr	r3, [r3]
 3710              		.loc 1 665 5
 3711 0f6a 1800     		movs	r0, r3
 3712 0f6c 9047     		blx	r2
 3713              	.LVL16:
 666:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 				break;
 3714              		.loc 1 666 5
 3715 0f6e C046     		nop
 3716              	.L175:
 667:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
 668:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		}
 669:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		if(P1->points >= WinPoints||P2->points >= WinPoints){ //Om någon har nåt poängen för att vinn
 3717              		.loc 1 669 8
 3718 0f70 FB69     		ldr	r3, [r7, #28]
 3719 0f72 5B68     		ldr	r3, [r3, #4]
 3720              		.loc 1 669 5
 3721 0f74 082B     		cmp	r3, #8
 3722 0f76 03DC     		bgt	.L179
 3723              		.loc 1 669 33 discriminator 1
 3724 0f78 BB69     		ldr	r3, [r7, #24]
 3725 0f7a 5B68     		ldr	r3, [r3, #4]
 3726              		.loc 1 669 29 discriminator 1
 3727 0f7c 082B     		cmp	r3, #8
 3728 0f7e 92DD     		ble	.L185
 3729              	.L179:
 3730              	.LBB9:
 670:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			char press[] = "Press 5 to restart";
 3731              		.loc 1 670 9
 3732 0f80 3B00     		movs	r3, r7
 3733 0f82 2E4A     		ldr	r2, .L186+16
 3734 0f84 13CA     		ldmia	r2!, {r0, r1, r4}
 3735 0f86 13C3     		stmia	r3!, {r0, r1, r4}
 3736 0f88 1168     		ldr	r1, [r2]
 3737 0f8a 1960     		str	r1, [r3]
 3738 0f8c 9188     		ldrh	r1, [r2, #4]
 3739 0f8e 9980     		strh	r1, [r3, #4]
 3740 0f90 9279     		ldrb	r2, [r2, #6]
 3741 0f92 9A71     		strb	r2, [r3, #6]
 671:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			char restart = 1; //sätt restart variabeln till 1
 3742              		.loc 1 671 9
 3743 0f94 2723     		movs	r3, #39
 3744 0f96 FB18     		adds	r3, r7, r3
 3745 0f98 0122     		movs	r2, #1
 3746 0f9a 1A70     		strb	r2, [r3]
 672:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			if(P1->points >= WinPoints){ // Om player 1 har vunnit sätt Ascii displayerna till Player1 Wins
 3747              		.loc 1 672 9
 3748 0f9c FB69     		ldr	r3, [r7, #28]
 3749 0f9e 5B68     		ldr	r3, [r3, #4]
 3750              		.loc 1 672 6
 3751 0fa0 082B     		cmp	r3, #8
 3752 0fa2 10DD     		ble	.L181
 673:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 				ascii_clear_dsplay();
 3753              		.loc 1 673 5
 3754 0fa4 FFF7FEFF 		bl	ascii_clear_dsplay
 674:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 				print_to_ascii(Player1.winMsg, -1, 1);
 3755              		.loc 1 674 5
 3756 0fa8 0123     		movs	r3, #1
 3757 0faa 5942     		rsbs	r1, r3, #0
 3758 0fac 244B     		ldr	r3, .L186+20
 3759 0fae 0122     		movs	r2, #1
 3760 0fb0 1800     		movs	r0, r3
 3761 0fb2 FFF7FEFF 		bl	print_to_ascii
 675:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 				print_to_ascii(press, -1, 2);
 3762              		.loc 1 675 5
 3763 0fb6 0123     		movs	r3, #1
 3764 0fb8 5942     		rsbs	r1, r3, #0
 3765 0fba 3B00     		movs	r3, r7
 3766 0fbc 0222     		movs	r2, #2
 3767 0fbe 1800     		movs	r0, r3
 3768 0fc0 FFF7FEFF 		bl	print_to_ascii
 3769 0fc4 2CE0     		b	.L183
 3770              	.L181:
 676:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 
 677:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			}
 678:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			else if(P2->points >= WinPoints){ // Om player 2 har vunnit sätt Ascii displayerna till Player2
 3771              		.loc 1 678 14
 3772 0fc6 BB69     		ldr	r3, [r7, #24]
 3773 0fc8 5B68     		ldr	r3, [r3, #4]
 3774              		.loc 1 678 11
 3775 0fca 082B     		cmp	r3, #8
 3776 0fcc 28DD     		ble	.L183
 679:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			ascii_clear_dsplay();
 3777              		.loc 1 679 4
 3778 0fce FFF7FEFF 		bl	ascii_clear_dsplay
 680:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			print_to_ascii(Player2.winMsg, -1, 1);
 3779              		.loc 1 680 4
 3780 0fd2 0123     		movs	r3, #1
 3781 0fd4 5942     		rsbs	r1, r3, #0
 3782 0fd6 1B4B     		ldr	r3, .L186+24
 3783 0fd8 0122     		movs	r2, #1
 3784 0fda 1800     		movs	r0, r3
 3785 0fdc FFF7FEFF 		bl	print_to_ascii
 681:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			print_to_ascii(press, -1, 2);
 3786              		.loc 1 681 4
 3787 0fe0 0123     		movs	r3, #1
 3788 0fe2 5942     		rsbs	r1, r3, #0
 3789 0fe4 3B00     		movs	r3, r7
 3790 0fe6 0222     		movs	r2, #2
 3791 0fe8 1800     		movs	r0, r3
 3792 0fea FFF7FEFF 		bl	print_to_ascii
 682:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			}
 683:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 			while(restart){ //Så länge inte knapp 5 på Keypaden har tryckts så står är spelet låst
 3793              		.loc 1 683 9
 3794 0fee 17E0     		b	.L183
 3795              	.L184:
 3796              	.LBB10:
 684:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 				char button = keyb(); //reads the keyboard.
 3797              		.loc 1 684 19
 3798 0ff0 1625     		movs	r5, #22
 3799 0ff2 7C19     		adds	r4, r7, r5
 3800 0ff4 FFF7FEFF 		bl	keyb
 3801 0ff8 0300     		movs	r3, r0
 3802 0ffa 2370     		strb	r3, [r4]
 3803 0ffc 2724     		movs	r4, #39
 3804 0ffe 3B19     		adds	r3, r7, r4
 3805 1000 3A19     		adds	r2, r7, r4
 3806 1002 1278     		ldrb	r2, [r2]
 3807 1004 1A70     		strb	r2, [r3]
 685:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 				if(button == 5){
 3808              		.loc 1 685 7
 3809 1006 7B19     		adds	r3, r7, r5
 3810 1008 1B78     		ldrb	r3, [r3]
 3811 100a 052B     		cmp	r3, #5
 3812 100c 08D1     		bne	.L183
 686:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 					game_init(BALL, P1, P2); // startar om spelet
 3813              		.loc 1 686 6
 3814 100e BA69     		ldr	r2, [r7, #24]
 3815 1010 F969     		ldr	r1, [r7, #28]
 3816 1012 3B6A     		ldr	r3, [r7, #32]
 3817 1014 1800     		movs	r0, r3
 3818 1016 FFF7FEFF 		bl	game_init
 687:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 					restart = 0; //Set restar to 0.
 3819              		.loc 1 687 14
 3820 101a 3B19     		adds	r3, r7, r4
 3821 101c 0022     		movs	r2, #0
 3822 101e 1A70     		strb	r2, [r3]
 3823              	.L183:
 3824              	.LBE10:
 683:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 				char button = keyb(); //reads the keyboard.
 3825              		.loc 1 683 9
 3826 1020 2723     		movs	r3, #39
 3827 1022 FB18     		adds	r3, r7, r3
 3828 1024 1B78     		ldrb	r3, [r3]
 3829 1026 002B     		cmp	r3, #0
 3830 1028 E2D1     		bne	.L184
 3831              	.LBE9:
 650:C:/Users/David/Downloads/Dat017-master (1)/Dat017-master/PONG\pong.c **** 		delay_milli(10);
 3832              		.loc 1 650 3 discriminator 1
 3833 102a 3CE7     		b	.L185
 3834              	.L187:
 3835              		.align	2
 3836              	.L186:
 3837 102c C8000000 		.word	ball
 3838 1030 F4000000 		.word	Player1
 3839 1034 14010000 		.word	Player2
 3840 1038 000C0240 		.word	1073875968
 3841 103c 34000000 		.word	.LC16
 3842 1040 06010000 		.word	Player1+18
 3843 1044 26010000 		.word	Player2+18
 3844              		.cfi_endproc
 3845              	.LFE43:
 3847              	.Letext0:
