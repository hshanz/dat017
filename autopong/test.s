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
  11              		.file	"autopong.c"
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
  25              		.file 1 "C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong/autopong.c"
   1:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** /*
   2:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c ****  * 	startup.c
   3:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c ****  *
   4:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c ****  */
   5:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   6:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 
   7:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** void startup ( void )
   8:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** {
  26              		.loc 1 8 1
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
   9:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** __asm volatile(
  31              		.loc 1 9 1
  32              		.syntax divided
  33              	@ 9 "C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong/autopong.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  10:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  11:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	" MOV SP,R0\n"
  12:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	" BL main\n"				/* call main */
  13:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	"_exit: B .\n"				/* never return */
  14:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	) ;
  15:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** }
  40              		.loc 1 15 1
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.global	ball_geometry
  48              		.data
  49              		.align	2
  52              	ball_geometry:
  53 0000 0C000000 		.word	12
  54 0004 04000000 		.word	4
  55 0008 04000000 		.word	4
  56 000c 00       		.byte	0
  57 000d 01       		.byte	1
  58 000e 00       		.byte	0
  59 000f 02       		.byte	2
  60 0010 01       		.byte	1
  61 0011 00       		.byte	0
  62 0012 01       		.byte	1
  63 0013 01       		.byte	1
  64 0014 01       		.byte	1
  65 0015 02       		.byte	2
  66 0016 01       		.byte	1
  67 0017 03       		.byte	3
  68 0018 02       		.byte	2
  69 0019 00       		.byte	0
  70 001a 02       		.byte	2
  71 001b 01       		.byte	1
  72 001c 02       		.byte	2
  73 001d 02       		.byte	2
  74 001e 02       		.byte	2
  75 001f 03       		.byte	3
  76 0020 03       		.byte	3
  77 0021 01       		.byte	1
  78 0022 03       		.byte	3
  79 0023 02       		.byte	2
  80 0024 00000000 		.space	16
  80      00000000 
  80      00000000 
  80      00000000 
  81              		.align	2
  84              	ball:
  85 0034 00000000 		.word	ball_geometry
  86 0038 00000000 		.word	0
  87 003c 00000000 		.word	0
  88 0040 01000000 		.word	1
  89 0044 01000000 		.word	1
  90 0048 00000000 		.word	draw_object
  91 004c 00000000 		.word	clear_object
  92 0050 00000000 		.word	move_object
  93 0054 00000000 		.word	set_object_speed
  94              		.text
  95              		.align	1
  96              		.global	init_app
  97              		.syntax unified
  98              		.code	16
  99              		.thumb_func
 100              		.fpu softvfp
 102              	init_app:
 103              	.LFB1:
  16:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define PORT_DISPLAY_BASE 0x40021000 // MD407 port E
  17:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define portModer ((volatile unsigned int *) (PORT_DISPLAY_BASE))
  18:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define portOtyper ((volatile unsigned short *) (PORT_DISPLAY_BASE+0x4))
  19:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define portOspeedr ((volatile unsigned int *) (PORT_DISPLAY_BASE+0x8))
  20:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define portPupdr ((volatile unsigned int *) (PORT_DISPLAY_BASE+0xC))
  21:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define portIdr ((volatile unsigned short *) (PORT_DISPLAY_BASE+0x10))
  22:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define portIdrHigh ((volatile unsigned char *) (PORT_DISPLAY_BASE+0x11))
  23:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define portOdrLow ((volatile unsigned char *) (PORT_DISPLAY_BASE+0x14))
  24:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define portOdrHigh ((volatile unsigned char *) (PORT_DISPLAY_BASE+0x14+1))
  25:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 
  26:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define SysTick 0xE000E010
  27:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define STK_CTRL ((volatile unsigned int*) (SysTick))
  28:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define STK_LOAD ((volatile unsigned int*) (SysTick + 0x4))
  29:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define STK_VAL ((volatile unsigned int*) (SysTick + 0x8))
  30:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 
  31:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define B_E 0x40 // Enable
  32:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define B_RST 0x20 // Reset
  33:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define B_CS2 0x10 // Controller Select 2
  34:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define B_CS1 8 // Controller Select 1
  35:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define B_SELECT 4 // 0 Graphics, 1 ASCII
  36:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define B_RW 2 // 0 Write, 1 Read
  37:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define B_RS 1 // 0 Command, 1 Data
  38:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 
  39:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define LCD_ON 0x3F // Display on
  40:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define LCD_OFF 0x3E // Display off
  41:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define LCD_SET_ADD 0x40 // Set horizontal coordinate
  42:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define LCD_SET_PAGE 0xB8 // Set vertical coordinate
  43:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define LCD_DISP_START 0xC0 // Start address
  44:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define LCD_BUSY 0x80 // Read busy status
  45:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 
  46:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define SIMULATOR 1
  47:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 
  48:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** #define MAX_POINTS 20
  49:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 
  50:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** typedef unsigned char uint8_t;
  51:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** typedef struct tpoint{
  52:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	unsigned char x;
  53:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	unsigned char y;
  54:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** }POINT;
  55:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** typedef struct tGeometry{
  56:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	int numPoints;
  57:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	int sizeX;
  58:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	int sizeY;
  59:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	POINT px[MAX_POINTS];
  60:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** }GEOMETRY, *PGEOMETRY;
  61:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** typedef struct tObj{
  62:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	PGEOMETRY geo;
  63:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	int dirx,diry;
  64:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	int posx,posy;
  65:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	void (*draw)(struct tobj*);
  66:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	void (*clear)(struct tobj*);
  67:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	void (*move)(struct tobj*);
  68:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	void (*set_speed)(struct tobj*, int, int);
  69:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** }OBJECT, *POBJECT;
  70:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 
  71:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 
  72:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 
  73:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 
  74:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** //funktions declarationer
  75:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** void graphic_initialize(void);
  76:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** static void graphic_write_command(uint8_t command, uint8_t controller);
  77:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** static void graphic_write_data(uint8_t data, uint8_t controller);
  78:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** static void graphic_write(uint8_t value, uint8_t controller);
  79:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** static void graphic_ctrl_bit_clear(uint8_t x);
  80:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** void move_object(POBJECT O);
  81:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** void clear_object(POBJECT O);
  82:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** void draw_object(POBJECT O);
  83:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** void set_object_speed(POBJECT O, int speedx, int speedy);
  84:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 
  85:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** GEOMETRY ball_geometry ={
  86:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	.numPoints = 12,
  87:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	.sizeX = 4,
  88:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	.sizeY = 4,
  89:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	{
  90:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		/* px[0,1,2 ....] */
  91:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		{0,1}, {0,2}, {1,0}, {1,1}, {1,2},
  92:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		{1,3}, {2,0}, {2,1}, {2,2}, {2,3},
  93:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		{3,1}, {3,2}
  94:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	}
  95:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** };
  96:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** static OBJECT ball = {
  97:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	.geo = &ball_geometry,
  98:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	.dirx = 0,
  99:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	.diry = 0,
 100:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	.posx = 1,
 101:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	.posy = 1,
 102:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	draw_object,
 103:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	clear_object,
 104:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	move_object,
 105:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	set_object_speed
 106:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** };
 107:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 
 108:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** void init_app(void){ 
 104              		.loc 1 108 20
 105              		.cfi_startproc
 106              		@ args = 0, pretend = 0, frame = 0
 107              		@ frame_needed = 1, uses_anonymous_args = 0
 108 0000 80B5     		push	{r7, lr}
 109              		.cfi_def_cfa_offset 8
 110              		.cfi_offset 7, -8
 111              		.cfi_offset 14, -4
 112 0002 00AF     		add	r7, sp, #0
 113              		.cfi_def_cfa_register 7
 109:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	*portModer = 0x55555555;
 114              		.loc 1 109 2
 115 0004 024B     		ldr	r3, .L3
 116              		.loc 1 109 13
 117 0006 034A     		ldr	r2, .L3+4
 118 0008 1A60     		str	r2, [r3]
 110:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** }	
 119              		.loc 1 110 1
 120 000a C046     		nop
 121 000c BD46     		mov	sp, r7
 122              		@ sp needed
 123 000e 80BD     		pop	{r7, pc}
 124              	.L4:
 125              		.align	2
 126              	.L3:
 127 0010 00100240 		.word	1073876992
 128 0014 55555555 		.word	1431655765
 129              		.cfi_endproc
 130              	.LFE1:
 132              		.align	1
 133              		.syntax unified
 134              		.code	16
 135              		.thumb_func
 136              		.fpu softvfp
 138              	graphic_ctrl_bit_set:
 139              	.LFB2:
 111:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 
 112:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** // Funktioner
 113:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** static void graphic_ctrl_bit_set(uint8_t x) {
 140              		.loc 1 113 45
 141              		.cfi_startproc
 142              		@ args = 0, pretend = 0, frame = 16
 143              		@ frame_needed = 1, uses_anonymous_args = 0
 144 0018 80B5     		push	{r7, lr}
 145              		.cfi_def_cfa_offset 8
 146              		.cfi_offset 7, -8
 147              		.cfi_offset 14, -4
 148 001a 84B0     		sub	sp, sp, #16
 149              		.cfi_def_cfa_offset 24
 150 001c 00AF     		add	r7, sp, #0
 151              		.cfi_def_cfa_register 7
 152 001e 0200     		movs	r2, r0
 153 0020 FB1D     		adds	r3, r7, #7
 154 0022 1A70     		strb	r2, [r3]
 114:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** uint8_t c;
 115:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** c = *portOdrLow;
 155              		.loc 1 115 5
 156 0024 0F4A     		ldr	r2, .L6
 157              		.loc 1 115 3
 158 0026 0F20     		movs	r0, #15
 159 0028 3B18     		adds	r3, r7, r0
 160 002a 1278     		ldrb	r2, [r2]
 161 002c 1A70     		strb	r2, [r3]
 116:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** c &= ~B_SELECT;
 162              		.loc 1 116 3
 163 002e 3B18     		adds	r3, r7, r0
 164 0030 3A18     		adds	r2, r7, r0
 165 0032 1278     		ldrb	r2, [r2]
 166 0034 0421     		movs	r1, #4
 167 0036 8A43     		bics	r2, r1
 168 0038 1A70     		strb	r2, [r3]
 117:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** c |= (~B_SELECT & x);
 169              		.loc 1 117 17
 170 003a FB1D     		adds	r3, r7, #7
 171 003c 1B78     		ldrb	r3, [r3]
 172 003e 5BB2     		sxtb	r3, r3
 173 0040 0422     		movs	r2, #4
 174 0042 9343     		bics	r3, r2
 175 0044 5AB2     		sxtb	r2, r3
 176              		.loc 1 117 3
 177 0046 3B18     		adds	r3, r7, r0
 178 0048 1B78     		ldrb	r3, [r3]
 179 004a 5BB2     		sxtb	r3, r3
 180 004c 1343     		orrs	r3, r2
 181 004e 5AB2     		sxtb	r2, r3
 182 0050 3B18     		adds	r3, r7, r0
 183 0052 1A70     		strb	r2, [r3]
 118:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** *portOdrLow = c;
 184              		.loc 1 118 1
 185 0054 034A     		ldr	r2, .L6
 186              		.loc 1 118 13
 187 0056 3B18     		adds	r3, r7, r0
 188 0058 1B78     		ldrb	r3, [r3]
 189 005a 1370     		strb	r3, [r2]
 119:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** }
 190              		.loc 1 119 1
 191 005c C046     		nop
 192 005e BD46     		mov	sp, r7
 193 0060 04B0     		add	sp, sp, #16
 194              		@ sp needed
 195 0062 80BD     		pop	{r7, pc}
 196              	.L7:
 197              		.align	2
 198              	.L6:
 199 0064 14100240 		.word	1073877012
 200              		.cfi_endproc
 201              	.LFE2:
 203              		.align	1
 204              		.syntax unified
 205              		.code	16
 206              		.thumb_func
 207              		.fpu softvfp
 209              	graphic_ctrl_bit_clear:
 210              	.LFB3:
 120:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** static void graphic_ctrl_bit_clear(uint8_t x) {
 211              		.loc 1 120 47
 212              		.cfi_startproc
 213              		@ args = 0, pretend = 0, frame = 16
 214              		@ frame_needed = 1, uses_anonymous_args = 0
 215 0068 80B5     		push	{r7, lr}
 216              		.cfi_def_cfa_offset 8
 217              		.cfi_offset 7, -8
 218              		.cfi_offset 14, -4
 219 006a 84B0     		sub	sp, sp, #16
 220              		.cfi_def_cfa_offset 24
 221 006c 00AF     		add	r7, sp, #0
 222              		.cfi_def_cfa_register 7
 223 006e 0200     		movs	r2, r0
 224 0070 FB1D     		adds	r3, r7, #7
 225 0072 1A70     		strb	r2, [r3]
 121:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** uint8_t c;
 122:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** c = *portOdrLow;
 226              		.loc 1 122 5
 227 0074 0F4A     		ldr	r2, .L9
 228              		.loc 1 122 3
 229 0076 0F20     		movs	r0, #15
 230 0078 3B18     		adds	r3, r7, r0
 231 007a 1278     		ldrb	r2, [r2]
 232 007c 1A70     		strb	r2, [r3]
 123:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** c &= ~B_SELECT;
 233              		.loc 1 123 3
 234 007e 3B18     		adds	r3, r7, r0
 235 0080 3A18     		adds	r2, r7, r0
 236 0082 1278     		ldrb	r2, [r2]
 237 0084 0421     		movs	r1, #4
 238 0086 8A43     		bics	r2, r1
 239 0088 1A70     		strb	r2, [r3]
 124:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** c &= ~x;
 240              		.loc 1 124 3
 241 008a FB1D     		adds	r3, r7, #7
 242 008c 1B78     		ldrb	r3, [r3]
 243 008e 5BB2     		sxtb	r3, r3
 244 0090 DB43     		mvns	r3, r3
 245 0092 5BB2     		sxtb	r3, r3
 246 0094 3A18     		adds	r2, r7, r0
 247 0096 1278     		ldrb	r2, [r2]
 248 0098 52B2     		sxtb	r2, r2
 249 009a 1340     		ands	r3, r2
 250 009c 5AB2     		sxtb	r2, r3
 251 009e 3B18     		adds	r3, r7, r0
 252 00a0 1A70     		strb	r2, [r3]
 125:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** *portOdrLow = c;
 253              		.loc 1 125 1
 254 00a2 044A     		ldr	r2, .L9
 255              		.loc 1 125 13
 256 00a4 3B18     		adds	r3, r7, r0
 257 00a6 1B78     		ldrb	r3, [r3]
 258 00a8 1370     		strb	r3, [r2]
 126:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** }
 259              		.loc 1 126 1
 260 00aa C046     		nop
 261 00ac BD46     		mov	sp, r7
 262 00ae 04B0     		add	sp, sp, #16
 263              		@ sp needed
 264 00b0 80BD     		pop	{r7, pc}
 265              	.L10:
 266 00b2 C046     		.align	2
 267              	.L9:
 268 00b4 14100240 		.word	1073877012
 269              		.cfi_endproc
 270              	.LFE3:
 272              		.align	1
 273              		.syntax unified
 274              		.code	16
 275              		.thumb_func
 276              		.fpu softvfp
 278              	select_controller:
 279              	.LFB4:
 127:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** static void select_controller(uint8_t controller){
 280              		.loc 1 127 50
 281              		.cfi_startproc
 282              		@ args = 0, pretend = 0, frame = 8
 283              		@ frame_needed = 1, uses_anonymous_args = 0
 284 00b8 80B5     		push	{r7, lr}
 285              		.cfi_def_cfa_offset 8
 286              		.cfi_offset 7, -8
 287              		.cfi_offset 14, -4
 288 00ba 82B0     		sub	sp, sp, #8
 289              		.cfi_def_cfa_offset 16
 290 00bc 00AF     		add	r7, sp, #0
 291              		.cfi_def_cfa_register 7
 292 00be 0200     		movs	r2, r0
 293 00c0 FB1D     		adds	r3, r7, #7
 294 00c2 1A70     		strb	r2, [r3]
 128:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	switch(controller){
 295              		.loc 1 128 2
 296 00c4 FB1D     		adds	r3, r7, #7
 297 00c6 1B78     		ldrb	r3, [r3]
 298 00c8 182B     		cmp	r3, #24
 299 00ca 1AD0     		beq	.L12
 300 00cc 1DDC     		bgt	.L17
 301 00ce 102B     		cmp	r3, #16
 302 00d0 10D0     		beq	.L14
 303 00d2 1ADC     		bgt	.L17
 304 00d4 002B     		cmp	r3, #0
 305 00d6 02D0     		beq	.L15
 306 00d8 082B     		cmp	r3, #8
 307 00da 04D0     		beq	.L16
 129:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		case 0:
 130:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 			graphic_ctrl_bit_clear(B_CS1|B_CS2);
 131:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 			break;
 132:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		case B_CS1 :
 133:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 			graphic_ctrl_bit_set(B_CS1);
 134:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 			graphic_ctrl_bit_clear(B_CS2);
 135:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 			break;
 136:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		case B_CS2 :
 137:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 			graphic_ctrl_bit_set(B_CS2);
 138:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 			graphic_ctrl_bit_clear(B_CS1);
 139:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 			break;
 140:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		case B_CS1|B_CS2 :
 141:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 			graphic_ctrl_bit_set(B_CS1|B_CS2);
 142:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 			break;
 143:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	}
 144:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** }
 308              		.loc 1 144 1
 309 00dc 15E0     		b	.L17
 310              	.L15:
 130:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 			break;
 311              		.loc 1 130 4
 312 00de 1820     		movs	r0, #24
 313 00e0 FFF7C2FF 		bl	graphic_ctrl_bit_clear
 131:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		case B_CS1 :
 314              		.loc 1 131 4
 315 00e4 11E0     		b	.L13
 316              	.L16:
 133:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 			graphic_ctrl_bit_clear(B_CS2);
 317              		.loc 1 133 4
 318 00e6 0820     		movs	r0, #8
 319 00e8 FFF796FF 		bl	graphic_ctrl_bit_set
 134:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 			break;
 320              		.loc 1 134 4
 321 00ec 1020     		movs	r0, #16
 322 00ee FFF7BBFF 		bl	graphic_ctrl_bit_clear
 135:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		case B_CS2 :
 323              		.loc 1 135 4
 324 00f2 0AE0     		b	.L13
 325              	.L14:
 137:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 			graphic_ctrl_bit_clear(B_CS1);
 326              		.loc 1 137 4
 327 00f4 1020     		movs	r0, #16
 328 00f6 FFF78FFF 		bl	graphic_ctrl_bit_set
 138:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 			break;
 329              		.loc 1 138 4
 330 00fa 0820     		movs	r0, #8
 331 00fc FFF7B4FF 		bl	graphic_ctrl_bit_clear
 139:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		case B_CS1|B_CS2 :
 332              		.loc 1 139 4
 333 0100 03E0     		b	.L13
 334              	.L12:
 141:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 			break;
 335              		.loc 1 141 4
 336 0102 1820     		movs	r0, #24
 337 0104 FFF788FF 		bl	graphic_ctrl_bit_set
 142:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	}
 338              		.loc 1 142 4
 339 0108 C046     		nop
 340              	.L13:
 341              	.L17:
 342              		.loc 1 144 1
 343 010a C046     		nop
 344 010c BD46     		mov	sp, r7
 345 010e 02B0     		add	sp, sp, #8
 346              		@ sp needed
 347 0110 80BD     		pop	{r7, pc}
 348              		.cfi_endproc
 349              	.LFE4:
 351              		.align	1
 352              		.global	graphic_initialize
 353              		.syntax unified
 354              		.code	16
 355              		.thumb_func
 356              		.fpu softvfp
 358              	graphic_initialize:
 359              	.LFB5:
 145:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** void graphic_initialize(void) {
 360              		.loc 1 145 31
 361              		.cfi_startproc
 362              		@ args = 0, pretend = 0, frame = 0
 363              		@ frame_needed = 1, uses_anonymous_args = 0
 364 0112 80B5     		push	{r7, lr}
 365              		.cfi_def_cfa_offset 8
 366              		.cfi_offset 7, -8
 367              		.cfi_offset 14, -4
 368 0114 00AF     		add	r7, sp, #0
 369              		.cfi_def_cfa_register 7
 146:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	graphic_ctrl_bit_set(B_E);
 370              		.loc 1 146 2
 371 0116 4020     		movs	r0, #64
 372 0118 FFF77EFF 		bl	graphic_ctrl_bit_set
 147:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	delay_mikro(10);
 373              		.loc 1 147 2
 374 011c 0A20     		movs	r0, #10
 375 011e FFF7FEFF 		bl	delay_mikro
 148:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	graphic_ctrl_bit_clear(B_CS1|B_CS2|B_RST|B_E);
 376              		.loc 1 148 2
 377 0122 7820     		movs	r0, #120
 378 0124 FFF7A0FF 		bl	graphic_ctrl_bit_clear
 149:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	delay_milli(30);
 379              		.loc 1 149 2
 380 0128 1E20     		movs	r0, #30
 381 012a FFF7FEFF 		bl	delay_milli
 150:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	graphic_ctrl_bit_set(B_RST);
 382              		.loc 1 150 2
 383 012e 2020     		movs	r0, #32
 384 0130 FFF772FF 		bl	graphic_ctrl_bit_set
 151:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	delay_milli(100);
 385              		.loc 1 151 2
 386 0134 6420     		movs	r0, #100
 387 0136 FFF7FEFF 		bl	delay_milli
 152:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	graphic_write_command(LCD_OFF, B_CS1|B_CS2);
 388              		.loc 1 152 2
 389 013a 1821     		movs	r1, #24
 390 013c 3E20     		movs	r0, #62
 391 013e 00F0E3F8 		bl	graphic_write_command
 153:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	graphic_write_command(LCD_ON, B_CS1|B_CS2);
 392              		.loc 1 153 2
 393 0142 1821     		movs	r1, #24
 394 0144 3F20     		movs	r0, #63
 395 0146 00F0DFF8 		bl	graphic_write_command
 154:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	graphic_write_command(LCD_DISP_START, B_CS1|B_CS2);
 396              		.loc 1 154 2
 397 014a 1821     		movs	r1, #24
 398 014c C020     		movs	r0, #192
 399 014e 00F0DBF8 		bl	graphic_write_command
 155:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	graphic_write_command(LCD_SET_ADD, B_CS1|B_CS2);
 400              		.loc 1 155 2
 401 0152 1821     		movs	r1, #24
 402 0154 4020     		movs	r0, #64
 403 0156 00F0D7F8 		bl	graphic_write_command
 156:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	graphic_write_command(LCD_SET_PAGE, B_CS1|B_CS2);
 404              		.loc 1 156 2
 405 015a 1821     		movs	r1, #24
 406 015c B820     		movs	r0, #184
 407 015e 00F0D3F8 		bl	graphic_write_command
 157:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	select_controller(0);
 408              		.loc 1 157 2
 409 0162 0020     		movs	r0, #0
 410 0164 FFF7A8FF 		bl	select_controller
 158:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** }
 411              		.loc 1 158 1
 412 0168 C046     		nop
 413 016a BD46     		mov	sp, r7
 414              		@ sp needed
 415 016c 80BD     		pop	{r7, pc}
 416              		.cfi_endproc
 417              	.LFE5:
 419              		.align	1
 420              		.syntax unified
 421              		.code	16
 422              		.thumb_func
 423              		.fpu softvfp
 425              	graphic_wait_ready:
 426              	.LFB6:
 159:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** static void graphic_wait_ready(void) {
 427              		.loc 1 159 38
 428              		.cfi_startproc
 429              		@ args = 0, pretend = 0, frame = 8
 430              		@ frame_needed = 1, uses_anonymous_args = 0
 431 016e 80B5     		push	{r7, lr}
 432              		.cfi_def_cfa_offset 8
 433              		.cfi_offset 7, -8
 434              		.cfi_offset 14, -4
 435 0170 82B0     		sub	sp, sp, #8
 436              		.cfi_def_cfa_offset 16
 437 0172 00AF     		add	r7, sp, #0
 438              		.cfi_def_cfa_register 7
 160:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	uint8_t c;
 161:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	graphic_ctrl_bit_clear(B_E);
 439              		.loc 1 161 2
 440 0174 4020     		movs	r0, #64
 441 0176 FFF777FF 		bl	graphic_ctrl_bit_clear
 162:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	*portModer = 0x00005555; // 15-8 inputs, 7-0 outputs
 442              		.loc 1 162 2
 443 017a 144B     		ldr	r3, .L25
 444              		.loc 1 162 13
 445 017c 144A     		ldr	r2, .L25+4
 446 017e 1A60     		str	r2, [r3]
 163:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	graphic_ctrl_bit_clear(B_RS);
 447              		.loc 1 163 2
 448 0180 0120     		movs	r0, #1
 449 0182 FFF771FF 		bl	graphic_ctrl_bit_clear
 164:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	graphic_ctrl_bit_set(B_RW);
 450              		.loc 1 164 2
 451 0186 0220     		movs	r0, #2
 452 0188 FFF746FF 		bl	graphic_ctrl_bit_set
 165:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	delay_500ns();
 453              		.loc 1 165 2
 454 018c FFF7FEFF 		bl	delay_500ns
 455              	.L22:
 166:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	while(1) {
 167:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		graphic_ctrl_bit_set(B_E);
 456              		.loc 1 167 3
 457 0190 4020     		movs	r0, #64
 458 0192 FFF741FF 		bl	graphic_ctrl_bit_set
 168:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		delay_500ns();
 459              		.loc 1 168 3
 460 0196 FFF7FEFF 		bl	delay_500ns
 169:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		c = *portIdrHigh & LCD_BUSY;
 461              		.loc 1 169 20
 462 019a 0E4B     		ldr	r3, .L25+8
 463 019c 1B78     		ldrb	r3, [r3]
 464 019e DAB2     		uxtb	r2, r3
 465              		.loc 1 169 5
 466 01a0 FB1D     		adds	r3, r7, #7
 467 01a2 7F21     		movs	r1, #127
 468 01a4 8A43     		bics	r2, r1
 469 01a6 1A70     		strb	r2, [r3]
 170:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		graphic_ctrl_bit_clear(B_E);
 470              		.loc 1 170 3
 471 01a8 4020     		movs	r0, #64
 472 01aa FFF75DFF 		bl	graphic_ctrl_bit_clear
 171:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		delay_500ns();
 473              		.loc 1 171 3
 474 01ae FFF7FEFF 		bl	delay_500ns
 172:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		if( c == 0 ) break;
 475              		.loc 1 172 5
 476 01b2 FB1D     		adds	r3, r7, #7
 477 01b4 1B78     		ldrb	r3, [r3]
 478 01b6 002B     		cmp	r3, #0
 479 01b8 00D0     		beq	.L24
 167:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		delay_500ns();
 480              		.loc 1 167 3
 481 01ba E9E7     		b	.L22
 482              	.L24:
 483              		.loc 1 172 3
 484 01bc C046     		nop
 173:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	}
 174:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	*portModer = 0x55555555; // 15-0 outputs
 485              		.loc 1 174 2
 486 01be 034B     		ldr	r3, .L25
 487              		.loc 1 174 13
 488 01c0 054A     		ldr	r2, .L25+12
 489 01c2 1A60     		str	r2, [r3]
 175:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** }
 490              		.loc 1 175 1
 491 01c4 C046     		nop
 492 01c6 BD46     		mov	sp, r7
 493 01c8 02B0     		add	sp, sp, #8
 494              		@ sp needed
 495 01ca 80BD     		pop	{r7, pc}
 496              	.L26:
 497              		.align	2
 498              	.L25:
 499 01cc 00100240 		.word	1073876992
 500 01d0 55550000 		.word	21845
 501 01d4 11100240 		.word	1073877009
 502 01d8 55555555 		.word	1431655765
 503              		.cfi_endproc
 504              	.LFE6:
 506              		.align	1
 507              		.syntax unified
 508              		.code	16
 509              		.thumb_func
 510              		.fpu softvfp
 512              	graphic_read:
 513              	.LFB7:
 176:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** static uint8_t graphic_read(uint8_t controller) {
 514              		.loc 1 176 49
 515              		.cfi_startproc
 516              		@ args = 0, pretend = 0, frame = 16
 517              		@ frame_needed = 1, uses_anonymous_args = 0
 518 01dc 80B5     		push	{r7, lr}
 519              		.cfi_def_cfa_offset 8
 520              		.cfi_offset 7, -8
 521              		.cfi_offset 14, -4
 522 01de 84B0     		sub	sp, sp, #16
 523              		.cfi_def_cfa_offset 24
 524 01e0 00AF     		add	r7, sp, #0
 525              		.cfi_def_cfa_register 7
 526 01e2 0200     		movs	r2, r0
 527 01e4 FB1D     		adds	r3, r7, #7
 528 01e6 1A70     		strb	r2, [r3]
 177:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	uint8_t c;
 178:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	graphic_ctrl_bit_clear(B_E);
 529              		.loc 1 178 2
 530 01e8 4020     		movs	r0, #64
 531 01ea FFF73DFF 		bl	graphic_ctrl_bit_clear
 179:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	*portModer = 0x00005555; // 15-8 inputs, 7-0 outputs
 532              		.loc 1 179 2
 533 01ee 1C4B     		ldr	r3, .L31
 534              		.loc 1 179 13
 535 01f0 1C4A     		ldr	r2, .L31+4
 536 01f2 1A60     		str	r2, [r3]
 180:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	graphic_ctrl_bit_set(B_RS|B_RW);
 537              		.loc 1 180 2
 538 01f4 0320     		movs	r0, #3
 539 01f6 FFF70FFF 		bl	graphic_ctrl_bit_set
 181:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	select_controller(controller);
 540              		.loc 1 181 2
 541 01fa FB1D     		adds	r3, r7, #7
 542 01fc 1B78     		ldrb	r3, [r3]
 543 01fe 1800     		movs	r0, r3
 544 0200 FFF75AFF 		bl	select_controller
 182:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	delay_500ns();
 545              		.loc 1 182 2
 546 0204 FFF7FEFF 		bl	delay_500ns
 183:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	graphic_ctrl_bit_set(B_E);
 547              		.loc 1 183 2
 548 0208 4020     		movs	r0, #64
 549 020a FFF705FF 		bl	graphic_ctrl_bit_set
 184:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	delay_500ns();
 550              		.loc 1 184 2
 551 020e FFF7FEFF 		bl	delay_500ns
 185:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	c = *portIdrHigh;
 552              		.loc 1 185 6
 553 0212 154A     		ldr	r2, .L31+8
 554              		.loc 1 185 4
 555 0214 0F23     		movs	r3, #15
 556 0216 FB18     		adds	r3, r7, r3
 557 0218 1278     		ldrb	r2, [r2]
 558 021a 1A70     		strb	r2, [r3]
 186:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	graphic_ctrl_bit_clear(B_E);
 559              		.loc 1 186 2
 560 021c 4020     		movs	r0, #64
 561 021e FFF723FF 		bl	graphic_ctrl_bit_clear
 187:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	*portModer = 0x55555555; // 15-0 outputs
 562              		.loc 1 187 2
 563 0222 0F4B     		ldr	r3, .L31
 564              		.loc 1 187 13
 565 0224 114A     		ldr	r2, .L31+12
 566 0226 1A60     		str	r2, [r3]
 188:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	if( controller & B_CS1 ) {
 567              		.loc 1 188 17
 568 0228 FB1D     		adds	r3, r7, #7
 569 022a 1B78     		ldrb	r3, [r3]
 570 022c 0822     		movs	r2, #8
 571 022e 1340     		ands	r3, r2
 572              		.loc 1 188 4
 573 0230 04D0     		beq	.L28
 189:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		select_controller(B_CS1);
 574              		.loc 1 189 3
 575 0232 0820     		movs	r0, #8
 576 0234 FFF740FF 		bl	select_controller
 190:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		graphic_wait_ready();
 577              		.loc 1 190 3
 578 0238 FFF799FF 		bl	graphic_wait_ready
 579              	.L28:
 191:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	}
 192:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	if( controller & B_CS2 ) {
 580              		.loc 1 192 17
 581 023c FB1D     		adds	r3, r7, #7
 582 023e 1B78     		ldrb	r3, [r3]
 583 0240 1022     		movs	r2, #16
 584 0242 1340     		ands	r3, r2
 585              		.loc 1 192 4
 586 0244 04D0     		beq	.L29
 193:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		select_controller(B_CS2);
 587              		.loc 1 193 3
 588 0246 1020     		movs	r0, #16
 589 0248 FFF736FF 		bl	select_controller
 194:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		graphic_wait_ready();
 590              		.loc 1 194 3
 591 024c FFF78FFF 		bl	graphic_wait_ready
 592              	.L29:
 195:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	}
 196:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** return c;
 593              		.loc 1 196 8
 594 0250 0F23     		movs	r3, #15
 595 0252 FB18     		adds	r3, r7, r3
 596 0254 1B78     		ldrb	r3, [r3]
 197:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** }
 597              		.loc 1 197 1
 598 0256 1800     		movs	r0, r3
 599 0258 BD46     		mov	sp, r7
 600 025a 04B0     		add	sp, sp, #16
 601              		@ sp needed
 602 025c 80BD     		pop	{r7, pc}
 603              	.L32:
 604 025e C046     		.align	2
 605              	.L31:
 606 0260 00100240 		.word	1073876992
 607 0264 55550000 		.word	21845
 608 0268 11100240 		.word	1073877009
 609 026c 55555555 		.word	1431655765
 610              		.cfi_endproc
 611              	.LFE7:
 613              		.align	1
 614              		.syntax unified
 615              		.code	16
 616              		.thumb_func
 617              		.fpu softvfp
 619              	graphic_read_data:
 620              	.LFB8:
 198:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** static uint8_t graphic_read_data(uint8_t controller) {
 621              		.loc 1 198 54
 622              		.cfi_startproc
 623              		@ args = 0, pretend = 0, frame = 8
 624              		@ frame_needed = 1, uses_anonymous_args = 0
 625 0270 80B5     		push	{r7, lr}
 626              		.cfi_def_cfa_offset 8
 627              		.cfi_offset 7, -8
 628              		.cfi_offset 14, -4
 629 0272 82B0     		sub	sp, sp, #8
 630              		.cfi_def_cfa_offset 16
 631 0274 00AF     		add	r7, sp, #0
 632              		.cfi_def_cfa_register 7
 633 0276 0200     		movs	r2, r0
 634 0278 FB1D     		adds	r3, r7, #7
 635 027a 1A70     		strb	r2, [r3]
 199:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** graphic_read(controller);
 636              		.loc 1 199 1
 637 027c FB1D     		adds	r3, r7, #7
 638 027e 1B78     		ldrb	r3, [r3]
 639 0280 1800     		movs	r0, r3
 640 0282 FFF7ABFF 		bl	graphic_read
 200:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** return graphic_read(controller);
 641              		.loc 1 200 8
 642 0286 FB1D     		adds	r3, r7, #7
 643 0288 1B78     		ldrb	r3, [r3]
 644 028a 1800     		movs	r0, r3
 645 028c FFF7A6FF 		bl	graphic_read
 646 0290 0300     		movs	r3, r0
 201:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** }
 647              		.loc 1 201 1
 648 0292 1800     		movs	r0, r3
 649 0294 BD46     		mov	sp, r7
 650 0296 02B0     		add	sp, sp, #8
 651              		@ sp needed
 652 0298 80BD     		pop	{r7, pc}
 653              		.cfi_endproc
 654              	.LFE8:
 656              		.align	1
 657              		.syntax unified
 658              		.code	16
 659              		.thumb_func
 660              		.fpu softvfp
 662              	graphic_write:
 663              	.LFB9:
 202:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** static void graphic_write(uint8_t value, uint8_t controller) {
 664              		.loc 1 202 62
 665              		.cfi_startproc
 666              		@ args = 0, pretend = 0, frame = 8
 667              		@ frame_needed = 1, uses_anonymous_args = 0
 668 029a 80B5     		push	{r7, lr}
 669              		.cfi_def_cfa_offset 8
 670              		.cfi_offset 7, -8
 671              		.cfi_offset 14, -4
 672 029c 82B0     		sub	sp, sp, #8
 673              		.cfi_def_cfa_offset 16
 674 029e 00AF     		add	r7, sp, #0
 675              		.cfi_def_cfa_register 7
 676 02a0 0200     		movs	r2, r0
 677 02a2 FB1D     		adds	r3, r7, #7
 678 02a4 1A70     		strb	r2, [r3]
 679 02a6 BB1D     		adds	r3, r7, #6
 680 02a8 0A1C     		adds	r2, r1, #0
 681 02aa 1A70     		strb	r2, [r3]
 203:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	*portOdrHigh = value;
 682              		.loc 1 203 2
 683 02ac 154A     		ldr	r2, .L39
 684              		.loc 1 203 15
 685 02ae FB1D     		adds	r3, r7, #7
 686 02b0 1B78     		ldrb	r3, [r3]
 687 02b2 1370     		strb	r3, [r2]
 204:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	select_controller(controller);
 688              		.loc 1 204 2
 689 02b4 BB1D     		adds	r3, r7, #6
 690 02b6 1B78     		ldrb	r3, [r3]
 691 02b8 1800     		movs	r0, r3
 692 02ba FFF7FDFE 		bl	select_controller
 205:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	delay_500ns();
 693              		.loc 1 205 2
 694 02be FFF7FEFF 		bl	delay_500ns
 206:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	graphic_ctrl_bit_set(B_E);
 695              		.loc 1 206 2
 696 02c2 4020     		movs	r0, #64
 697 02c4 FFF7A8FE 		bl	graphic_ctrl_bit_set
 207:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	delay_500ns();
 698              		.loc 1 207 2
 699 02c8 FFF7FEFF 		bl	delay_500ns
 208:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	graphic_ctrl_bit_clear( B_E );
 700              		.loc 1 208 2
 701 02cc 4020     		movs	r0, #64
 702 02ce FFF7CBFE 		bl	graphic_ctrl_bit_clear
 209:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	if(controller & B_CS1) {
 703              		.loc 1 209 16
 704 02d2 BB1D     		adds	r3, r7, #6
 705 02d4 1B78     		ldrb	r3, [r3]
 706 02d6 0822     		movs	r2, #8
 707 02d8 1340     		ands	r3, r2
 708              		.loc 1 209 4
 709 02da 04D0     		beq	.L36
 210:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		select_controller( B_CS1);
 710              		.loc 1 210 3
 711 02dc 0820     		movs	r0, #8
 712 02de FFF7EBFE 		bl	select_controller
 211:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		graphic_wait_ready();
 713              		.loc 1 211 3
 714 02e2 FFF744FF 		bl	graphic_wait_ready
 715              	.L36:
 212:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	}
 213:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	if(controller & B_CS2) {
 716              		.loc 1 213 16
 717 02e6 BB1D     		adds	r3, r7, #6
 718 02e8 1B78     		ldrb	r3, [r3]
 719 02ea 1022     		movs	r2, #16
 720 02ec 1340     		ands	r3, r2
 721              		.loc 1 213 4
 722 02ee 04D0     		beq	.L38
 214:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		select_controller( B_CS2);
 723              		.loc 1 214 3
 724 02f0 1020     		movs	r0, #16
 725 02f2 FFF7E1FE 		bl	select_controller
 215:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		graphic_wait_ready();
 726              		.loc 1 215 3
 727 02f6 FFF73AFF 		bl	graphic_wait_ready
 728              	.L38:
 216:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	}
 217:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** }
 729              		.loc 1 217 1
 730 02fa C046     		nop
 731 02fc BD46     		mov	sp, r7
 732 02fe 02B0     		add	sp, sp, #8
 733              		@ sp needed
 734 0300 80BD     		pop	{r7, pc}
 735              	.L40:
 736 0302 C046     		.align	2
 737              	.L39:
 738 0304 15100240 		.word	1073877013
 739              		.cfi_endproc
 740              	.LFE9:
 742              		.align	1
 743              		.syntax unified
 744              		.code	16
 745              		.thumb_func
 746              		.fpu softvfp
 748              	graphic_write_command:
 749              	.LFB10:
 218:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** static void graphic_write_command(uint8_t command, uint8_t controller) {
 750              		.loc 1 218 72
 751              		.cfi_startproc
 752              		@ args = 0, pretend = 0, frame = 8
 753              		@ frame_needed = 1, uses_anonymous_args = 0
 754 0308 80B5     		push	{r7, lr}
 755              		.cfi_def_cfa_offset 8
 756              		.cfi_offset 7, -8
 757              		.cfi_offset 14, -4
 758 030a 82B0     		sub	sp, sp, #8
 759              		.cfi_def_cfa_offset 16
 760 030c 00AF     		add	r7, sp, #0
 761              		.cfi_def_cfa_register 7
 762 030e 0200     		movs	r2, r0
 763 0310 FB1D     		adds	r3, r7, #7
 764 0312 1A70     		strb	r2, [r3]
 765 0314 BB1D     		adds	r3, r7, #6
 766 0316 0A1C     		adds	r2, r1, #0
 767 0318 1A70     		strb	r2, [r3]
 219:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	graphic_ctrl_bit_clear(B_E);
 768              		.loc 1 219 2
 769 031a 4020     		movs	r0, #64
 770 031c FFF7A4FE 		bl	graphic_ctrl_bit_clear
 220:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	select_controller(controller);
 771              		.loc 1 220 2
 772 0320 BB1D     		adds	r3, r7, #6
 773 0322 1B78     		ldrb	r3, [r3]
 774 0324 1800     		movs	r0, r3
 775 0326 FFF7C7FE 		bl	select_controller
 221:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	graphic_ctrl_bit_clear(B_RS|B_RW);
 776              		.loc 1 221 2
 777 032a 0320     		movs	r0, #3
 778 032c FFF79CFE 		bl	graphic_ctrl_bit_clear
 222:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	graphic_write(command, controller);
 779              		.loc 1 222 2
 780 0330 BB1D     		adds	r3, r7, #6
 781 0332 1A78     		ldrb	r2, [r3]
 782 0334 FB1D     		adds	r3, r7, #7
 783 0336 1B78     		ldrb	r3, [r3]
 784 0338 1100     		movs	r1, r2
 785 033a 1800     		movs	r0, r3
 786 033c FFF7ADFF 		bl	graphic_write
 223:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** }
 787              		.loc 1 223 1
 788 0340 C046     		nop
 789 0342 BD46     		mov	sp, r7
 790 0344 02B0     		add	sp, sp, #8
 791              		@ sp needed
 792 0346 80BD     		pop	{r7, pc}
 793              		.cfi_endproc
 794              	.LFE10:
 796              		.align	1
 797              		.syntax unified
 798              		.code	16
 799              		.thumb_func
 800              		.fpu softvfp
 802              	graphic_write_data:
 803              	.LFB11:
 224:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** static void graphic_write_data(uint8_t data, uint8_t controller) {
 804              		.loc 1 224 66
 805              		.cfi_startproc
 806              		@ args = 0, pretend = 0, frame = 8
 807              		@ frame_needed = 1, uses_anonymous_args = 0
 808 0348 80B5     		push	{r7, lr}
 809              		.cfi_def_cfa_offset 8
 810              		.cfi_offset 7, -8
 811              		.cfi_offset 14, -4
 812 034a 82B0     		sub	sp, sp, #8
 813              		.cfi_def_cfa_offset 16
 814 034c 00AF     		add	r7, sp, #0
 815              		.cfi_def_cfa_register 7
 816 034e 0200     		movs	r2, r0
 817 0350 FB1D     		adds	r3, r7, #7
 818 0352 1A70     		strb	r2, [r3]
 819 0354 BB1D     		adds	r3, r7, #6
 820 0356 0A1C     		adds	r2, r1, #0
 821 0358 1A70     		strb	r2, [r3]
 225:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	graphic_ctrl_bit_clear(B_E);
 822              		.loc 1 225 2
 823 035a 4020     		movs	r0, #64
 824 035c FFF784FE 		bl	graphic_ctrl_bit_clear
 226:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	select_controller(controller);
 825              		.loc 1 226 2
 826 0360 BB1D     		adds	r3, r7, #6
 827 0362 1B78     		ldrb	r3, [r3]
 828 0364 1800     		movs	r0, r3
 829 0366 FFF7A7FE 		bl	select_controller
 227:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	graphic_ctrl_bit_set(B_RS);
 830              		.loc 1 227 2
 831 036a 0120     		movs	r0, #1
 832 036c FFF754FE 		bl	graphic_ctrl_bit_set
 228:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	graphic_ctrl_bit_clear(B_RW);
 833              		.loc 1 228 2
 834 0370 0220     		movs	r0, #2
 835 0372 FFF779FE 		bl	graphic_ctrl_bit_clear
 229:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	graphic_write(data, controller);
 836              		.loc 1 229 2
 837 0376 BB1D     		adds	r3, r7, #6
 838 0378 1A78     		ldrb	r2, [r3]
 839 037a FB1D     		adds	r3, r7, #7
 840 037c 1B78     		ldrb	r3, [r3]
 841 037e 1100     		movs	r1, r2
 842 0380 1800     		movs	r0, r3
 843 0382 FFF78AFF 		bl	graphic_write
 230:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** }
 844              		.loc 1 230 1
 845 0386 C046     		nop
 846 0388 BD46     		mov	sp, r7
 847 038a 02B0     		add	sp, sp, #8
 848              		@ sp needed
 849 038c 80BD     		pop	{r7, pc}
 850              		.cfi_endproc
 851              	.LFE11:
 853              		.align	1
 854              		.global	graphic_clear_screen
 855              		.syntax unified
 856              		.code	16
 857              		.thumb_func
 858              		.fpu softvfp
 860              	graphic_clear_screen:
 861              	.LFB12:
 231:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** void graphic_clear_screen(void) {
 862              		.loc 1 231 33
 863              		.cfi_startproc
 864              		@ args = 0, pretend = 0, frame = 8
 865              		@ frame_needed = 1, uses_anonymous_args = 0
 866 038e 80B5     		push	{r7, lr}
 867              		.cfi_def_cfa_offset 8
 868              		.cfi_offset 7, -8
 869              		.cfi_offset 14, -4
 870 0390 82B0     		sub	sp, sp, #8
 871              		.cfi_def_cfa_offset 16
 872 0392 00AF     		add	r7, sp, #0
 873              		.cfi_def_cfa_register 7
 232:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	uint8_t i, j;
 233:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	for(j = 0; j < 8; j++) {
 874              		.loc 1 233 8
 875 0394 BB1D     		adds	r3, r7, #6
 876 0396 0022     		movs	r2, #0
 877 0398 1A70     		strb	r2, [r3]
 878              		.loc 1 233 2
 879 039a 23E0     		b	.L44
 880              	.L47:
 234:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
 881              		.loc 1 234 3
 882 039c BB1D     		adds	r3, r7, #6
 883 039e 1B78     		ldrb	r3, [r3]
 884 03a0 4822     		movs	r2, #72
 885 03a2 5242     		rsbs	r2, r2, #0
 886 03a4 1343     		orrs	r3, r2
 887 03a6 DBB2     		uxtb	r3, r3
 888 03a8 1821     		movs	r1, #24
 889 03aa 1800     		movs	r0, r3
 890 03ac FFF7ACFF 		bl	graphic_write_command
 235:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		graphic_write_command(LCD_SET_ADD | 0, B_CS1|B_CS2);
 891              		.loc 1 235 3
 892 03b0 1821     		movs	r1, #24
 893 03b2 4020     		movs	r0, #64
 894 03b4 FFF7A8FF 		bl	graphic_write_command
 236:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		for(i = 0; i <= 63; i++){
 895              		.loc 1 236 9
 896 03b8 FB1D     		adds	r3, r7, #7
 897 03ba 0022     		movs	r2, #0
 898 03bc 1A70     		strb	r2, [r3]
 899              		.loc 1 236 3
 900 03be 08E0     		b	.L45
 901              	.L46:
 237:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 			graphic_write_data(0, B_CS1|B_CS2);
 902              		.loc 1 237 4 discriminator 3
 903 03c0 1821     		movs	r1, #24
 904 03c2 0020     		movs	r0, #0
 905 03c4 FFF7C0FF 		bl	graphic_write_data
 236:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		for(i = 0; i <= 63; i++){
 906              		.loc 1 236 24 discriminator 3
 907 03c8 FB1D     		adds	r3, r7, #7
 908 03ca 1A78     		ldrb	r2, [r3]
 909 03cc FB1D     		adds	r3, r7, #7
 910 03ce 0132     		adds	r2, r2, #1
 911 03d0 1A70     		strb	r2, [r3]
 912              	.L45:
 236:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		for(i = 0; i <= 63; i++){
 913              		.loc 1 236 3 discriminator 1
 914 03d2 FB1D     		adds	r3, r7, #7
 915 03d4 1B78     		ldrb	r3, [r3]
 916 03d6 3F2B     		cmp	r3, #63
 917 03d8 F2D9     		bls	.L46
 233:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
 918              		.loc 1 233 21 discriminator 2
 919 03da BB1D     		adds	r3, r7, #6
 920 03dc 1A78     		ldrb	r2, [r3]
 921 03de BB1D     		adds	r3, r7, #6
 922 03e0 0132     		adds	r2, r2, #1
 923 03e2 1A70     		strb	r2, [r3]
 924              	.L44:
 233:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
 925              		.loc 1 233 2 discriminator 1
 926 03e4 BB1D     		adds	r3, r7, #6
 927 03e6 1B78     		ldrb	r3, [r3]
 928 03e8 072B     		cmp	r3, #7
 929 03ea D7D9     		bls	.L47
 238:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		}
 239:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	}
 240:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** }
 930              		.loc 1 240 1
 931 03ec C046     		nop
 932 03ee C046     		nop
 933 03f0 BD46     		mov	sp, r7
 934 03f2 02B0     		add	sp, sp, #8
 935              		@ sp needed
 936 03f4 80BD     		pop	{r7, pc}
 937              		.cfi_endproc
 938              	.LFE12:
 940              		.align	1
 941              		.global	pixel
 942              		.syntax unified
 943              		.code	16
 944              		.thumb_func
 945              		.fpu softvfp
 947              	pixel:
 948              	.LFB13:
 241:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 
 242:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** void pixel(int x, int y, int set) {
 949              		.loc 1 242 35
 950              		.cfi_startproc
 951              		@ args = 0, pretend = 0, frame = 32
 952              		@ frame_needed = 1, uses_anonymous_args = 0
 953 03f6 F0B5     		push	{r4, r5, r6, r7, lr}
 954              		.cfi_def_cfa_offset 20
 955              		.cfi_offset 4, -20
 956              		.cfi_offset 5, -16
 957              		.cfi_offset 6, -12
 958              		.cfi_offset 7, -8
 959              		.cfi_offset 14, -4
 960 03f8 89B0     		sub	sp, sp, #36
 961              		.cfi_def_cfa_offset 56
 962 03fa 00AF     		add	r7, sp, #0
 963              		.cfi_def_cfa_register 7
 964 03fc F860     		str	r0, [r7, #12]
 965 03fe B960     		str	r1, [r7, #8]
 966 0400 7A60     		str	r2, [r7, #4]
 243:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	uint8_t mask, c, controller;
 244:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	int index;
 245:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	if((x < 1) || (y < 1) || (x > 128) || (y > 64)) return;
 967              		.loc 1 245 4
 968 0402 FB68     		ldr	r3, [r7, #12]
 969 0404 002B     		cmp	r3, #0
 970 0406 00DC     		bgt	.LCB727
 971 0408 B5E0     		b	.L69	@long jump
 972              	.LCB727:
 973              		.loc 1 245 13 discriminator 2
 974 040a BB68     		ldr	r3, [r7, #8]
 975 040c 002B     		cmp	r3, #0
 976 040e 00DC     		bgt	.LCB730
 977 0410 B1E0     		b	.L69	@long jump
 978              	.LCB730:
 979              		.loc 1 245 24 discriminator 4
 980 0412 FB68     		ldr	r3, [r7, #12]
 981 0414 802B     		cmp	r3, #128
 982 0416 00DD     		ble	.LCB733
 983 0418 ADE0     		b	.L69	@long jump
 984              	.LCB733:
 985              		.loc 1 245 37 discriminator 6
 986 041a BB68     		ldr	r3, [r7, #8]
 987 041c 402B     		cmp	r3, #64
 988 041e 00DD     		ble	.LCB736
 989 0420 A9E0     		b	.L69	@long jump
 990              	.LCB736:
 246:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	index = (y-1)/8;
 991              		.loc 1 246 12
 992 0422 BB68     		ldr	r3, [r7, #8]
 993 0424 013B     		subs	r3, r3, #1
 994              		.loc 1 246 8
 995 0426 002B     		cmp	r3, #0
 996 0428 00DA     		bge	.L52
 997 042a 0733     		adds	r3, r3, #7
 998              	.L52:
 999 042c DB10     		asrs	r3, r3, #3
 1000 042e BB61     		str	r3, [r7, #24]
 247:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	switch( (y-1)%8 ) {
 1001              		.loc 1 247 12
 1002 0430 BB68     		ldr	r3, [r7, #8]
 1003 0432 013B     		subs	r3, r3, #1
 1004              		.loc 1 247 15
 1005 0434 524A     		ldr	r2, .L70
 1006 0436 1340     		ands	r3, r2
 1007 0438 04D5     		bpl	.L53
 1008 043a 013B     		subs	r3, r3, #1
 1009 043c 0822     		movs	r2, #8
 1010 043e 5242     		rsbs	r2, r2, #0
 1011 0440 1343     		orrs	r3, r2
 1012 0442 0133     		adds	r3, r3, #1
 1013              	.L53:
 1014 0444 072B     		cmp	r3, #7
 1015 0446 2CD8     		bhi	.L54
 1016 0448 9A00     		lsls	r2, r3, #2
 1017 044a 4E4B     		ldr	r3, .L70+4
 1018 044c D318     		adds	r3, r2, r3
 1019 044e 1B68     		ldr	r3, [r3]
 1020 0450 9F46     		mov	pc, r3
 1021              		.section	.rodata
 1022              		.align	2
 1023              	.L56:
 1024 0000 52040000 		.word	.L63
 1025 0004 5C040000 		.word	.L62
 1026 0008 66040000 		.word	.L61
 1027 000c 70040000 		.word	.L60
 1028 0010 7A040000 		.word	.L59
 1029 0014 84040000 		.word	.L58
 1030 0018 8E040000 		.word	.L57
 1031 001c 98040000 		.word	.L55
 1032              		.text
 1033              	.L63:
 248:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		case 0: mask = 1; break;
 1034              		.loc 1 248 16
 1035 0452 1F23     		movs	r3, #31
 1036 0454 FB18     		adds	r3, r7, r3
 1037 0456 0122     		movs	r2, #1
 1038 0458 1A70     		strb	r2, [r3]
 1039              		.loc 1 248 3
 1040 045a 22E0     		b	.L54
 1041              	.L62:
 249:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		case 1: mask = 2; break;
 1042              		.loc 1 249 16
 1043 045c 1F23     		movs	r3, #31
 1044 045e FB18     		adds	r3, r7, r3
 1045 0460 0222     		movs	r2, #2
 1046 0462 1A70     		strb	r2, [r3]
 1047              		.loc 1 249 3
 1048 0464 1DE0     		b	.L54
 1049              	.L61:
 250:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		case 2: mask = 4; break;
 1050              		.loc 1 250 16
 1051 0466 1F23     		movs	r3, #31
 1052 0468 FB18     		adds	r3, r7, r3
 1053 046a 0422     		movs	r2, #4
 1054 046c 1A70     		strb	r2, [r3]
 1055              		.loc 1 250 3
 1056 046e 18E0     		b	.L54
 1057              	.L60:
 251:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		case 3: mask = 8; break;
 1058              		.loc 1 251 16
 1059 0470 1F23     		movs	r3, #31
 1060 0472 FB18     		adds	r3, r7, r3
 1061 0474 0822     		movs	r2, #8
 1062 0476 1A70     		strb	r2, [r3]
 1063              		.loc 1 251 3
 1064 0478 13E0     		b	.L54
 1065              	.L59:
 252:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		case 4: mask = 0x10; break;
 1066              		.loc 1 252 16
 1067 047a 1F23     		movs	r3, #31
 1068 047c FB18     		adds	r3, r7, r3
 1069 047e 1022     		movs	r2, #16
 1070 0480 1A70     		strb	r2, [r3]
 1071              		.loc 1 252 3
 1072 0482 0EE0     		b	.L54
 1073              	.L58:
 253:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		case 5: mask = 0x20; break;
 1074              		.loc 1 253 16
 1075 0484 1F23     		movs	r3, #31
 1076 0486 FB18     		adds	r3, r7, r3
 1077 0488 2022     		movs	r2, #32
 1078 048a 1A70     		strb	r2, [r3]
 1079              		.loc 1 253 3
 1080 048c 09E0     		b	.L54
 1081              	.L57:
 254:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		case 6: mask = 0x40; break;
 1082              		.loc 1 254 16
 1083 048e 1F23     		movs	r3, #31
 1084 0490 FB18     		adds	r3, r7, r3
 1085 0492 4022     		movs	r2, #64
 1086 0494 1A70     		strb	r2, [r3]
 1087              		.loc 1 254 3
 1088 0496 04E0     		b	.L54
 1089              	.L55:
 255:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		case 7: mask = 0x80; break;
 1090              		.loc 1 255 16
 1091 0498 1F23     		movs	r3, #31
 1092 049a FB18     		adds	r3, r7, r3
 1093 049c 8022     		movs	r2, #128
 1094 049e 1A70     		strb	r2, [r3]
 1095              		.loc 1 255 3
 1096 04a0 C046     		nop
 1097              	.L54:
 256:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	}
 257:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		if(set == 0)
 1098              		.loc 1 257 5
 1099 04a2 7B68     		ldr	r3, [r7, #4]
 1100 04a4 002B     		cmp	r3, #0
 1101 04a6 05D1     		bne	.L64
 258:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 			mask = ~mask;
 1102              		.loc 1 258 9
 1103 04a8 1F22     		movs	r2, #31
 1104 04aa BB18     		adds	r3, r7, r2
 1105 04ac BA18     		adds	r2, r7, r2
 1106 04ae 1278     		ldrb	r2, [r2]
 1107 04b0 D243     		mvns	r2, r2
 1108 04b2 1A70     		strb	r2, [r3]
 1109              	.L64:
 259:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		if(x > 64){
 1110              		.loc 1 259 5
 1111 04b4 FB68     		ldr	r3, [r7, #12]
 1112 04b6 402B     		cmp	r3, #64
 1113 04b8 07DD     		ble	.L65
 260:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 			controller = B_CS2;
 1114              		.loc 1 260 15
 1115 04ba 1E23     		movs	r3, #30
 1116 04bc FB18     		adds	r3, r7, r3
 1117 04be 1022     		movs	r2, #16
 1118 04c0 1A70     		strb	r2, [r3]
 261:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		x = x - 65;
 1119              		.loc 1 261 5
 1120 04c2 FB68     		ldr	r3, [r7, #12]
 1121 04c4 413B     		subs	r3, r3, #65
 1122 04c6 FB60     		str	r3, [r7, #12]
 1123 04c8 06E0     		b	.L66
 1124              	.L65:
 262:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		} 
 263:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		else {
 264:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		controller = B_CS1;
 1125              		.loc 1 264 14
 1126 04ca 1E23     		movs	r3, #30
 1127 04cc FB18     		adds	r3, r7, r3
 1128 04ce 0822     		movs	r2, #8
 1129 04d0 1A70     		strb	r2, [r3]
 265:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		x = x-1;
 1130              		.loc 1 265 5
 1131 04d2 FB68     		ldr	r3, [r7, #12]
 1132 04d4 013B     		subs	r3, r3, #1
 1133 04d6 FB60     		str	r3, [r7, #12]
 1134              	.L66:
 266:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		}
 267:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		graphic_write_command(LCD_SET_ADD | x, controller );
 1135              		.loc 1 267 37
 1136 04d8 FB68     		ldr	r3, [r7, #12]
 1137 04da 5BB2     		sxtb	r3, r3
 1138 04dc 4022     		movs	r2, #64
 1139 04de 1343     		orrs	r3, r2
 1140 04e0 5BB2     		sxtb	r3, r3
 1141              		.loc 1 267 3
 1142 04e2 DAB2     		uxtb	r2, r3
 1143 04e4 1E25     		movs	r5, #30
 1144 04e6 7B19     		adds	r3, r7, r5
 1145 04e8 1B78     		ldrb	r3, [r3]
 1146 04ea 1900     		movs	r1, r3
 1147 04ec 1000     		movs	r0, r2
 1148 04ee FFF70BFF 		bl	graphic_write_command
 268:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		graphic_write_command(LCD_SET_PAGE | index, controller );
 1149              		.loc 1 268 38
 1150 04f2 BB69     		ldr	r3, [r7, #24]
 1151 04f4 5BB2     		sxtb	r3, r3
 1152 04f6 4822     		movs	r2, #72
 1153 04f8 5242     		rsbs	r2, r2, #0
 1154 04fa 1343     		orrs	r3, r2
 1155 04fc 5BB2     		sxtb	r3, r3
 1156              		.loc 1 268 3
 1157 04fe DAB2     		uxtb	r2, r3
 1158 0500 7B19     		adds	r3, r7, r5
 1159 0502 1B78     		ldrb	r3, [r3]
 1160 0504 1900     		movs	r1, r3
 1161 0506 1000     		movs	r0, r2
 1162 0508 FFF7FEFE 		bl	graphic_write_command
 269:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		c = graphic_read_data(controller);
 1163              		.loc 1 269 7
 1164 050c 1726     		movs	r6, #23
 1165 050e BC19     		adds	r4, r7, r6
 1166 0510 7B19     		adds	r3, r7, r5
 1167 0512 1B78     		ldrb	r3, [r3]
 1168 0514 1800     		movs	r0, r3
 1169 0516 FFF7ABFE 		bl	graphic_read_data
 1170 051a 0300     		movs	r3, r0
 1171 051c 2370     		strb	r3, [r4]
 270:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		graphic_write_command(LCD_SET_ADD | x, controller);
 1172              		.loc 1 270 37
 1173 051e FB68     		ldr	r3, [r7, #12]
 1174 0520 5BB2     		sxtb	r3, r3
 1175 0522 4022     		movs	r2, #64
 1176 0524 1343     		orrs	r3, r2
 1177 0526 5BB2     		sxtb	r3, r3
 1178              		.loc 1 270 3
 1179 0528 DAB2     		uxtb	r2, r3
 1180 052a 7B19     		adds	r3, r7, r5
 1181 052c 1B78     		ldrb	r3, [r3]
 1182 052e 1900     		movs	r1, r3
 1183 0530 1000     		movs	r0, r2
 1184 0532 FFF7E9FE 		bl	graphic_write_command
 271:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		if(set)
 1185              		.loc 1 271 5
 1186 0536 7B68     		ldr	r3, [r7, #4]
 1187 0538 002B     		cmp	r3, #0
 1188 053a 08D0     		beq	.L67
 272:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 			mask = mask | c;
 1189              		.loc 1 272 9
 1190 053c 1F22     		movs	r2, #31
 1191 053e BB18     		adds	r3, r7, r2
 1192 0540 B918     		adds	r1, r7, r2
 1193 0542 BA19     		adds	r2, r7, r6
 1194 0544 0978     		ldrb	r1, [r1]
 1195 0546 1278     		ldrb	r2, [r2]
 1196 0548 0A43     		orrs	r2, r1
 1197 054a 1A70     		strb	r2, [r3]
 1198 054c 08E0     		b	.L68
 1199              	.L67:
 273:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		else
 274:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 			mask = mask & c;
 1200              		.loc 1 274 9
 1201 054e 1F22     		movs	r2, #31
 1202 0550 BB18     		adds	r3, r7, r2
 1203 0552 BA18     		adds	r2, r7, r2
 1204 0554 1721     		movs	r1, #23
 1205 0556 7918     		adds	r1, r7, r1
 1206 0558 1278     		ldrb	r2, [r2]
 1207 055a 0978     		ldrb	r1, [r1]
 1208 055c 0A40     		ands	r2, r1
 1209 055e 1A70     		strb	r2, [r3]
 1210              	.L68:
 275:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		graphic_write_data(mask, controller);
 1211              		.loc 1 275 3
 1212 0560 1E23     		movs	r3, #30
 1213 0562 FB18     		adds	r3, r7, r3
 1214 0564 1A78     		ldrb	r2, [r3]
 1215 0566 1F23     		movs	r3, #31
 1216 0568 FB18     		adds	r3, r7, r3
 1217 056a 1B78     		ldrb	r3, [r3]
 1218 056c 1100     		movs	r1, r2
 1219 056e 1800     		movs	r0, r3
 1220 0570 FFF7EAFE 		bl	graphic_write_data
 1221 0574 00E0     		b	.L48
 1222              	.L69:
 245:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	index = (y-1)/8;
 1223              		.loc 1 245 50
 1224 0576 C046     		nop
 1225              	.L48:
 276:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** }
 1226              		.loc 1 276 1
 1227 0578 BD46     		mov	sp, r7
 1228 057a 09B0     		add	sp, sp, #36
 1229              		@ sp needed
 1230 057c F0BD     		pop	{r4, r5, r6, r7, pc}
 1231              	.L71:
 1232 057e C046     		.align	2
 1233              	.L70:
 1234 0580 07000080 		.word	-2147483641
 1235 0584 00000000 		.word	.L56
 1236              		.cfi_endproc
 1237              	.LFE13:
 1239              		.align	1
 1240              		.global	set_object_speed
 1241              		.syntax unified
 1242              		.code	16
 1243              		.thumb_func
 1244              		.fpu softvfp
 1246              	set_object_speed:
 1247              	.LFB14:
 277:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 
 278:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** void set_object_speed(POBJECT O, int speedx, int speedy){
 1248              		.loc 1 278 57
 1249              		.cfi_startproc
 1250              		@ args = 0, pretend = 0, frame = 16
 1251              		@ frame_needed = 1, uses_anonymous_args = 0
 1252 0588 80B5     		push	{r7, lr}
 1253              		.cfi_def_cfa_offset 8
 1254              		.cfi_offset 7, -8
 1255              		.cfi_offset 14, -4
 1256 058a 84B0     		sub	sp, sp, #16
 1257              		.cfi_def_cfa_offset 24
 1258 058c 00AF     		add	r7, sp, #0
 1259              		.cfi_def_cfa_register 7
 1260 058e F860     		str	r0, [r7, #12]
 1261 0590 B960     		str	r1, [r7, #8]
 1262 0592 7A60     		str	r2, [r7, #4]
 279:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	O->dirx = speedx;
 1263              		.loc 1 279 10
 1264 0594 FB68     		ldr	r3, [r7, #12]
 1265 0596 BA68     		ldr	r2, [r7, #8]
 1266 0598 5A60     		str	r2, [r3, #4]
 280:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	O->diry = speedy;
 1267              		.loc 1 280 10
 1268 059a FB68     		ldr	r3, [r7, #12]
 1269 059c 7A68     		ldr	r2, [r7, #4]
 1270 059e 9A60     		str	r2, [r3, #8]
 281:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** }
 1271              		.loc 1 281 1
 1272 05a0 C046     		nop
 1273 05a2 BD46     		mov	sp, r7
 1274 05a4 04B0     		add	sp, sp, #16
 1275              		@ sp needed
 1276 05a6 80BD     		pop	{r7, pc}
 1277              		.cfi_endproc
 1278              	.LFE14:
 1280              		.align	1
 1281              		.global	draw_object
 1282              		.syntax unified
 1283              		.code	16
 1284              		.thumb_func
 1285              		.fpu softvfp
 1287              	draw_object:
 1288              	.LFB15:
 282:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** void draw_object(POBJECT O){
 1289              		.loc 1 282 28
 1290              		.cfi_startproc
 1291              		@ args = 0, pretend = 0, frame = 16
 1292              		@ frame_needed = 1, uses_anonymous_args = 0
 1293 05a8 80B5     		push	{r7, lr}
 1294              		.cfi_def_cfa_offset 8
 1295              		.cfi_offset 7, -8
 1296              		.cfi_offset 14, -4
 1297 05aa 84B0     		sub	sp, sp, #16
 1298              		.cfi_def_cfa_offset 24
 1299 05ac 00AF     		add	r7, sp, #0
 1300              		.cfi_def_cfa_register 7
 1301 05ae 7860     		str	r0, [r7, #4]
 1302              	.LBB2:
 283:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	for(int i = 0; i < MAX_POINTS ;i++){
 1303              		.loc 1 283 10
 1304 05b0 0023     		movs	r3, #0
 1305 05b2 FB60     		str	r3, [r7, #12]
 1306              		.loc 1 283 2
 1307 05b4 1CE0     		b	.L74
 1308              	.L75:
 284:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		pixel(O->posx + O->geo->px[i].x, O->posy + O->geo->px[i].y, 1);
 1309              		.loc 1 284 10 discriminator 3
 1310 05b6 7B68     		ldr	r3, [r7, #4]
 1311 05b8 DA68     		ldr	r2, [r3, #12]
 1312              		.loc 1 284 20 discriminator 3
 1313 05ba 7B68     		ldr	r3, [r7, #4]
 1314 05bc 1968     		ldr	r1, [r3]
 1315              		.loc 1 284 32 discriminator 3
 1316 05be FB68     		ldr	r3, [r7, #12]
 1317 05c0 0433     		adds	r3, r3, #4
 1318 05c2 5B00     		lsls	r3, r3, #1
 1319 05c4 CB18     		adds	r3, r1, r3
 1320 05c6 0433     		adds	r3, r3, #4
 1321 05c8 1B78     		ldrb	r3, [r3]
 1322              		.loc 1 284 3 discriminator 3
 1323 05ca D018     		adds	r0, r2, r3
 1324              		.loc 1 284 37 discriminator 3
 1325 05cc 7B68     		ldr	r3, [r7, #4]
 1326 05ce 1A69     		ldr	r2, [r3, #16]
 1327              		.loc 1 284 47 discriminator 3
 1328 05d0 7B68     		ldr	r3, [r7, #4]
 1329 05d2 1968     		ldr	r1, [r3]
 1330              		.loc 1 284 59 discriminator 3
 1331 05d4 FB68     		ldr	r3, [r7, #12]
 1332 05d6 0433     		adds	r3, r3, #4
 1333 05d8 5B00     		lsls	r3, r3, #1
 1334 05da CB18     		adds	r3, r1, r3
 1335 05dc 0533     		adds	r3, r3, #5
 1336 05de 1B78     		ldrb	r3, [r3]
 1337              		.loc 1 284 3 discriminator 3
 1338 05e0 D318     		adds	r3, r2, r3
 1339 05e2 0122     		movs	r2, #1
 1340 05e4 1900     		movs	r1, r3
 1341 05e6 FFF7FEFF 		bl	pixel
 283:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	for(int i = 0; i < MAX_POINTS ;i++){
 1342              		.loc 1 283 34 discriminator 3
 1343 05ea FB68     		ldr	r3, [r7, #12]
 1344 05ec 0133     		adds	r3, r3, #1
 1345 05ee FB60     		str	r3, [r7, #12]
 1346              	.L74:
 283:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	for(int i = 0; i < MAX_POINTS ;i++){
 1347              		.loc 1 283 2 discriminator 1
 1348 05f0 FB68     		ldr	r3, [r7, #12]
 1349 05f2 132B     		cmp	r3, #19
 1350 05f4 DFDD     		ble	.L75
 1351              	.LBE2:
 285:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	}
 286:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** }
 1352              		.loc 1 286 1
 1353 05f6 C046     		nop
 1354 05f8 C046     		nop
 1355 05fa BD46     		mov	sp, r7
 1356 05fc 04B0     		add	sp, sp, #16
 1357              		@ sp needed
 1358 05fe 80BD     		pop	{r7, pc}
 1359              		.cfi_endproc
 1360              	.LFE15:
 1362              		.align	1
 1363              		.global	clear_object
 1364              		.syntax unified
 1365              		.code	16
 1366              		.thumb_func
 1367              		.fpu softvfp
 1369              	clear_object:
 1370              	.LFB16:
 287:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** void clear_object(POBJECT O){
 1371              		.loc 1 287 29
 1372              		.cfi_startproc
 1373              		@ args = 0, pretend = 0, frame = 16
 1374              		@ frame_needed = 1, uses_anonymous_args = 0
 1375 0600 80B5     		push	{r7, lr}
 1376              		.cfi_def_cfa_offset 8
 1377              		.cfi_offset 7, -8
 1378              		.cfi_offset 14, -4
 1379 0602 84B0     		sub	sp, sp, #16
 1380              		.cfi_def_cfa_offset 24
 1381 0604 00AF     		add	r7, sp, #0
 1382              		.cfi_def_cfa_register 7
 1383 0606 7860     		str	r0, [r7, #4]
 1384              	.LBB3:
 288:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	for(int i = 0; i < MAX_POINTS; i++){
 1385              		.loc 1 288 10
 1386 0608 0023     		movs	r3, #0
 1387 060a FB60     		str	r3, [r7, #12]
 1388              		.loc 1 288 2
 1389 060c 1CE0     		b	.L77
 1390              	.L78:
 289:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		pixel(O->posx + O->geo->px[i].x, O->posy + O->geo->px[i].y, 0);
 1391              		.loc 1 289 10 discriminator 3
 1392 060e 7B68     		ldr	r3, [r7, #4]
 1393 0610 DA68     		ldr	r2, [r3, #12]
 1394              		.loc 1 289 20 discriminator 3
 1395 0612 7B68     		ldr	r3, [r7, #4]
 1396 0614 1968     		ldr	r1, [r3]
 1397              		.loc 1 289 32 discriminator 3
 1398 0616 FB68     		ldr	r3, [r7, #12]
 1399 0618 0433     		adds	r3, r3, #4
 1400 061a 5B00     		lsls	r3, r3, #1
 1401 061c CB18     		adds	r3, r1, r3
 1402 061e 0433     		adds	r3, r3, #4
 1403 0620 1B78     		ldrb	r3, [r3]
 1404              		.loc 1 289 3 discriminator 3
 1405 0622 D018     		adds	r0, r2, r3
 1406              		.loc 1 289 37 discriminator 3
 1407 0624 7B68     		ldr	r3, [r7, #4]
 1408 0626 1A69     		ldr	r2, [r3, #16]
 1409              		.loc 1 289 47 discriminator 3
 1410 0628 7B68     		ldr	r3, [r7, #4]
 1411 062a 1968     		ldr	r1, [r3]
 1412              		.loc 1 289 59 discriminator 3
 1413 062c FB68     		ldr	r3, [r7, #12]
 1414 062e 0433     		adds	r3, r3, #4
 1415 0630 5B00     		lsls	r3, r3, #1
 1416 0632 CB18     		adds	r3, r1, r3
 1417 0634 0533     		adds	r3, r3, #5
 1418 0636 1B78     		ldrb	r3, [r3]
 1419              		.loc 1 289 3 discriminator 3
 1420 0638 D318     		adds	r3, r2, r3
 1421 063a 0022     		movs	r2, #0
 1422 063c 1900     		movs	r1, r3
 1423 063e FFF7FEFF 		bl	pixel
 288:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	for(int i = 0; i < MAX_POINTS; i++){
 1424              		.loc 1 288 34 discriminator 3
 1425 0642 FB68     		ldr	r3, [r7, #12]
 1426 0644 0133     		adds	r3, r3, #1
 1427 0646 FB60     		str	r3, [r7, #12]
 1428              	.L77:
 288:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	for(int i = 0; i < MAX_POINTS; i++){
 1429              		.loc 1 288 2 discriminator 1
 1430 0648 FB68     		ldr	r3, [r7, #12]
 1431 064a 132B     		cmp	r3, #19
 1432 064c DFDD     		ble	.L78
 1433              	.LBE3:
 290:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	}
 291:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** }
 1434              		.loc 1 291 1
 1435 064e C046     		nop
 1436 0650 C046     		nop
 1437 0652 BD46     		mov	sp, r7
 1438 0654 04B0     		add	sp, sp, #16
 1439              		@ sp needed
 1440 0656 80BD     		pop	{r7, pc}
 1441              		.cfi_endproc
 1442              	.LFE16:
 1444              		.align	1
 1445              		.global	move_object
 1446              		.syntax unified
 1447              		.code	16
 1448              		.thumb_func
 1449              		.fpu softvfp
 1451              	move_object:
 1452              	.LFB17:
 292:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** void move_object(POBJECT O){
 1453              		.loc 1 292 28
 1454              		.cfi_startproc
 1455              		@ args = 0, pretend = 0, frame = 8
 1456              		@ frame_needed = 1, uses_anonymous_args = 0
 1457 0658 80B5     		push	{r7, lr}
 1458              		.cfi_def_cfa_offset 8
 1459              		.cfi_offset 7, -8
 1460              		.cfi_offset 14, -4
 1461 065a 82B0     		sub	sp, sp, #8
 1462              		.cfi_def_cfa_offset 16
 1463 065c 00AF     		add	r7, sp, #0
 1464              		.cfi_def_cfa_register 7
 1465 065e 7860     		str	r0, [r7, #4]
 293:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	clear_object(O);
 1466              		.loc 1 293 2
 1467 0660 7B68     		ldr	r3, [r7, #4]
 1468 0662 1800     		movs	r0, r3
 1469 0664 FFF7FEFF 		bl	clear_object
 294:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	O->posx += O->dirx;
 1470              		.loc 1 294 10
 1471 0668 7B68     		ldr	r3, [r7, #4]
 1472 066a DA68     		ldr	r2, [r3, #12]
 1473              		.loc 1 294 14
 1474 066c 7B68     		ldr	r3, [r7, #4]
 1475 066e 5B68     		ldr	r3, [r3, #4]
 1476              		.loc 1 294 10
 1477 0670 D218     		adds	r2, r2, r3
 1478 0672 7B68     		ldr	r3, [r7, #4]
 1479 0674 DA60     		str	r2, [r3, #12]
 295:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	O->posy += O->diry;
 1480              		.loc 1 295 10
 1481 0676 7B68     		ldr	r3, [r7, #4]
 1482 0678 1A69     		ldr	r2, [r3, #16]
 1483              		.loc 1 295 14
 1484 067a 7B68     		ldr	r3, [r7, #4]
 1485 067c 9B68     		ldr	r3, [r3, #8]
 1486              		.loc 1 295 10
 1487 067e D218     		adds	r2, r2, r3
 1488 0680 7B68     		ldr	r3, [r7, #4]
 1489 0682 1A61     		str	r2, [r3, #16]
 296:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	if(O->posx < 1 || O->posx > 128){
 1490              		.loc 1 296 6
 1491 0684 7B68     		ldr	r3, [r7, #4]
 1492 0686 DB68     		ldr	r3, [r3, #12]
 1493              		.loc 1 296 4
 1494 0688 002B     		cmp	r3, #0
 1495 068a 03DD     		ble	.L80
 1496              		.loc 1 296 21 discriminator 1
 1497 068c 7B68     		ldr	r3, [r7, #4]
 1498 068e DB68     		ldr	r3, [r3, #12]
 1499              		.loc 1 296 17 discriminator 1
 1500 0690 802B     		cmp	r3, #128
 1501 0692 05DD     		ble	.L81
 1502              	.L80:
 297:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		O->dirx = -(O->dirx);
 1503              		.loc 1 297 16
 1504 0694 7B68     		ldr	r3, [r7, #4]
 1505 0696 5B68     		ldr	r3, [r3, #4]
 1506              		.loc 1 297 13
 1507 0698 5A42     		rsbs	r2, r3, #0
 1508              		.loc 1 297 11
 1509 069a 7B68     		ldr	r3, [r7, #4]
 1510 069c 5A60     		str	r2, [r3, #4]
 1511 069e 11E0     		b	.L82
 1512              	.L81:
 298:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	}
 299:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	else if(O->posy < 1 || O->posy > 128 - O->geo->sizeY){
 1513              		.loc 1 299 11
 1514 06a0 7B68     		ldr	r3, [r7, #4]
 1515 06a2 1B69     		ldr	r3, [r3, #16]
 1516              		.loc 1 299 9
 1517 06a4 002B     		cmp	r3, #0
 1518 06a6 08DD     		ble	.L83
 1519              		.loc 1 299 26 discriminator 1
 1520 06a8 7B68     		ldr	r3, [r7, #4]
 1521 06aa 1A69     		ldr	r2, [r3, #16]
 1522              		.loc 1 299 42 discriminator 1
 1523 06ac 7B68     		ldr	r3, [r7, #4]
 1524 06ae 1B68     		ldr	r3, [r3]
 1525              		.loc 1 299 47 discriminator 1
 1526 06b0 9B68     		ldr	r3, [r3, #8]
 1527              		.loc 1 299 39 discriminator 1
 1528 06b2 8021     		movs	r1, #128
 1529 06b4 CB1A     		subs	r3, r1, r3
 1530              		.loc 1 299 22 discriminator 1
 1531 06b6 9A42     		cmp	r2, r3
 1532 06b8 04DD     		ble	.L82
 1533              	.L83:
 300:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		O->diry = -(O->diry);
 1534              		.loc 1 300 16
 1535 06ba 7B68     		ldr	r3, [r7, #4]
 1536 06bc 9B68     		ldr	r3, [r3, #8]
 1537              		.loc 1 300 13
 1538 06be 5A42     		rsbs	r2, r3, #0
 1539              		.loc 1 300 11
 1540 06c0 7B68     		ldr	r3, [r7, #4]
 1541 06c2 9A60     		str	r2, [r3, #8]
 1542              	.L82:
 301:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	}
 302:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	draw_object(O);
 1543              		.loc 1 302 2
 1544 06c4 7B68     		ldr	r3, [r7, #4]
 1545 06c6 1800     		movs	r0, r3
 1546 06c8 FFF7FEFF 		bl	draw_object
 303:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** }
 1547              		.loc 1 303 1
 1548 06cc C046     		nop
 1549 06ce BD46     		mov	sp, r7
 1550 06d0 02B0     		add	sp, sp, #8
 1551              		@ sp needed
 1552 06d2 80BD     		pop	{r7, pc}
 1553              		.cfi_endproc
 1554              	.LFE17:
 1556              		.align	1
 1557              		.global	delay_250ns
 1558              		.syntax unified
 1559              		.code	16
 1560              		.thumb_func
 1561              		.fpu softvfp
 1563              	delay_250ns:
 1564              	.LFB18:
 304:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 
 305:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** //Delay funktioner
 306:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** void delay_250ns ( void ) {
 1565              		.loc 1 306 27
 1566              		.cfi_startproc
 1567              		@ args = 0, pretend = 0, frame = 0
 1568              		@ frame_needed = 1, uses_anonymous_args = 0
 1569 06d4 80B5     		push	{r7, lr}
 1570              		.cfi_def_cfa_offset 8
 1571              		.cfi_offset 7, -8
 1572              		.cfi_offset 14, -4
 1573 06d6 00AF     		add	r7, sp, #0
 1574              		.cfi_def_cfa_register 7
 307:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		*STK_CTRL = 0x00;
 1575              		.loc 1 307 3
 1576 06d8 0C4B     		ldr	r3, .L86
 1577              		.loc 1 307 13
 1578 06da 0022     		movs	r2, #0
 1579 06dc 1A60     		str	r2, [r3]
 308:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		*STK_LOAD = ((168/4) - 1);
 1580              		.loc 1 308 3
 1581 06de 0C4B     		ldr	r3, .L86+4
 1582              		.loc 1 308 13
 1583 06e0 2922     		movs	r2, #41
 1584 06e2 1A60     		str	r2, [r3]
 309:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		*STK_VAL = 0;
 1585              		.loc 1 309 3
 1586 06e4 0B4B     		ldr	r3, .L86+8
 1587              		.loc 1 309 12
 1588 06e6 0022     		movs	r2, #0
 1589 06e8 1A60     		str	r2, [r3]
 310:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		*STK_CTRL = 5;
 1590              		.loc 1 310 3
 1591 06ea 084B     		ldr	r3, .L86
 1592              		.loc 1 310 13
 1593 06ec 0522     		movs	r2, #5
 1594 06ee 1A60     		str	r2, [r3]
 311:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		while ((*STK_CTRL & 0x10000) == 0){}
 1595              		.loc 1 311 9
 1596 06f0 C046     		nop
 1597              	.L85:
 1598              		.loc 1 311 11 discriminator 1
 1599 06f2 064B     		ldr	r3, .L86
 1600 06f4 1A68     		ldr	r2, [r3]
 1601              		.loc 1 311 21 discriminator 1
 1602 06f6 8023     		movs	r3, #128
 1603 06f8 5B02     		lsls	r3, r3, #9
 1604 06fa 1340     		ands	r3, r2
 1605              		.loc 1 311 9 discriminator 1
 1606 06fc F9D0     		beq	.L85
 312:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		*STK_CTRL = 0;
 1607              		.loc 1 312 3
 1608 06fe 034B     		ldr	r3, .L86
 1609              		.loc 1 312 13
 1610 0700 0022     		movs	r2, #0
 1611 0702 1A60     		str	r2, [r3]
 313:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** }
 1612              		.loc 1 313 1
 1613 0704 C046     		nop
 1614 0706 BD46     		mov	sp, r7
 1615              		@ sp needed
 1616 0708 80BD     		pop	{r7, pc}
 1617              	.L87:
 1618 070a C046     		.align	2
 1619              	.L86:
 1620 070c 10E000E0 		.word	-536813552
 1621 0710 14E000E0 		.word	-536813548
 1622 0714 18E000E0 		.word	-536813544
 1623              		.cfi_endproc
 1624              	.LFE18:
 1626              		.align	1
 1627              		.global	delay_500ns
 1628              		.syntax unified
 1629              		.code	16
 1630              		.thumb_func
 1631              		.fpu softvfp
 1633              	delay_500ns:
 1634              	.LFB19:
 314:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** void delay_500ns(void){
 1635              		.loc 1 314 23
 1636              		.cfi_startproc
 1637              		@ args = 0, pretend = 0, frame = 0
 1638              		@ frame_needed = 1, uses_anonymous_args = 0
 1639 0718 80B5     		push	{r7, lr}
 1640              		.cfi_def_cfa_offset 8
 1641              		.cfi_offset 7, -8
 1642              		.cfi_offset 14, -4
 1643 071a 00AF     		add	r7, sp, #0
 1644              		.cfi_def_cfa_register 7
 315:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	delay_250ns();
 1645              		.loc 1 315 2
 1646 071c FFF7FEFF 		bl	delay_250ns
 316:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	delay_250ns();
 1647              		.loc 1 316 2
 1648 0720 FFF7FEFF 		bl	delay_250ns
 317:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** }
 1649              		.loc 1 317 1
 1650 0724 C046     		nop
 1651 0726 BD46     		mov	sp, r7
 1652              		@ sp needed
 1653 0728 80BD     		pop	{r7, pc}
 1654              		.cfi_endproc
 1655              	.LFE19:
 1657              		.align	1
 1658              		.global	delay_mikro
 1659              		.syntax unified
 1660              		.code	16
 1661              		.thumb_func
 1662              		.fpu softvfp
 1664              	delay_mikro:
 1665              	.LFB20:
 318:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** void delay_mikro (unsigned int us){
 1666              		.loc 1 318 35
 1667              		.cfi_startproc
 1668              		@ args = 0, pretend = 0, frame = 16
 1669              		@ frame_needed = 1, uses_anonymous_args = 0
 1670 072a 80B5     		push	{r7, lr}
 1671              		.cfi_def_cfa_offset 8
 1672              		.cfi_offset 7, -8
 1673              		.cfi_offset 14, -4
 1674 072c 84B0     		sub	sp, sp, #16
 1675              		.cfi_def_cfa_offset 24
 1676 072e 00AF     		add	r7, sp, #0
 1677              		.cfi_def_cfa_register 7
 1678 0730 7860     		str	r0, [r7, #4]
 1679              	.LBB4:
 319:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	for (int i = 0; i < us; i++) {
 1680              		.loc 1 319 11
 1681 0732 0023     		movs	r3, #0
 1682 0734 FB60     		str	r3, [r7, #12]
 1683              		.loc 1 319 2
 1684 0736 0AE0     		b	.L90
 1685              	.L91:
 320:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		delay_250ns();
 1686              		.loc 1 320 3 discriminator 3
 1687 0738 FFF7FEFF 		bl	delay_250ns
 321:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		delay_250ns();
 1688              		.loc 1 321 3 discriminator 3
 1689 073c FFF7FEFF 		bl	delay_250ns
 322:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		delay_250ns();
 1690              		.loc 1 322 3 discriminator 3
 1691 0740 FFF7FEFF 		bl	delay_250ns
 323:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		delay_250ns();
 1692              		.loc 1 323 3 discriminator 3
 1693 0744 FFF7FEFF 		bl	delay_250ns
 319:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		delay_250ns();
 1694              		.loc 1 319 27 discriminator 3
 1695 0748 FB68     		ldr	r3, [r7, #12]
 1696 074a 0133     		adds	r3, r3, #1
 1697 074c FB60     		str	r3, [r7, #12]
 1698              	.L90:
 319:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		delay_250ns();
 1699              		.loc 1 319 20 discriminator 1
 1700 074e FB68     		ldr	r3, [r7, #12]
 319:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		delay_250ns();
 1701              		.loc 1 319 2 discriminator 1
 1702 0750 7A68     		ldr	r2, [r7, #4]
 1703 0752 9A42     		cmp	r2, r3
 1704 0754 F0D8     		bhi	.L91
 1705              	.LBE4:
 324:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		}
 325:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** }	
 1706              		.loc 1 325 1
 1707 0756 C046     		nop
 1708 0758 C046     		nop
 1709 075a BD46     		mov	sp, r7
 1710 075c 04B0     		add	sp, sp, #16
 1711              		@ sp needed
 1712 075e 80BD     		pop	{r7, pc}
 1713              		.cfi_endproc
 1714              	.LFE20:
 1716              		.align	1
 1717              		.global	delay_milli
 1718              		.syntax unified
 1719              		.code	16
 1720              		.thumb_func
 1721              		.fpu softvfp
 1723              	delay_milli:
 1724              	.LFB21:
 326:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** void delay_milli (unsigned int ms){
 1725              		.loc 1 326 35
 1726              		.cfi_startproc
 1727              		@ args = 0, pretend = 0, frame = 8
 1728              		@ frame_needed = 1, uses_anonymous_args = 0
 1729 0760 80B5     		push	{r7, lr}
 1730              		.cfi_def_cfa_offset 8
 1731              		.cfi_offset 7, -8
 1732              		.cfi_offset 14, -4
 1733 0762 82B0     		sub	sp, sp, #8
 1734              		.cfi_def_cfa_offset 16
 1735 0764 00AF     		add	r7, sp, #0
 1736              		.cfi_def_cfa_register 7
 1737 0766 7860     		str	r0, [r7, #4]
 327:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	#ifdef SIMULATOR
 328:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		delay_mikro(ms);
 1738              		.loc 1 328 3
 1739 0768 7B68     		ldr	r3, [r7, #4]
 1740 076a 1800     		movs	r0, r3
 1741 076c FFF7FEFF 		bl	delay_mikro
 329:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	#else
 330:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		delay_mikro(ms);
 331:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	#endif
 332:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** }
 1742              		.loc 1 332 1
 1743 0770 C046     		nop
 1744 0772 BD46     		mov	sp, r7
 1745 0774 02B0     		add	sp, sp, #8
 1746              		@ sp needed
 1747 0776 80BD     		pop	{r7, pc}
 1748              		.cfi_endproc
 1749              	.LFE21:
 1751              		.align	1
 1752              		.global	main
 1753              		.syntax unified
 1754              		.code	16
 1755              		.thumb_func
 1756              		.fpu softvfp
 1758              	main:
 1759              	.LFB22:
 333:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 
 334:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** void main(void){
 1760              		.loc 1 334 16
 1761              		.cfi_startproc
 1762              		@ args = 0, pretend = 0, frame = 8
 1763              		@ frame_needed = 1, uses_anonymous_args = 0
 1764 0778 80B5     		push	{r7, lr}
 1765              		.cfi_def_cfa_offset 8
 1766              		.cfi_offset 7, -8
 1767              		.cfi_offset 14, -4
 1768 077a 82B0     		sub	sp, sp, #8
 1769              		.cfi_def_cfa_offset 16
 1770 077c 00AF     		add	r7, sp, #0
 1771              		.cfi_def_cfa_register 7
 335:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	POBJECT p = &ball;
 1772              		.loc 1 335 10
 1773 077e 0A4B     		ldr	r3, .L95
 1774 0780 7B60     		str	r3, [r7, #4]
 336:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	init_app();
 1775              		.loc 1 336 2
 1776 0782 FFF7FEFF 		bl	init_app
 337:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	graphic_initialize();
 1777              		.loc 1 337 2
 1778 0786 FFF7FEFF 		bl	graphic_initialize
 338:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	#ifndef SIMULATOR
 339:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		graphic_clear_screen();
 340:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 	#endif
 341:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		p->set_speed(p, 4, 2);
 1779              		.loc 1 341 4
 1780 078a 7B68     		ldr	r3, [r7, #4]
 1781 078c 1B6A     		ldr	r3, [r3, #32]
 1782              		.loc 1 341 3
 1783 078e 7868     		ldr	r0, [r7, #4]
 1784 0790 0222     		movs	r2, #2
 1785 0792 0421     		movs	r1, #4
 1786 0794 9847     		blx	r3
 1787              	.LVL0:
 1788              	.L94:
 342:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 		while(1){
 343:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 			p->move(p);
 1789              		.loc 1 343 5 discriminator 1
 1790 0796 7B68     		ldr	r3, [r7, #4]
 1791 0798 DB69     		ldr	r3, [r3, #28]
 1792              		.loc 1 343 4 discriminator 1
 1793 079a 7A68     		ldr	r2, [r7, #4]
 1794 079c 1000     		movs	r0, r2
 1795 079e 9847     		blx	r3
 1796              	.LVL1:
 344:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 			delay_milli(40);
 1797              		.loc 1 344 4 discriminator 1
 1798 07a0 2820     		movs	r0, #40
 1799 07a2 FFF7FEFF 		bl	delay_milli
 343:C:/Users/David/Documents/Chalmers/MOP/moplabb/autopong\autopong.c **** 			delay_milli(40);
 1800              		.loc 1 343 4 discriminator 1
 1801 07a6 F6E7     		b	.L94
 1802              	.L96:
 1803              		.align	2
 1804              	.L95:
 1805 07a8 34000000 		.word	ball
 1806              		.cfi_endproc
 1807              	.LFE22:
 1809              	.Letext0:
