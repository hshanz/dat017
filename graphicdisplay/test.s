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
  11              		.file	"graphicdisplay.c"
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
  25              		.file 1 "C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay/graphicdisplay.c"
   1:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** /*
   2:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c ****  * 	startup.c
   3:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c ****  *
   4:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c ****  */
   5:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   6:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 
   7:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** void startup ( void ){
  26              		.loc 1 7 22
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
   8:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** __asm volatile(
  31              		.loc 1 8 1
  32              		.syntax divided
  33              	@ 8 "C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay/graphicdisplay.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
   9:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  10:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	" MOV SP,R0\n"
  11:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	" BL main\n"				/* call main */
  12:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	"_exit: B .\n"				/* never return */
  13:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	) ;
  14:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** }
  40              		.loc 1 14 1
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.text
  48              		.align	1
  49              		.syntax unified
  50              		.code	16
  51              		.thumb_func
  52              		.fpu softvfp
  54              	graphic_ctrl_bit_set:
  55              	.LFB1:
  15:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define PORT_DISPLAY_BASE 0x40021000 // MD407 port E
  16:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define portModer ((volatile unsigned int *) (PORT_DISPLAY_BASE))
  17:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define portOtyper ((volatile unsigned short *) (PORT_DISPLAY_BASE+0x4))
  18:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define portOspeedr ((volatile unsigned int *) (PORT_DISPLAY_BASE+0x8))
  19:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define portPupdr ((volatile unsigned int *) (PORT_DISPLAY_BASE+0xC))
  20:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define portIdr ((volatile unsigned short *) (PORT_DISPLAY_BASE+0x10))
  21:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define portIdrHigh ((volatile unsigned char *) (PORT_DISPLAY_BASE+0x11))
  22:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define portOdrLow ((volatile unsigned char *) (PORT_DISPLAY_BASE+0x14))
  23:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define portOdrHigh ((volatile unsigned char *) (PORT_DISPLAY_BASE+0x14+1))
  24:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 
  25:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define SysTick 0xE000E010
  26:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define STK_CTRL ((volatile unsigned int*) (SysTick))
  27:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define STK_LOAD ((volatile unsigned int*) (SysTick + 0x4))
  28:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define STK_VAL ((volatile unsigned int*) (SysTick + 0x8))
  29:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 
  30:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define B_E 0x40 // Enable
  31:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define B_RST 0x20 // Reset
  32:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define B_CS2 0x10 // Controller Select 2
  33:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define B_CS1 8 // Controller Select 1
  34:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define B_SELECT 4 // 0 Graphics, 1 ASCII
  35:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define B_RW 2 // 0 Write, 1 Read
  36:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define B_RS 1 // 0 Command, 1 Data
  37:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 
  38:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define LCD_ON 0x3F // Display on
  39:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define LCD_OFF 0x3E // Display off
  40:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define LCD_SET_ADD 0x40 // Set horizontal coordinate
  41:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define LCD_SET_PAGE 0xB8 // Set vertical coordinate
  42:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define LCD_DISP_START 0xC0 // Start address
  43:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** #define LCD_BUSY 0x80 // Read busy status
  44:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 
  45:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** //#define SIMULATOR 
  46:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 
  47:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** typedef unsigned char uint8_t;
  48:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** //funktions declarationer
  49:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** void graphic_initialize(void);
  50:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** static void graphic_write_command(uint8_t command, uint8_t controller);
  51:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** static void graphic_write_data(uint8_t data, uint8_t controller);
  52:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** static void graphic_write(uint8_t value, uint8_t controller);
  53:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** static void graphic_ctrl_bit_clear(uint8_t x);
  54:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 
  55:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** // Funktioner
  56:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** static void graphic_ctrl_bit_set(uint8_t x) {
  56              		.loc 1 56 45
  57              		.cfi_startproc
  58              		@ args = 0, pretend = 0, frame = 16
  59              		@ frame_needed = 1, uses_anonymous_args = 0
  60 0000 80B5     		push	{r7, lr}
  61              		.cfi_def_cfa_offset 8
  62              		.cfi_offset 7, -8
  63              		.cfi_offset 14, -4
  64 0002 84B0     		sub	sp, sp, #16
  65              		.cfi_def_cfa_offset 24
  66 0004 00AF     		add	r7, sp, #0
  67              		.cfi_def_cfa_register 7
  68 0006 0200     		movs	r2, r0
  69 0008 FB1D     		adds	r3, r7, #7
  70 000a 1A70     		strb	r2, [r3]
  57:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** uint8_t c;
  58:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** c = *portOdrLow;
  71              		.loc 1 58 5
  72 000c 0F4A     		ldr	r2, .L3
  73              		.loc 1 58 3
  74 000e 0F20     		movs	r0, #15
  75 0010 3B18     		adds	r3, r7, r0
  76 0012 1278     		ldrb	r2, [r2]
  77 0014 1A70     		strb	r2, [r3]
  59:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** c &= ~B_SELECT;
  78              		.loc 1 59 3
  79 0016 3B18     		adds	r3, r7, r0
  80 0018 3A18     		adds	r2, r7, r0
  81 001a 1278     		ldrb	r2, [r2]
  82 001c 0421     		movs	r1, #4
  83 001e 8A43     		bics	r2, r1
  84 0020 1A70     		strb	r2, [r3]
  60:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** c |= (~B_SELECT & x);
  85              		.loc 1 60 17
  86 0022 FB1D     		adds	r3, r7, #7
  87 0024 1B78     		ldrb	r3, [r3]
  88 0026 5BB2     		sxtb	r3, r3
  89 0028 0422     		movs	r2, #4
  90 002a 9343     		bics	r3, r2
  91 002c 5AB2     		sxtb	r2, r3
  92              		.loc 1 60 3
  93 002e 3B18     		adds	r3, r7, r0
  94 0030 1B78     		ldrb	r3, [r3]
  95 0032 5BB2     		sxtb	r3, r3
  96 0034 1343     		orrs	r3, r2
  97 0036 5AB2     		sxtb	r2, r3
  98 0038 3B18     		adds	r3, r7, r0
  99 003a 1A70     		strb	r2, [r3]
  61:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** *portOdrLow = c;
 100              		.loc 1 61 1
 101 003c 034A     		ldr	r2, .L3
 102              		.loc 1 61 13
 103 003e 3B18     		adds	r3, r7, r0
 104 0040 1B78     		ldrb	r3, [r3]
 105 0042 1370     		strb	r3, [r2]
  62:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** }
 106              		.loc 1 62 1
 107 0044 C046     		nop
 108 0046 BD46     		mov	sp, r7
 109 0048 04B0     		add	sp, sp, #16
 110              		@ sp needed
 111 004a 80BD     		pop	{r7, pc}
 112              	.L4:
 113              		.align	2
 114              	.L3:
 115 004c 14100240 		.word	1073877012
 116              		.cfi_endproc
 117              	.LFE1:
 119              		.align	1
 120              		.syntax unified
 121              		.code	16
 122              		.thumb_func
 123              		.fpu softvfp
 125              	graphic_ctrl_bit_clear:
 126              	.LFB2:
  63:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** static void graphic_ctrl_bit_clear(uint8_t x) {
 127              		.loc 1 63 47
 128              		.cfi_startproc
 129              		@ args = 0, pretend = 0, frame = 16
 130              		@ frame_needed = 1, uses_anonymous_args = 0
 131 0050 80B5     		push	{r7, lr}
 132              		.cfi_def_cfa_offset 8
 133              		.cfi_offset 7, -8
 134              		.cfi_offset 14, -4
 135 0052 84B0     		sub	sp, sp, #16
 136              		.cfi_def_cfa_offset 24
 137 0054 00AF     		add	r7, sp, #0
 138              		.cfi_def_cfa_register 7
 139 0056 0200     		movs	r2, r0
 140 0058 FB1D     		adds	r3, r7, #7
 141 005a 1A70     		strb	r2, [r3]
  64:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** uint8_t c;
  65:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** c = *portOdrLow;
 142              		.loc 1 65 5
 143 005c 0F4A     		ldr	r2, .L6
 144              		.loc 1 65 3
 145 005e 0F20     		movs	r0, #15
 146 0060 3B18     		adds	r3, r7, r0
 147 0062 1278     		ldrb	r2, [r2]
 148 0064 1A70     		strb	r2, [r3]
  66:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** c &= ~B_SELECT;
 149              		.loc 1 66 3
 150 0066 3B18     		adds	r3, r7, r0
 151 0068 3A18     		adds	r2, r7, r0
 152 006a 1278     		ldrb	r2, [r2]
 153 006c 0421     		movs	r1, #4
 154 006e 8A43     		bics	r2, r1
 155 0070 1A70     		strb	r2, [r3]
  67:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** c &= ~x;
 156              		.loc 1 67 3
 157 0072 FB1D     		adds	r3, r7, #7
 158 0074 1B78     		ldrb	r3, [r3]
 159 0076 5BB2     		sxtb	r3, r3
 160 0078 DB43     		mvns	r3, r3
 161 007a 5BB2     		sxtb	r3, r3
 162 007c 3A18     		adds	r2, r7, r0
 163 007e 1278     		ldrb	r2, [r2]
 164 0080 52B2     		sxtb	r2, r2
 165 0082 1340     		ands	r3, r2
 166 0084 5AB2     		sxtb	r2, r3
 167 0086 3B18     		adds	r3, r7, r0
 168 0088 1A70     		strb	r2, [r3]
  68:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** *portOdrLow = c;
 169              		.loc 1 68 1
 170 008a 044A     		ldr	r2, .L6
 171              		.loc 1 68 13
 172 008c 3B18     		adds	r3, r7, r0
 173 008e 1B78     		ldrb	r3, [r3]
 174 0090 1370     		strb	r3, [r2]
  69:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** }
 175              		.loc 1 69 1
 176 0092 C046     		nop
 177 0094 BD46     		mov	sp, r7
 178 0096 04B0     		add	sp, sp, #16
 179              		@ sp needed
 180 0098 80BD     		pop	{r7, pc}
 181              	.L7:
 182 009a C046     		.align	2
 183              	.L6:
 184 009c 14100240 		.word	1073877012
 185              		.cfi_endproc
 186              	.LFE2:
 188              		.align	1
 189              		.syntax unified
 190              		.code	16
 191              		.thumb_func
 192              		.fpu softvfp
 194              	select_controller:
 195              	.LFB3:
  70:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** static void select_controller(uint8_t controller){
 196              		.loc 1 70 50
 197              		.cfi_startproc
 198              		@ args = 0, pretend = 0, frame = 8
 199              		@ frame_needed = 1, uses_anonymous_args = 0
 200 00a0 80B5     		push	{r7, lr}
 201              		.cfi_def_cfa_offset 8
 202              		.cfi_offset 7, -8
 203              		.cfi_offset 14, -4
 204 00a2 82B0     		sub	sp, sp, #8
 205              		.cfi_def_cfa_offset 16
 206 00a4 00AF     		add	r7, sp, #0
 207              		.cfi_def_cfa_register 7
 208 00a6 0200     		movs	r2, r0
 209 00a8 FB1D     		adds	r3, r7, #7
 210 00aa 1A70     		strb	r2, [r3]
  71:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	switch(controller){
 211              		.loc 1 71 2
 212 00ac FB1D     		adds	r3, r7, #7
 213 00ae 1B78     		ldrb	r3, [r3]
 214 00b0 182B     		cmp	r3, #24
 215 00b2 1AD0     		beq	.L9
 216 00b4 1DDC     		bgt	.L14
 217 00b6 102B     		cmp	r3, #16
 218 00b8 10D0     		beq	.L11
 219 00ba 1ADC     		bgt	.L14
 220 00bc 002B     		cmp	r3, #0
 221 00be 02D0     		beq	.L12
 222 00c0 082B     		cmp	r3, #8
 223 00c2 04D0     		beq	.L13
  72:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		case 0:
  73:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 			graphic_ctrl_bit_clear(B_CS1|B_CS2);
  74:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 			break;
  75:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		case B_CS1 :
  76:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 			graphic_ctrl_bit_set(B_CS1);
  77:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 			graphic_ctrl_bit_clear(B_CS2);
  78:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 			break;
  79:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		case B_CS2 :
  80:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 			graphic_ctrl_bit_set(B_CS2);
  81:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 			graphic_ctrl_bit_clear(B_CS1);
  82:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 			break;
  83:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		case B_CS1|B_CS2 :
  84:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 			graphic_ctrl_bit_set(B_CS1|B_CS2);
  85:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 			break;
  86:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	}
  87:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** }
 224              		.loc 1 87 1
 225 00c4 15E0     		b	.L14
 226              	.L12:
  73:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 			break;
 227              		.loc 1 73 4
 228 00c6 1820     		movs	r0, #24
 229 00c8 FFF7C2FF 		bl	graphic_ctrl_bit_clear
  74:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		case B_CS1 :
 230              		.loc 1 74 4
 231 00cc 11E0     		b	.L10
 232              	.L13:
  76:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 			graphic_ctrl_bit_clear(B_CS2);
 233              		.loc 1 76 4
 234 00ce 0820     		movs	r0, #8
 235 00d0 FFF796FF 		bl	graphic_ctrl_bit_set
  77:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 			break;
 236              		.loc 1 77 4
 237 00d4 1020     		movs	r0, #16
 238 00d6 FFF7BBFF 		bl	graphic_ctrl_bit_clear
  78:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		case B_CS2 :
 239              		.loc 1 78 4
 240 00da 0AE0     		b	.L10
 241              	.L11:
  80:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 			graphic_ctrl_bit_clear(B_CS1);
 242              		.loc 1 80 4
 243 00dc 1020     		movs	r0, #16
 244 00de FFF78FFF 		bl	graphic_ctrl_bit_set
  81:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 			break;
 245              		.loc 1 81 4
 246 00e2 0820     		movs	r0, #8
 247 00e4 FFF7B4FF 		bl	graphic_ctrl_bit_clear
  82:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		case B_CS1|B_CS2 :
 248              		.loc 1 82 4
 249 00e8 03E0     		b	.L10
 250              	.L9:
  84:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 			break;
 251              		.loc 1 84 4
 252 00ea 1820     		movs	r0, #24
 253 00ec FFF788FF 		bl	graphic_ctrl_bit_set
  85:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	}
 254              		.loc 1 85 4
 255 00f0 C046     		nop
 256              	.L10:
 257              	.L14:
 258              		.loc 1 87 1
 259 00f2 C046     		nop
 260 00f4 BD46     		mov	sp, r7
 261 00f6 02B0     		add	sp, sp, #8
 262              		@ sp needed
 263 00f8 80BD     		pop	{r7, pc}
 264              		.cfi_endproc
 265              	.LFE3:
 267              		.align	1
 268              		.syntax unified
 269              		.code	16
 270              		.thumb_func
 271              		.fpu softvfp
 273              	graphic_wait_ready:
 274              	.LFB4:
  88:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** static void graphic_wait_ready(void) {
 275              		.loc 1 88 38
 276              		.cfi_startproc
 277              		@ args = 0, pretend = 0, frame = 8
 278              		@ frame_needed = 1, uses_anonymous_args = 0
 279 00fa 80B5     		push	{r7, lr}
 280              		.cfi_def_cfa_offset 8
 281              		.cfi_offset 7, -8
 282              		.cfi_offset 14, -4
 283 00fc 82B0     		sub	sp, sp, #8
 284              		.cfi_def_cfa_offset 16
 285 00fe 00AF     		add	r7, sp, #0
 286              		.cfi_def_cfa_register 7
  89:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	uint8_t c;
  90:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 287              		.loc 1 90 2
 288 0100 4020     		movs	r0, #64
 289 0102 FFF7A5FF 		bl	graphic_ctrl_bit_clear
  91:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	*portModer = 0x00005555; // 15-8 inputs, 7-0 outputs
 290              		.loc 1 91 2
 291 0106 144B     		ldr	r3, .L21
 292              		.loc 1 91 13
 293 0108 144A     		ldr	r2, .L21+4
 294 010a 1A60     		str	r2, [r3]
  92:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_RS);
 295              		.loc 1 92 2
 296 010c 0120     		movs	r0, #1
 297 010e FFF79FFF 		bl	graphic_ctrl_bit_clear
  93:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RW);
 298              		.loc 1 93 2
 299 0112 0220     		movs	r0, #2
 300 0114 FFF774FF 		bl	graphic_ctrl_bit_set
  94:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	delay_500ns();
 301              		.loc 1 94 2
 302 0118 FFF7FEFF 		bl	delay_500ns
 303              	.L18:
  95:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	while(1) {
  96:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		graphic_ctrl_bit_set(B_E);
 304              		.loc 1 96 3
 305 011c 4020     		movs	r0, #64
 306 011e FFF76FFF 		bl	graphic_ctrl_bit_set
  97:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		delay_500ns();
 307              		.loc 1 97 3
 308 0122 FFF7FEFF 		bl	delay_500ns
  98:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		c = *portIdrHigh & LCD_BUSY;
 309              		.loc 1 98 20
 310 0126 0E4B     		ldr	r3, .L21+8
 311 0128 1B78     		ldrb	r3, [r3]
 312 012a DAB2     		uxtb	r2, r3
 313              		.loc 1 98 5
 314 012c FB1D     		adds	r3, r7, #7
 315 012e 7F21     		movs	r1, #127
 316 0130 8A43     		bics	r2, r1
 317 0132 1A70     		strb	r2, [r3]
  99:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		graphic_ctrl_bit_clear(B_E);
 318              		.loc 1 99 3
 319 0134 4020     		movs	r0, #64
 320 0136 FFF78BFF 		bl	graphic_ctrl_bit_clear
 100:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		delay_500ns();
 321              		.loc 1 100 3
 322 013a FFF7FEFF 		bl	delay_500ns
 101:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		if( c == 0 ) break;
 323              		.loc 1 101 5
 324 013e FB1D     		adds	r3, r7, #7
 325 0140 1B78     		ldrb	r3, [r3]
 326 0142 002B     		cmp	r3, #0
 327 0144 00D0     		beq	.L20
  96:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		delay_500ns();
 328              		.loc 1 96 3
 329 0146 E9E7     		b	.L18
 330              	.L20:
 331              		.loc 1 101 3
 332 0148 C046     		nop
 102:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	}
 103:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	*portModer = 0x55555555; // 15-0 outputs
 333              		.loc 1 103 2
 334 014a 034B     		ldr	r3, .L21
 335              		.loc 1 103 13
 336 014c 054A     		ldr	r2, .L21+12
 337 014e 1A60     		str	r2, [r3]
 104:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** }
 338              		.loc 1 104 1
 339 0150 C046     		nop
 340 0152 BD46     		mov	sp, r7
 341 0154 02B0     		add	sp, sp, #8
 342              		@ sp needed
 343 0156 80BD     		pop	{r7, pc}
 344              	.L22:
 345              		.align	2
 346              	.L21:
 347 0158 00100240 		.word	1073876992
 348 015c 55550000 		.word	21845
 349 0160 11100240 		.word	1073877009
 350 0164 55555555 		.word	1431655765
 351              		.cfi_endproc
 352              	.LFE4:
 354              		.align	1
 355              		.syntax unified
 356              		.code	16
 357              		.thumb_func
 358              		.fpu softvfp
 360              	graphic_read:
 361              	.LFB5:
 105:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** static uint8_t graphic_read(uint8_t controller) {
 362              		.loc 1 105 49
 363              		.cfi_startproc
 364              		@ args = 0, pretend = 0, frame = 16
 365              		@ frame_needed = 1, uses_anonymous_args = 0
 366 0168 80B5     		push	{r7, lr}
 367              		.cfi_def_cfa_offset 8
 368              		.cfi_offset 7, -8
 369              		.cfi_offset 14, -4
 370 016a 84B0     		sub	sp, sp, #16
 371              		.cfi_def_cfa_offset 24
 372 016c 00AF     		add	r7, sp, #0
 373              		.cfi_def_cfa_register 7
 374 016e 0200     		movs	r2, r0
 375 0170 FB1D     		adds	r3, r7, #7
 376 0172 1A70     		strb	r2, [r3]
 106:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	uint8_t c;
 107:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 377              		.loc 1 107 2
 378 0174 4020     		movs	r0, #64
 379 0176 FFF76BFF 		bl	graphic_ctrl_bit_clear
 108:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	*portModer = 0x00005555; // 15-8 inputs, 7-0 outputs
 380              		.loc 1 108 2
 381 017a 1C4B     		ldr	r3, .L27
 382              		.loc 1 108 13
 383 017c 1C4A     		ldr	r2, .L27+4
 384 017e 1A60     		str	r2, [r3]
 109:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RS|B_RW);
 385              		.loc 1 109 2
 386 0180 0320     		movs	r0, #3
 387 0182 FFF73DFF 		bl	graphic_ctrl_bit_set
 110:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	select_controller(controller);
 388              		.loc 1 110 2
 389 0186 FB1D     		adds	r3, r7, #7
 390 0188 1B78     		ldrb	r3, [r3]
 391 018a 1800     		movs	r0, r3
 392 018c FFF788FF 		bl	select_controller
 111:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	delay_500ns();
 393              		.loc 1 111 2
 394 0190 FFF7FEFF 		bl	delay_500ns
 112:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 395              		.loc 1 112 2
 396 0194 4020     		movs	r0, #64
 397 0196 FFF733FF 		bl	graphic_ctrl_bit_set
 113:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	delay_500ns();
 398              		.loc 1 113 2
 399 019a FFF7FEFF 		bl	delay_500ns
 114:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	c = *portIdrHigh;
 400              		.loc 1 114 6
 401 019e 154A     		ldr	r2, .L27+8
 402              		.loc 1 114 4
 403 01a0 0F23     		movs	r3, #15
 404 01a2 FB18     		adds	r3, r7, r3
 405 01a4 1278     		ldrb	r2, [r2]
 406 01a6 1A70     		strb	r2, [r3]
 115:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 407              		.loc 1 115 2
 408 01a8 4020     		movs	r0, #64
 409 01aa FFF751FF 		bl	graphic_ctrl_bit_clear
 116:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	*portModer = 0x55555555; // 15-0 outputs
 410              		.loc 1 116 2
 411 01ae 0F4B     		ldr	r3, .L27
 412              		.loc 1 116 13
 413 01b0 114A     		ldr	r2, .L27+12
 414 01b2 1A60     		str	r2, [r3]
 117:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	if( controller & B_CS1 ) {
 415              		.loc 1 117 17
 416 01b4 FB1D     		adds	r3, r7, #7
 417 01b6 1B78     		ldrb	r3, [r3]
 418 01b8 0822     		movs	r2, #8
 419 01ba 1340     		ands	r3, r2
 420              		.loc 1 117 4
 421 01bc 04D0     		beq	.L24
 118:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		select_controller(B_CS1);
 422              		.loc 1 118 3
 423 01be 0820     		movs	r0, #8
 424 01c0 FFF76EFF 		bl	select_controller
 119:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		graphic_wait_ready();
 425              		.loc 1 119 3
 426 01c4 FFF799FF 		bl	graphic_wait_ready
 427              	.L24:
 120:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	}
 121:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	if( controller & B_CS2 ) {
 428              		.loc 1 121 17
 429 01c8 FB1D     		adds	r3, r7, #7
 430 01ca 1B78     		ldrb	r3, [r3]
 431 01cc 1022     		movs	r2, #16
 432 01ce 1340     		ands	r3, r2
 433              		.loc 1 121 4
 434 01d0 04D0     		beq	.L25
 122:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		select_controller(B_CS2);
 435              		.loc 1 122 3
 436 01d2 1020     		movs	r0, #16
 437 01d4 FFF764FF 		bl	select_controller
 123:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		graphic_wait_ready();
 438              		.loc 1 123 3
 439 01d8 FFF78FFF 		bl	graphic_wait_ready
 440              	.L25:
 124:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	}
 125:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** return c;
 441              		.loc 1 125 8
 442 01dc 0F23     		movs	r3, #15
 443 01de FB18     		adds	r3, r7, r3
 444 01e0 1B78     		ldrb	r3, [r3]
 126:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** }
 445              		.loc 1 126 1
 446 01e2 1800     		movs	r0, r3
 447 01e4 BD46     		mov	sp, r7
 448 01e6 04B0     		add	sp, sp, #16
 449              		@ sp needed
 450 01e8 80BD     		pop	{r7, pc}
 451              	.L28:
 452 01ea C046     		.align	2
 453              	.L27:
 454 01ec 00100240 		.word	1073876992
 455 01f0 55550000 		.word	21845
 456 01f4 11100240 		.word	1073877009
 457 01f8 55555555 		.word	1431655765
 458              		.cfi_endproc
 459              	.LFE5:
 461              		.align	1
 462              		.syntax unified
 463              		.code	16
 464              		.thumb_func
 465              		.fpu softvfp
 467              	graphic_read_data:
 468              	.LFB6:
 127:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** static uint8_t graphic_read_data(uint8_t controller) {
 469              		.loc 1 127 54
 470              		.cfi_startproc
 471              		@ args = 0, pretend = 0, frame = 8
 472              		@ frame_needed = 1, uses_anonymous_args = 0
 473 01fc 80B5     		push	{r7, lr}
 474              		.cfi_def_cfa_offset 8
 475              		.cfi_offset 7, -8
 476              		.cfi_offset 14, -4
 477 01fe 82B0     		sub	sp, sp, #8
 478              		.cfi_def_cfa_offset 16
 479 0200 00AF     		add	r7, sp, #0
 480              		.cfi_def_cfa_register 7
 481 0202 0200     		movs	r2, r0
 482 0204 FB1D     		adds	r3, r7, #7
 483 0206 1A70     		strb	r2, [r3]
 128:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** graphic_read(controller);
 484              		.loc 1 128 1
 485 0208 FB1D     		adds	r3, r7, #7
 486 020a 1B78     		ldrb	r3, [r3]
 487 020c 1800     		movs	r0, r3
 488 020e FFF7ABFF 		bl	graphic_read
 129:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** return graphic_read(controller);
 489              		.loc 1 129 8
 490 0212 FB1D     		adds	r3, r7, #7
 491 0214 1B78     		ldrb	r3, [r3]
 492 0216 1800     		movs	r0, r3
 493 0218 FFF7A6FF 		bl	graphic_read
 494 021c 0300     		movs	r3, r0
 130:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** }
 495              		.loc 1 130 1
 496 021e 1800     		movs	r0, r3
 497 0220 BD46     		mov	sp, r7
 498 0222 02B0     		add	sp, sp, #8
 499              		@ sp needed
 500 0224 80BD     		pop	{r7, pc}
 501              		.cfi_endproc
 502              	.LFE6:
 504              		.align	1
 505              		.syntax unified
 506              		.code	16
 507              		.thumb_func
 508              		.fpu softvfp
 510              	graphic_write:
 511              	.LFB7:
 131:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** static void graphic_write(uint8_t value, uint8_t controller) {
 512              		.loc 1 131 62
 513              		.cfi_startproc
 514              		@ args = 0, pretend = 0, frame = 8
 515              		@ frame_needed = 1, uses_anonymous_args = 0
 516 0226 80B5     		push	{r7, lr}
 517              		.cfi_def_cfa_offset 8
 518              		.cfi_offset 7, -8
 519              		.cfi_offset 14, -4
 520 0228 82B0     		sub	sp, sp, #8
 521              		.cfi_def_cfa_offset 16
 522 022a 00AF     		add	r7, sp, #0
 523              		.cfi_def_cfa_register 7
 524 022c 0200     		movs	r2, r0
 525 022e FB1D     		adds	r3, r7, #7
 526 0230 1A70     		strb	r2, [r3]
 527 0232 BB1D     		adds	r3, r7, #6
 528 0234 0A1C     		adds	r2, r1, #0
 529 0236 1A70     		strb	r2, [r3]
 132:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	*portOdrHigh = value;
 530              		.loc 1 132 2
 531 0238 154A     		ldr	r2, .L35
 532              		.loc 1 132 15
 533 023a FB1D     		adds	r3, r7, #7
 534 023c 1B78     		ldrb	r3, [r3]
 535 023e 1370     		strb	r3, [r2]
 133:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	select_controller(controller);
 536              		.loc 1 133 2
 537 0240 BB1D     		adds	r3, r7, #6
 538 0242 1B78     		ldrb	r3, [r3]
 539 0244 1800     		movs	r0, r3
 540 0246 FFF72BFF 		bl	select_controller
 134:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	delay_500ns();
 541              		.loc 1 134 2
 542 024a FFF7FEFF 		bl	delay_500ns
 135:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 543              		.loc 1 135 2
 544 024e 4020     		movs	r0, #64
 545 0250 FFF7D6FE 		bl	graphic_ctrl_bit_set
 136:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	delay_500ns();
 546              		.loc 1 136 2
 547 0254 FFF7FEFF 		bl	delay_500ns
 137:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear( B_E );
 548              		.loc 1 137 2
 549 0258 4020     		movs	r0, #64
 550 025a FFF7F9FE 		bl	graphic_ctrl_bit_clear
 138:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	if(controller & B_CS1) {
 551              		.loc 1 138 16
 552 025e BB1D     		adds	r3, r7, #6
 553 0260 1B78     		ldrb	r3, [r3]
 554 0262 0822     		movs	r2, #8
 555 0264 1340     		ands	r3, r2
 556              		.loc 1 138 4
 557 0266 04D0     		beq	.L32
 139:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		select_controller( B_CS1);
 558              		.loc 1 139 3
 559 0268 0820     		movs	r0, #8
 560 026a FFF719FF 		bl	select_controller
 140:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		graphic_wait_ready();
 561              		.loc 1 140 3
 562 026e FFF744FF 		bl	graphic_wait_ready
 563              	.L32:
 141:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	}
 142:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	if(controller & B_CS2) {
 564              		.loc 1 142 16
 565 0272 BB1D     		adds	r3, r7, #6
 566 0274 1B78     		ldrb	r3, [r3]
 567 0276 1022     		movs	r2, #16
 568 0278 1340     		ands	r3, r2
 569              		.loc 1 142 4
 570 027a 04D0     		beq	.L34
 143:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		select_controller( B_CS2);
 571              		.loc 1 143 3
 572 027c 1020     		movs	r0, #16
 573 027e FFF70FFF 		bl	select_controller
 144:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		graphic_wait_ready();
 574              		.loc 1 144 3
 575 0282 FFF73AFF 		bl	graphic_wait_ready
 576              	.L34:
 145:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	}
 146:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** }
 577              		.loc 1 146 1
 578 0286 C046     		nop
 579 0288 BD46     		mov	sp, r7
 580 028a 02B0     		add	sp, sp, #8
 581              		@ sp needed
 582 028c 80BD     		pop	{r7, pc}
 583              	.L36:
 584 028e C046     		.align	2
 585              	.L35:
 586 0290 15100240 		.word	1073877013
 587              		.cfi_endproc
 588              	.LFE7:
 590              		.align	1
 591              		.syntax unified
 592              		.code	16
 593              		.thumb_func
 594              		.fpu softvfp
 596              	graphic_write_command:
 597              	.LFB8:
 147:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** static void graphic_write_command(uint8_t command, uint8_t controller) {
 598              		.loc 1 147 72
 599              		.cfi_startproc
 600              		@ args = 0, pretend = 0, frame = 8
 601              		@ frame_needed = 1, uses_anonymous_args = 0
 602 0294 80B5     		push	{r7, lr}
 603              		.cfi_def_cfa_offset 8
 604              		.cfi_offset 7, -8
 605              		.cfi_offset 14, -4
 606 0296 82B0     		sub	sp, sp, #8
 607              		.cfi_def_cfa_offset 16
 608 0298 00AF     		add	r7, sp, #0
 609              		.cfi_def_cfa_register 7
 610 029a 0200     		movs	r2, r0
 611 029c FB1D     		adds	r3, r7, #7
 612 029e 1A70     		strb	r2, [r3]
 613 02a0 BB1D     		adds	r3, r7, #6
 614 02a2 0A1C     		adds	r2, r1, #0
 615 02a4 1A70     		strb	r2, [r3]
 148:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 616              		.loc 1 148 2
 617 02a6 4020     		movs	r0, #64
 618 02a8 FFF7D2FE 		bl	graphic_ctrl_bit_clear
 149:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	select_controller(controller);
 619              		.loc 1 149 2
 620 02ac BB1D     		adds	r3, r7, #6
 621 02ae 1B78     		ldrb	r3, [r3]
 622 02b0 1800     		movs	r0, r3
 623 02b2 FFF7F5FE 		bl	select_controller
 150:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_RS|B_RW);
 624              		.loc 1 150 2
 625 02b6 0320     		movs	r0, #3
 626 02b8 FFF7CAFE 		bl	graphic_ctrl_bit_clear
 151:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	graphic_write(command, controller);
 627              		.loc 1 151 2
 628 02bc BB1D     		adds	r3, r7, #6
 629 02be 1A78     		ldrb	r2, [r3]
 630 02c0 FB1D     		adds	r3, r7, #7
 631 02c2 1B78     		ldrb	r3, [r3]
 632 02c4 1100     		movs	r1, r2
 633 02c6 1800     		movs	r0, r3
 634 02c8 FFF7ADFF 		bl	graphic_write
 152:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** }
 635              		.loc 1 152 1
 636 02cc C046     		nop
 637 02ce BD46     		mov	sp, r7
 638 02d0 02B0     		add	sp, sp, #8
 639              		@ sp needed
 640 02d2 80BD     		pop	{r7, pc}
 641              		.cfi_endproc
 642              	.LFE8:
 644              		.align	1
 645              		.syntax unified
 646              		.code	16
 647              		.thumb_func
 648              		.fpu softvfp
 650              	graphic_write_data:
 651              	.LFB9:
 153:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** static void graphic_write_data(uint8_t data, uint8_t controller) {
 652              		.loc 1 153 66
 653              		.cfi_startproc
 654              		@ args = 0, pretend = 0, frame = 8
 655              		@ frame_needed = 1, uses_anonymous_args = 0
 656 02d4 80B5     		push	{r7, lr}
 657              		.cfi_def_cfa_offset 8
 658              		.cfi_offset 7, -8
 659              		.cfi_offset 14, -4
 660 02d6 82B0     		sub	sp, sp, #8
 661              		.cfi_def_cfa_offset 16
 662 02d8 00AF     		add	r7, sp, #0
 663              		.cfi_def_cfa_register 7
 664 02da 0200     		movs	r2, r0
 665 02dc FB1D     		adds	r3, r7, #7
 666 02de 1A70     		strb	r2, [r3]
 667 02e0 BB1D     		adds	r3, r7, #6
 668 02e2 0A1C     		adds	r2, r1, #0
 669 02e4 1A70     		strb	r2, [r3]
 154:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 670              		.loc 1 154 2
 671 02e6 4020     		movs	r0, #64
 672 02e8 FFF7B2FE 		bl	graphic_ctrl_bit_clear
 155:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	select_controller(controller);
 673              		.loc 1 155 2
 674 02ec BB1D     		adds	r3, r7, #6
 675 02ee 1B78     		ldrb	r3, [r3]
 676 02f0 1800     		movs	r0, r3
 677 02f2 FFF7D5FE 		bl	select_controller
 156:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RS);
 678              		.loc 1 156 2
 679 02f6 0120     		movs	r0, #1
 680 02f8 FFF782FE 		bl	graphic_ctrl_bit_set
 157:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_RW);
 681              		.loc 1 157 2
 682 02fc 0220     		movs	r0, #2
 683 02fe FFF7A7FE 		bl	graphic_ctrl_bit_clear
 158:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	graphic_write(data, controller);
 684              		.loc 1 158 2
 685 0302 BB1D     		adds	r3, r7, #6
 686 0304 1A78     		ldrb	r2, [r3]
 687 0306 FB1D     		adds	r3, r7, #7
 688 0308 1B78     		ldrb	r3, [r3]
 689 030a 1100     		movs	r1, r2
 690 030c 1800     		movs	r0, r3
 691 030e FFF78AFF 		bl	graphic_write
 159:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** }
 692              		.loc 1 159 1
 693 0312 C046     		nop
 694 0314 BD46     		mov	sp, r7
 695 0316 02B0     		add	sp, sp, #8
 696              		@ sp needed
 697 0318 80BD     		pop	{r7, pc}
 698              		.cfi_endproc
 699              	.LFE9:
 701              		.align	1
 702              		.global	graphic_clear_screen
 703              		.syntax unified
 704              		.code	16
 705              		.thumb_func
 706              		.fpu softvfp
 708              	graphic_clear_screen:
 709              	.LFB10:
 160:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** void graphic_clear_screen(void) {
 710              		.loc 1 160 33
 711              		.cfi_startproc
 712              		@ args = 0, pretend = 0, frame = 8
 713              		@ frame_needed = 1, uses_anonymous_args = 0
 714 031a 80B5     		push	{r7, lr}
 715              		.cfi_def_cfa_offset 8
 716              		.cfi_offset 7, -8
 717              		.cfi_offset 14, -4
 718 031c 82B0     		sub	sp, sp, #8
 719              		.cfi_def_cfa_offset 16
 720 031e 00AF     		add	r7, sp, #0
 721              		.cfi_def_cfa_register 7
 161:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	uint8_t i, j;
 162:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	for(j = 0; j < 8; j++) {
 722              		.loc 1 162 8
 723 0320 BB1D     		adds	r3, r7, #6
 724 0322 0022     		movs	r2, #0
 725 0324 1A70     		strb	r2, [r3]
 726              		.loc 1 162 2
 727 0326 23E0     		b	.L40
 728              	.L43:
 163:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
 729              		.loc 1 163 3
 730 0328 BB1D     		adds	r3, r7, #6
 731 032a 1B78     		ldrb	r3, [r3]
 732 032c 4822     		movs	r2, #72
 733 032e 5242     		rsbs	r2, r2, #0
 734 0330 1343     		orrs	r3, r2
 735 0332 DBB2     		uxtb	r3, r3
 736 0334 1821     		movs	r1, #24
 737 0336 1800     		movs	r0, r3
 738 0338 FFF7ACFF 		bl	graphic_write_command
 164:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		graphic_write_command(LCD_SET_ADD | 0, B_CS1|B_CS2);
 739              		.loc 1 164 3
 740 033c 1821     		movs	r1, #24
 741 033e 4020     		movs	r0, #64
 742 0340 FFF7A8FF 		bl	graphic_write_command
 165:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		for(i = 0; i <= 63; i++){
 743              		.loc 1 165 9
 744 0344 FB1D     		adds	r3, r7, #7
 745 0346 0022     		movs	r2, #0
 746 0348 1A70     		strb	r2, [r3]
 747              		.loc 1 165 3
 748 034a 08E0     		b	.L41
 749              	.L42:
 166:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 			graphic_write_data(0, B_CS1|B_CS2);
 750              		.loc 1 166 4 discriminator 3
 751 034c 1821     		movs	r1, #24
 752 034e 0020     		movs	r0, #0
 753 0350 FFF7C0FF 		bl	graphic_write_data
 165:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		for(i = 0; i <= 63; i++){
 754              		.loc 1 165 24 discriminator 3
 755 0354 FB1D     		adds	r3, r7, #7
 756 0356 1A78     		ldrb	r2, [r3]
 757 0358 FB1D     		adds	r3, r7, #7
 758 035a 0132     		adds	r2, r2, #1
 759 035c 1A70     		strb	r2, [r3]
 760              	.L41:
 165:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		for(i = 0; i <= 63; i++){
 761              		.loc 1 165 3 discriminator 1
 762 035e FB1D     		adds	r3, r7, #7
 763 0360 1B78     		ldrb	r3, [r3]
 764 0362 3F2B     		cmp	r3, #63
 765 0364 F2D9     		bls	.L42
 162:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
 766              		.loc 1 162 21 discriminator 2
 767 0366 BB1D     		adds	r3, r7, #6
 768 0368 1A78     		ldrb	r2, [r3]
 769 036a BB1D     		adds	r3, r7, #6
 770 036c 0132     		adds	r2, r2, #1
 771 036e 1A70     		strb	r2, [r3]
 772              	.L40:
 162:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
 773              		.loc 1 162 2 discriminator 1
 774 0370 BB1D     		adds	r3, r7, #6
 775 0372 1B78     		ldrb	r3, [r3]
 776 0374 072B     		cmp	r3, #7
 777 0376 D7D9     		bls	.L43
 167:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		}
 168:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	}
 169:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** }
 778              		.loc 1 169 1
 779 0378 C046     		nop
 780 037a C046     		nop
 781 037c BD46     		mov	sp, r7
 782 037e 02B0     		add	sp, sp, #8
 783              		@ sp needed
 784 0380 80BD     		pop	{r7, pc}
 785              		.cfi_endproc
 786              	.LFE10:
 788              		.align	1
 789              		.global	pixel
 790              		.syntax unified
 791              		.code	16
 792              		.thumb_func
 793              		.fpu softvfp
 795              	pixel:
 796              	.LFB11:
 170:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 
 171:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** void pixel(int x, int y, int set) {
 797              		.loc 1 171 35
 798              		.cfi_startproc
 799              		@ args = 0, pretend = 0, frame = 32
 800              		@ frame_needed = 1, uses_anonymous_args = 0
 801 0382 F0B5     		push	{r4, r5, r6, r7, lr}
 802              		.cfi_def_cfa_offset 20
 803              		.cfi_offset 4, -20
 804              		.cfi_offset 5, -16
 805              		.cfi_offset 6, -12
 806              		.cfi_offset 7, -8
 807              		.cfi_offset 14, -4
 808 0384 89B0     		sub	sp, sp, #36
 809              		.cfi_def_cfa_offset 56
 810 0386 00AF     		add	r7, sp, #0
 811              		.cfi_def_cfa_register 7
 812 0388 F860     		str	r0, [r7, #12]
 813 038a B960     		str	r1, [r7, #8]
 814 038c 7A60     		str	r2, [r7, #4]
 172:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	uint8_t mask, c, controller;
 173:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	int index;
 174:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	if((x < 1) || (y < 1) || (x > 128) || (y > 64)) return;
 815              		.loc 1 174 4
 816 038e FB68     		ldr	r3, [r7, #12]
 817 0390 002B     		cmp	r3, #0
 818 0392 00DC     		bgt	.LCB651
 819 0394 B5E0     		b	.L65	@long jump
 820              	.LCB651:
 821              		.loc 1 174 13 discriminator 2
 822 0396 BB68     		ldr	r3, [r7, #8]
 823 0398 002B     		cmp	r3, #0
 824 039a 00DC     		bgt	.LCB654
 825 039c B1E0     		b	.L65	@long jump
 826              	.LCB654:
 827              		.loc 1 174 24 discriminator 4
 828 039e FB68     		ldr	r3, [r7, #12]
 829 03a0 802B     		cmp	r3, #128
 830 03a2 00DD     		ble	.LCB657
 831 03a4 ADE0     		b	.L65	@long jump
 832              	.LCB657:
 833              		.loc 1 174 37 discriminator 6
 834 03a6 BB68     		ldr	r3, [r7, #8]
 835 03a8 402B     		cmp	r3, #64
 836 03aa 00DD     		ble	.LCB660
 837 03ac A9E0     		b	.L65	@long jump
 838              	.LCB660:
 175:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	index = (y-1)/8;
 839              		.loc 1 175 12
 840 03ae BB68     		ldr	r3, [r7, #8]
 841 03b0 013B     		subs	r3, r3, #1
 842              		.loc 1 175 8
 843 03b2 002B     		cmp	r3, #0
 844 03b4 00DA     		bge	.L48
 845 03b6 0733     		adds	r3, r3, #7
 846              	.L48:
 847 03b8 DB10     		asrs	r3, r3, #3
 848 03ba BB61     		str	r3, [r7, #24]
 176:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	switch( (y-1)%8 ) {
 849              		.loc 1 176 12
 850 03bc BB68     		ldr	r3, [r7, #8]
 851 03be 013B     		subs	r3, r3, #1
 852              		.loc 1 176 15
 853 03c0 524A     		ldr	r2, .L66
 854 03c2 1340     		ands	r3, r2
 855 03c4 04D5     		bpl	.L49
 856 03c6 013B     		subs	r3, r3, #1
 857 03c8 0822     		movs	r2, #8
 858 03ca 5242     		rsbs	r2, r2, #0
 859 03cc 1343     		orrs	r3, r2
 860 03ce 0133     		adds	r3, r3, #1
 861              	.L49:
 862 03d0 072B     		cmp	r3, #7
 863 03d2 2CD8     		bhi	.L50
 864 03d4 9A00     		lsls	r2, r3, #2
 865 03d6 4E4B     		ldr	r3, .L66+4
 866 03d8 D318     		adds	r3, r2, r3
 867 03da 1B68     		ldr	r3, [r3]
 868 03dc 9F46     		mov	pc, r3
 869              		.section	.rodata
 870              		.align	2
 871              	.L52:
 872 0000 DE030000 		.word	.L59
 873 0004 E8030000 		.word	.L58
 874 0008 F2030000 		.word	.L57
 875 000c FC030000 		.word	.L56
 876 0010 06040000 		.word	.L55
 877 0014 10040000 		.word	.L54
 878 0018 1A040000 		.word	.L53
 879 001c 24040000 		.word	.L51
 880              		.text
 881              	.L59:
 177:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		case 0: mask = 1; break;
 882              		.loc 1 177 16
 883 03de 1F23     		movs	r3, #31
 884 03e0 FB18     		adds	r3, r7, r3
 885 03e2 0122     		movs	r2, #1
 886 03e4 1A70     		strb	r2, [r3]
 887              		.loc 1 177 3
 888 03e6 22E0     		b	.L50
 889              	.L58:
 178:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		case 1: mask = 2; break;
 890              		.loc 1 178 16
 891 03e8 1F23     		movs	r3, #31
 892 03ea FB18     		adds	r3, r7, r3
 893 03ec 0222     		movs	r2, #2
 894 03ee 1A70     		strb	r2, [r3]
 895              		.loc 1 178 3
 896 03f0 1DE0     		b	.L50
 897              	.L57:
 179:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		case 2: mask = 4; break;
 898              		.loc 1 179 16
 899 03f2 1F23     		movs	r3, #31
 900 03f4 FB18     		adds	r3, r7, r3
 901 03f6 0422     		movs	r2, #4
 902 03f8 1A70     		strb	r2, [r3]
 903              		.loc 1 179 3
 904 03fa 18E0     		b	.L50
 905              	.L56:
 180:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		case 3: mask = 8; break;
 906              		.loc 1 180 16
 907 03fc 1F23     		movs	r3, #31
 908 03fe FB18     		adds	r3, r7, r3
 909 0400 0822     		movs	r2, #8
 910 0402 1A70     		strb	r2, [r3]
 911              		.loc 1 180 3
 912 0404 13E0     		b	.L50
 913              	.L55:
 181:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		case 4: mask = 0x10; break;
 914              		.loc 1 181 16
 915 0406 1F23     		movs	r3, #31
 916 0408 FB18     		adds	r3, r7, r3
 917 040a 1022     		movs	r2, #16
 918 040c 1A70     		strb	r2, [r3]
 919              		.loc 1 181 3
 920 040e 0EE0     		b	.L50
 921              	.L54:
 182:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		case 5: mask = 0x20; break;
 922              		.loc 1 182 16
 923 0410 1F23     		movs	r3, #31
 924 0412 FB18     		adds	r3, r7, r3
 925 0414 2022     		movs	r2, #32
 926 0416 1A70     		strb	r2, [r3]
 927              		.loc 1 182 3
 928 0418 09E0     		b	.L50
 929              	.L53:
 183:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		case 6: mask = 0x40; break;
 930              		.loc 1 183 16
 931 041a 1F23     		movs	r3, #31
 932 041c FB18     		adds	r3, r7, r3
 933 041e 4022     		movs	r2, #64
 934 0420 1A70     		strb	r2, [r3]
 935              		.loc 1 183 3
 936 0422 04E0     		b	.L50
 937              	.L51:
 184:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		case 7: mask = 0x80; break;
 938              		.loc 1 184 16
 939 0424 1F23     		movs	r3, #31
 940 0426 FB18     		adds	r3, r7, r3
 941 0428 8022     		movs	r2, #128
 942 042a 1A70     		strb	r2, [r3]
 943              		.loc 1 184 3
 944 042c C046     		nop
 945              	.L50:
 185:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	}
 186:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		if(set == 0)
 946              		.loc 1 186 5
 947 042e 7B68     		ldr	r3, [r7, #4]
 948 0430 002B     		cmp	r3, #0
 949 0432 05D1     		bne	.L60
 187:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 			mask = ~mask;
 950              		.loc 1 187 9
 951 0434 1F22     		movs	r2, #31
 952 0436 BB18     		adds	r3, r7, r2
 953 0438 BA18     		adds	r2, r7, r2
 954 043a 1278     		ldrb	r2, [r2]
 955 043c D243     		mvns	r2, r2
 956 043e 1A70     		strb	r2, [r3]
 957              	.L60:
 188:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		if(x > 64){
 958              		.loc 1 188 5
 959 0440 FB68     		ldr	r3, [r7, #12]
 960 0442 402B     		cmp	r3, #64
 961 0444 07DD     		ble	.L61
 189:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 			controller = B_CS2;
 962              		.loc 1 189 15
 963 0446 1E23     		movs	r3, #30
 964 0448 FB18     		adds	r3, r7, r3
 965 044a 1022     		movs	r2, #16
 966 044c 1A70     		strb	r2, [r3]
 190:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		x = x - 65;
 967              		.loc 1 190 5
 968 044e FB68     		ldr	r3, [r7, #12]
 969 0450 413B     		subs	r3, r3, #65
 970 0452 FB60     		str	r3, [r7, #12]
 971 0454 06E0     		b	.L62
 972              	.L61:
 191:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		} 
 192:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		else {
 193:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		controller = B_CS1;
 973              		.loc 1 193 14
 974 0456 1E23     		movs	r3, #30
 975 0458 FB18     		adds	r3, r7, r3
 976 045a 0822     		movs	r2, #8
 977 045c 1A70     		strb	r2, [r3]
 194:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		x = x-1;
 978              		.loc 1 194 5
 979 045e FB68     		ldr	r3, [r7, #12]
 980 0460 013B     		subs	r3, r3, #1
 981 0462 FB60     		str	r3, [r7, #12]
 982              	.L62:
 195:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		}
 196:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		graphic_write_command(LCD_SET_ADD | x, controller );
 983              		.loc 1 196 37
 984 0464 FB68     		ldr	r3, [r7, #12]
 985 0466 5BB2     		sxtb	r3, r3
 986 0468 4022     		movs	r2, #64
 987 046a 1343     		orrs	r3, r2
 988 046c 5BB2     		sxtb	r3, r3
 989              		.loc 1 196 3
 990 046e DAB2     		uxtb	r2, r3
 991 0470 1E25     		movs	r5, #30
 992 0472 7B19     		adds	r3, r7, r5
 993 0474 1B78     		ldrb	r3, [r3]
 994 0476 1900     		movs	r1, r3
 995 0478 1000     		movs	r0, r2
 996 047a FFF70BFF 		bl	graphic_write_command
 197:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		graphic_write_command(LCD_SET_PAGE | index, controller );
 997              		.loc 1 197 38
 998 047e BB69     		ldr	r3, [r7, #24]
 999 0480 5BB2     		sxtb	r3, r3
 1000 0482 4822     		movs	r2, #72
 1001 0484 5242     		rsbs	r2, r2, #0
 1002 0486 1343     		orrs	r3, r2
 1003 0488 5BB2     		sxtb	r3, r3
 1004              		.loc 1 197 3
 1005 048a DAB2     		uxtb	r2, r3
 1006 048c 7B19     		adds	r3, r7, r5
 1007 048e 1B78     		ldrb	r3, [r3]
 1008 0490 1900     		movs	r1, r3
 1009 0492 1000     		movs	r0, r2
 1010 0494 FFF7FEFE 		bl	graphic_write_command
 198:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		c = graphic_read_data(controller);
 1011              		.loc 1 198 7
 1012 0498 1726     		movs	r6, #23
 1013 049a BC19     		adds	r4, r7, r6
 1014 049c 7B19     		adds	r3, r7, r5
 1015 049e 1B78     		ldrb	r3, [r3]
 1016 04a0 1800     		movs	r0, r3
 1017 04a2 FFF7ABFE 		bl	graphic_read_data
 1018 04a6 0300     		movs	r3, r0
 1019 04a8 2370     		strb	r3, [r4]
 199:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		graphic_write_command(LCD_SET_ADD | x, controller);
 1020              		.loc 1 199 37
 1021 04aa FB68     		ldr	r3, [r7, #12]
 1022 04ac 5BB2     		sxtb	r3, r3
 1023 04ae 4022     		movs	r2, #64
 1024 04b0 1343     		orrs	r3, r2
 1025 04b2 5BB2     		sxtb	r3, r3
 1026              		.loc 1 199 3
 1027 04b4 DAB2     		uxtb	r2, r3
 1028 04b6 7B19     		adds	r3, r7, r5
 1029 04b8 1B78     		ldrb	r3, [r3]
 1030 04ba 1900     		movs	r1, r3
 1031 04bc 1000     		movs	r0, r2
 1032 04be FFF7E9FE 		bl	graphic_write_command
 200:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		if(set)
 1033              		.loc 1 200 5
 1034 04c2 7B68     		ldr	r3, [r7, #4]
 1035 04c4 002B     		cmp	r3, #0
 1036 04c6 08D0     		beq	.L63
 201:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 			mask = mask | c;
 1037              		.loc 1 201 9
 1038 04c8 1F22     		movs	r2, #31
 1039 04ca BB18     		adds	r3, r7, r2
 1040 04cc B918     		adds	r1, r7, r2
 1041 04ce BA19     		adds	r2, r7, r6
 1042 04d0 0978     		ldrb	r1, [r1]
 1043 04d2 1278     		ldrb	r2, [r2]
 1044 04d4 0A43     		orrs	r2, r1
 1045 04d6 1A70     		strb	r2, [r3]
 1046 04d8 08E0     		b	.L64
 1047              	.L63:
 202:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		else
 203:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 			mask = mask & c;
 1048              		.loc 1 203 9
 1049 04da 1F22     		movs	r2, #31
 1050 04dc BB18     		adds	r3, r7, r2
 1051 04de BA18     		adds	r2, r7, r2
 1052 04e0 1721     		movs	r1, #23
 1053 04e2 7918     		adds	r1, r7, r1
 1054 04e4 1278     		ldrb	r2, [r2]
 1055 04e6 0978     		ldrb	r1, [r1]
 1056 04e8 0A40     		ands	r2, r1
 1057 04ea 1A70     		strb	r2, [r3]
 1058              	.L64:
 204:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		graphic_write_data(mask, controller);
 1059              		.loc 1 204 3
 1060 04ec 1E23     		movs	r3, #30
 1061 04ee FB18     		adds	r3, r7, r3
 1062 04f0 1A78     		ldrb	r2, [r3]
 1063 04f2 1F23     		movs	r3, #31
 1064 04f4 FB18     		adds	r3, r7, r3
 1065 04f6 1B78     		ldrb	r3, [r3]
 1066 04f8 1100     		movs	r1, r2
 1067 04fa 1800     		movs	r0, r3
 1068 04fc FFF7EAFE 		bl	graphic_write_data
 1069 0500 00E0     		b	.L44
 1070              	.L65:
 174:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	index = (y-1)/8;
 1071              		.loc 1 174 50
 1072 0502 C046     		nop
 1073              	.L44:
 205:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** }
 1074              		.loc 1 205 1
 1075 0504 BD46     		mov	sp, r7
 1076 0506 09B0     		add	sp, sp, #36
 1077              		@ sp needed
 1078 0508 F0BD     		pop	{r4, r5, r6, r7, pc}
 1079              	.L67:
 1080 050a C046     		.align	2
 1081              	.L66:
 1082 050c 07000080 		.word	-2147483641
 1083 0510 00000000 		.word	.L52
 1084              		.cfi_endproc
 1085              	.LFE11:
 1087              		.align	1
 1088              		.global	delay_250ns
 1089              		.syntax unified
 1090              		.code	16
 1091              		.thumb_func
 1092              		.fpu softvfp
 1094              	delay_250ns:
 1095              	.LFB12:
 206:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 
 207:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** //Delay funktioner
 208:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** void delay_250ns ( void ) {
 1096              		.loc 1 208 27
 1097              		.cfi_startproc
 1098              		@ args = 0, pretend = 0, frame = 0
 1099              		@ frame_needed = 1, uses_anonymous_args = 0
 1100 0514 80B5     		push	{r7, lr}
 1101              		.cfi_def_cfa_offset 8
 1102              		.cfi_offset 7, -8
 1103              		.cfi_offset 14, -4
 1104 0516 00AF     		add	r7, sp, #0
 1105              		.cfi_def_cfa_register 7
 209:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		*STK_CTRL = 0x00;
 1106              		.loc 1 209 3
 1107 0518 0C4B     		ldr	r3, .L70
 1108              		.loc 1 209 13
 1109 051a 0022     		movs	r2, #0
 1110 051c 1A60     		str	r2, [r3]
 210:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		*STK_LOAD = ((168/4) - 1);
 1111              		.loc 1 210 3
 1112 051e 0C4B     		ldr	r3, .L70+4
 1113              		.loc 1 210 13
 1114 0520 2922     		movs	r2, #41
 1115 0522 1A60     		str	r2, [r3]
 211:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		*STK_VAL = 0;
 1116              		.loc 1 211 3
 1117 0524 0B4B     		ldr	r3, .L70+8
 1118              		.loc 1 211 12
 1119 0526 0022     		movs	r2, #0
 1120 0528 1A60     		str	r2, [r3]
 212:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		*STK_CTRL = 5;
 1121              		.loc 1 212 3
 1122 052a 084B     		ldr	r3, .L70
 1123              		.loc 1 212 13
 1124 052c 0522     		movs	r2, #5
 1125 052e 1A60     		str	r2, [r3]
 213:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		while ((*STK_CTRL & 0x10000) == 0){}
 1126              		.loc 1 213 9
 1127 0530 C046     		nop
 1128              	.L69:
 1129              		.loc 1 213 11 discriminator 1
 1130 0532 064B     		ldr	r3, .L70
 1131 0534 1A68     		ldr	r2, [r3]
 1132              		.loc 1 213 21 discriminator 1
 1133 0536 8023     		movs	r3, #128
 1134 0538 5B02     		lsls	r3, r3, #9
 1135 053a 1340     		ands	r3, r2
 1136              		.loc 1 213 9 discriminator 1
 1137 053c F9D0     		beq	.L69
 214:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		*STK_CTRL = 0;
 1138              		.loc 1 214 3
 1139 053e 034B     		ldr	r3, .L70
 1140              		.loc 1 214 13
 1141 0540 0022     		movs	r2, #0
 1142 0542 1A60     		str	r2, [r3]
 215:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** }
 1143              		.loc 1 215 1
 1144 0544 C046     		nop
 1145 0546 BD46     		mov	sp, r7
 1146              		@ sp needed
 1147 0548 80BD     		pop	{r7, pc}
 1148              	.L71:
 1149 054a C046     		.align	2
 1150              	.L70:
 1151 054c 10E000E0 		.word	-536813552
 1152 0550 14E000E0 		.word	-536813548
 1153 0554 18E000E0 		.word	-536813544
 1154              		.cfi_endproc
 1155              	.LFE12:
 1157              		.align	1
 1158              		.global	delay_500ns
 1159              		.syntax unified
 1160              		.code	16
 1161              		.thumb_func
 1162              		.fpu softvfp
 1164              	delay_500ns:
 1165              	.LFB13:
 216:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** void delay_500ns(void){
 1166              		.loc 1 216 23
 1167              		.cfi_startproc
 1168              		@ args = 0, pretend = 0, frame = 0
 1169              		@ frame_needed = 1, uses_anonymous_args = 0
 1170 0558 80B5     		push	{r7, lr}
 1171              		.cfi_def_cfa_offset 8
 1172              		.cfi_offset 7, -8
 1173              		.cfi_offset 14, -4
 1174 055a 00AF     		add	r7, sp, #0
 1175              		.cfi_def_cfa_register 7
 217:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	delay_250ns();
 1176              		.loc 1 217 2
 1177 055c FFF7FEFF 		bl	delay_250ns
 218:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	delay_250ns();
 1178              		.loc 1 218 2
 1179 0560 FFF7FEFF 		bl	delay_250ns
 219:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** }
 1180              		.loc 1 219 1
 1181 0564 C046     		nop
 1182 0566 BD46     		mov	sp, r7
 1183              		@ sp needed
 1184 0568 80BD     		pop	{r7, pc}
 1185              		.cfi_endproc
 1186              	.LFE13:
 1188              		.align	1
 1189              		.global	delay_mikro
 1190              		.syntax unified
 1191              		.code	16
 1192              		.thumb_func
 1193              		.fpu softvfp
 1195              	delay_mikro:
 1196              	.LFB14:
 220:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** void delay_mikro (unsigned int us){
 1197              		.loc 1 220 35
 1198              		.cfi_startproc
 1199              		@ args = 0, pretend = 0, frame = 16
 1200              		@ frame_needed = 1, uses_anonymous_args = 0
 1201 056a 80B5     		push	{r7, lr}
 1202              		.cfi_def_cfa_offset 8
 1203              		.cfi_offset 7, -8
 1204              		.cfi_offset 14, -4
 1205 056c 84B0     		sub	sp, sp, #16
 1206              		.cfi_def_cfa_offset 24
 1207 056e 00AF     		add	r7, sp, #0
 1208              		.cfi_def_cfa_register 7
 1209 0570 7860     		str	r0, [r7, #4]
 1210              	.LBB2:
 221:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	for (int i = 0; i < us; i++) {
 1211              		.loc 1 221 11
 1212 0572 0023     		movs	r3, #0
 1213 0574 FB60     		str	r3, [r7, #12]
 1214              		.loc 1 221 2
 1215 0576 0AE0     		b	.L74
 1216              	.L75:
 222:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		delay_250ns();
 1217              		.loc 1 222 3 discriminator 3
 1218 0578 FFF7FEFF 		bl	delay_250ns
 223:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		delay_250ns();
 1219              		.loc 1 223 3 discriminator 3
 1220 057c FFF7FEFF 		bl	delay_250ns
 224:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		delay_250ns();
 1221              		.loc 1 224 3 discriminator 3
 1222 0580 FFF7FEFF 		bl	delay_250ns
 225:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		delay_250ns();
 1223              		.loc 1 225 3 discriminator 3
 1224 0584 FFF7FEFF 		bl	delay_250ns
 221:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		delay_250ns();
 1225              		.loc 1 221 27 discriminator 3
 1226 0588 FB68     		ldr	r3, [r7, #12]
 1227 058a 0133     		adds	r3, r3, #1
 1228 058c FB60     		str	r3, [r7, #12]
 1229              	.L74:
 221:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		delay_250ns();
 1230              		.loc 1 221 20 discriminator 1
 1231 058e FB68     		ldr	r3, [r7, #12]
 221:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		delay_250ns();
 1232              		.loc 1 221 2 discriminator 1
 1233 0590 7A68     		ldr	r2, [r7, #4]
 1234 0592 9A42     		cmp	r2, r3
 1235 0594 F0D8     		bhi	.L75
 1236              	.LBE2:
 226:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		}
 227:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** }	
 1237              		.loc 1 227 1
 1238 0596 C046     		nop
 1239 0598 C046     		nop
 1240 059a BD46     		mov	sp, r7
 1241 059c 04B0     		add	sp, sp, #16
 1242              		@ sp needed
 1243 059e 80BD     		pop	{r7, pc}
 1244              		.cfi_endproc
 1245              	.LFE14:
 1247              		.align	1
 1248              		.global	delay_milli
 1249              		.syntax unified
 1250              		.code	16
 1251              		.thumb_func
 1252              		.fpu softvfp
 1254              	delay_milli:
 1255              	.LFB15:
 228:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** void delay_milli (unsigned int ms){
 1256              		.loc 1 228 35
 1257              		.cfi_startproc
 1258              		@ args = 0, pretend = 0, frame = 8
 1259              		@ frame_needed = 1, uses_anonymous_args = 0
 1260 05a0 80B5     		push	{r7, lr}
 1261              		.cfi_def_cfa_offset 8
 1262              		.cfi_offset 7, -8
 1263              		.cfi_offset 14, -4
 1264 05a2 82B0     		sub	sp, sp, #8
 1265              		.cfi_def_cfa_offset 16
 1266 05a4 00AF     		add	r7, sp, #0
 1267              		.cfi_def_cfa_register 7
 1268 05a6 7860     		str	r0, [r7, #4]
 229:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	#ifdef SIMULATOR
 230:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		ms = (ms/1000);
 231:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		ms++;
 232:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		delay_mikro(ms);
 233:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	#else
 234:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		delay_mikro(ms);
 1269              		.loc 1 234 3
 1270 05a8 7B68     		ldr	r3, [r7, #4]
 1271 05aa 1800     		movs	r0, r3
 1272 05ac FFF7FEFF 		bl	delay_mikro
 235:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	#endif
 236:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** }
 1273              		.loc 1 236 1
 1274 05b0 C046     		nop
 1275 05b2 BD46     		mov	sp, r7
 1276 05b4 02B0     		add	sp, sp, #8
 1277              		@ sp needed
 1278 05b6 80BD     		pop	{r7, pc}
 1279              		.cfi_endproc
 1280              	.LFE15:
 1282              		.align	1
 1283              		.global	graphic_initialize
 1284              		.syntax unified
 1285              		.code	16
 1286              		.thumb_func
 1287              		.fpu softvfp
 1289              	graphic_initialize:
 1290              	.LFB16:
 237:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 
 238:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** void graphic_initialize(void) {
 1291              		.loc 1 238 31
 1292              		.cfi_startproc
 1293              		@ args = 0, pretend = 0, frame = 0
 1294              		@ frame_needed = 1, uses_anonymous_args = 0
 1295 05b8 80B5     		push	{r7, lr}
 1296              		.cfi_def_cfa_offset 8
 1297              		.cfi_offset 7, -8
 1298              		.cfi_offset 14, -4
 1299 05ba 00AF     		add	r7, sp, #0
 1300              		.cfi_def_cfa_register 7
 239:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 1301              		.loc 1 239 2
 1302 05bc 4020     		movs	r0, #64
 1303 05be FFF71FFD 		bl	graphic_ctrl_bit_set
 240:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	delay_mikro(10);
 1304              		.loc 1 240 2
 1305 05c2 0A20     		movs	r0, #10
 1306 05c4 FFF7FEFF 		bl	delay_mikro
 241:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_CS1|B_CS2|B_RST|B_E);
 1307              		.loc 1 241 2
 1308 05c8 7820     		movs	r0, #120
 1309 05ca FFF741FD 		bl	graphic_ctrl_bit_clear
 242:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	delay_milli(30);
 1310              		.loc 1 242 2
 1311 05ce 1E20     		movs	r0, #30
 1312 05d0 FFF7FEFF 		bl	delay_milli
 243:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RST);
 1313              		.loc 1 243 2
 1314 05d4 2020     		movs	r0, #32
 1315 05d6 FFF713FD 		bl	graphic_ctrl_bit_set
 244:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	delay_milli(100);
 1316              		.loc 1 244 2
 1317 05da 6420     		movs	r0, #100
 1318 05dc FFF7FEFF 		bl	delay_milli
 245:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	graphic_write_command(LCD_OFF, B_CS1|B_CS2);
 1319              		.loc 1 245 2
 1320 05e0 1821     		movs	r1, #24
 1321 05e2 3E20     		movs	r0, #62
 1322 05e4 FFF756FE 		bl	graphic_write_command
 246:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	graphic_write_command(LCD_ON, B_CS1|B_CS2);
 1323              		.loc 1 246 2
 1324 05e8 1821     		movs	r1, #24
 1325 05ea 3F20     		movs	r0, #63
 1326 05ec FFF752FE 		bl	graphic_write_command
 247:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	graphic_write_command(LCD_DISP_START, B_CS1|B_CS2);
 1327              		.loc 1 247 2
 1328 05f0 1821     		movs	r1, #24
 1329 05f2 C020     		movs	r0, #192
 1330 05f4 FFF74EFE 		bl	graphic_write_command
 248:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	graphic_write_command(LCD_SET_ADD, B_CS1|B_CS2);
 1331              		.loc 1 248 2
 1332 05f8 1821     		movs	r1, #24
 1333 05fa 4020     		movs	r0, #64
 1334 05fc FFF74AFE 		bl	graphic_write_command
 249:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	graphic_write_command(LCD_SET_PAGE, B_CS1|B_CS2);
 1335              		.loc 1 249 2
 1336 0600 1821     		movs	r1, #24
 1337 0602 B820     		movs	r0, #184
 1338 0604 FFF746FE 		bl	graphic_write_command
 250:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	select_controller(0);
 1339              		.loc 1 250 2
 1340 0608 0020     		movs	r0, #0
 1341 060a FFF749FD 		bl	select_controller
 251:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** }
 1342              		.loc 1 251 1
 1343 060e C046     		nop
 1344 0610 BD46     		mov	sp, r7
 1345              		@ sp needed
 1346 0612 80BD     		pop	{r7, pc}
 1347              		.cfi_endproc
 1348              	.LFE16:
 1350              		.align	1
 1351              		.global	init_app
 1352              		.syntax unified
 1353              		.code	16
 1354              		.thumb_func
 1355              		.fpu softvfp
 1357              	init_app:
 1358              	.LFB17:
 252:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 
 253:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** void init_app(void){ 
 1359              		.loc 1 253 20
 1360              		.cfi_startproc
 1361              		@ args = 0, pretend = 0, frame = 0
 1362              		@ frame_needed = 1, uses_anonymous_args = 0
 1363 0614 80B5     		push	{r7, lr}
 1364              		.cfi_def_cfa_offset 8
 1365              		.cfi_offset 7, -8
 1366              		.cfi_offset 14, -4
 1367 0616 00AF     		add	r7, sp, #0
 1368              		.cfi_def_cfa_register 7
 254:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	*portModer = 0x55555555;
 1369              		.loc 1 254 2
 1370 0618 024B     		ldr	r3, .L79
 1371              		.loc 1 254 13
 1372 061a 034A     		ldr	r2, .L79+4
 1373 061c 1A60     		str	r2, [r3]
 255:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** }	
 1374              		.loc 1 255 1
 1375 061e C046     		nop
 1376 0620 BD46     		mov	sp, r7
 1377              		@ sp needed
 1378 0622 80BD     		pop	{r7, pc}
 1379              	.L80:
 1380              		.align	2
 1381              	.L79:
 1382 0624 00100240 		.word	1073876992
 1383 0628 55555555 		.word	1431655765
 1384              		.cfi_endproc
 1385              	.LFE17:
 1387              		.align	1
 1388              		.global	main
 1389              		.syntax unified
 1390              		.code	16
 1391              		.thumb_func
 1392              		.fpu softvfp
 1394              	main:
 1395              	.LFB18:
 256:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 
 257:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** void main(void){
 1396              		.loc 1 257 16
 1397              		.cfi_startproc
 1398              		@ args = 0, pretend = 0, frame = 8
 1399              		@ frame_needed = 1, uses_anonymous_args = 0
 1400 062c 80B5     		push	{r7, lr}
 1401              		.cfi_def_cfa_offset 8
 1402              		.cfi_offset 7, -8
 1403              		.cfi_offset 14, -4
 1404 062e 82B0     		sub	sp, sp, #8
 1405              		.cfi_def_cfa_offset 16
 1406 0630 00AF     		add	r7, sp, #0
 1407              		.cfi_def_cfa_register 7
 258:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	unsigned i;
 259:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	init_app();
 1408              		.loc 1 259 2
 1409 0632 FFF7FEFF 		bl	init_app
 260:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	graphic_initialize();
 1410              		.loc 1 260 2
 1411 0636 FFF7FEFF 		bl	graphic_initialize
 261:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	#ifdef SIMULATOR
 262:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		graphic_clear_screen();
 263:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	#endif
 264:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	for(i = 0; i < 128; i++ ){
 1412              		.loc 1 264 8
 1413 063a 0023     		movs	r3, #0
 1414 063c 7B60     		str	r3, [r7, #4]
 1415              		.loc 1 264 2
 1416 063e 08E0     		b	.L82
 1417              	.L83:
 265:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		pixel(i, 10, 1);
 1418              		.loc 1 265 3 discriminator 3
 1419 0640 7B68     		ldr	r3, [r7, #4]
 1420 0642 0122     		movs	r2, #1
 1421 0644 0A21     		movs	r1, #10
 1422 0646 1800     		movs	r0, r3
 1423 0648 FFF7FEFF 		bl	pixel
 264:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		pixel(i, 10, 1);
 1424              		.loc 1 264 23 discriminator 3
 1425 064c 7B68     		ldr	r3, [r7, #4]
 1426 064e 0133     		adds	r3, r3, #1
 1427 0650 7B60     		str	r3, [r7, #4]
 1428              	.L82:
 264:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		pixel(i, 10, 1);
 1429              		.loc 1 264 2 discriminator 1
 1430 0652 7B68     		ldr	r3, [r7, #4]
 1431 0654 7F2B     		cmp	r3, #127
 1432 0656 F3D9     		bls	.L83
 266:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	}
 267:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	for(i = 0; i < 64; i++){
 1433              		.loc 1 267 8
 1434 0658 0023     		movs	r3, #0
 1435 065a 7B60     		str	r3, [r7, #4]
 1436              		.loc 1 267 2
 1437 065c 08E0     		b	.L84
 1438              	.L85:
 268:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		pixel(10, i, 1);
 1439              		.loc 1 268 3 discriminator 3
 1440 065e 7B68     		ldr	r3, [r7, #4]
 1441 0660 0122     		movs	r2, #1
 1442 0662 1900     		movs	r1, r3
 1443 0664 0A20     		movs	r0, #10
 1444 0666 FFF7FEFF 		bl	pixel
 267:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		pixel(10, i, 1);
 1445              		.loc 1 267 22 discriminator 3
 1446 066a 7B68     		ldr	r3, [r7, #4]
 1447 066c 0133     		adds	r3, r3, #1
 1448 066e 7B60     		str	r3, [r7, #4]
 1449              	.L84:
 267:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		pixel(10, i, 1);
 1450              		.loc 1 267 2 discriminator 1
 1451 0670 7B68     		ldr	r3, [r7, #4]
 1452 0672 3F2B     		cmp	r3, #63
 1453 0674 F3D9     		bls	.L85
 269:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	}
 270:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	delay_milli(500);
 1454              		.loc 1 270 2
 1455 0676 FA23     		movs	r3, #250
 1456 0678 5B00     		lsls	r3, r3, #1
 1457 067a 1800     		movs	r0, r3
 1458 067c FFF7FEFF 		bl	delay_milli
 271:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	for(i = 0; i < 128; i++){
 1459              		.loc 1 271 8
 1460 0680 0023     		movs	r3, #0
 1461 0682 7B60     		str	r3, [r7, #4]
 1462              		.loc 1 271 2
 1463 0684 08E0     		b	.L86
 1464              	.L87:
 272:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		pixel(i, 10, 0);
 1465              		.loc 1 272 3 discriminator 3
 1466 0686 7B68     		ldr	r3, [r7, #4]
 1467 0688 0022     		movs	r2, #0
 1468 068a 0A21     		movs	r1, #10
 1469 068c 1800     		movs	r0, r3
 1470 068e FFF7FEFF 		bl	pixel
 271:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	for(i = 0; i < 128; i++){
 1471              		.loc 1 271 23 discriminator 3
 1472 0692 7B68     		ldr	r3, [r7, #4]
 1473 0694 0133     		adds	r3, r3, #1
 1474 0696 7B60     		str	r3, [r7, #4]
 1475              	.L86:
 271:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	for(i = 0; i < 128; i++){
 1476              		.loc 1 271 2 discriminator 1
 1477 0698 7B68     		ldr	r3, [r7, #4]
 1478 069a 7F2B     		cmp	r3, #127
 1479 069c F3D9     		bls	.L87
 273:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	}
 274:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	for(i = 0; i < 64; i++){
 1480              		.loc 1 274 8
 1481 069e 0023     		movs	r3, #0
 1482 06a0 7B60     		str	r3, [r7, #4]
 1483              		.loc 1 274 2
 1484 06a2 08E0     		b	.L88
 1485              	.L89:
 275:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		pixel(10, i, 0);
 1486              		.loc 1 275 3 discriminator 3
 1487 06a4 7B68     		ldr	r3, [r7, #4]
 1488 06a6 0022     		movs	r2, #0
 1489 06a8 1900     		movs	r1, r3
 1490 06aa 0A20     		movs	r0, #10
 1491 06ac FFF7FEFF 		bl	pixel
 274:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		pixel(10, i, 0);
 1492              		.loc 1 274 22 discriminator 3
 1493 06b0 7B68     		ldr	r3, [r7, #4]
 1494 06b2 0133     		adds	r3, r3, #1
 1495 06b4 7B60     		str	r3, [r7, #4]
 1496              	.L88:
 274:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 		pixel(10, i, 0);
 1497              		.loc 1 274 2 discriminator 1
 1498 06b6 7B68     		ldr	r3, [r7, #4]
 1499 06b8 3F2B     		cmp	r3, #63
 1500 06ba F3D9     		bls	.L89
 276:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** 	}
 277:C:/Users/David/Documents/Chalmers/MOP/moplabb/graphicdisplay\graphicdisplay.c **** }
 1501              		.loc 1 277 1
 1502 06bc C046     		nop
 1503 06be C046     		nop
 1504 06c0 BD46     		mov	sp, r7
 1505 06c2 02B0     		add	sp, sp, #8
 1506              		@ sp needed
 1507 06c4 80BD     		pop	{r7, pc}
 1508              		.cfi_endproc
 1509              	.LFE18:
 1511              	.Letext0:
