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
  11              		.file	"systick_irq.c"
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
  25              		.file 1 "C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq/sys
   1:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** /*
   2:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c ****  * 	startup.c
   3:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c ****  *
   4:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c ****  */
   5:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   6:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 
   7:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** void startup ( void )
   8:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** {
  26              		.loc 1 8 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
   9:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** __asm volatile(
  31              		.loc 1 9 0
  32              		.syntax divided
  33              	@ 9 "C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq/systick_
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  10:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  11:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	" MOV SP,R0\n"
  12:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	" BL main\n"				/* call main */
  13:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	"_exit: B .\n"				/* never return */
  14:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	) ;
  15:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** }
  40              		.loc 1 15 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.bss
  48              		.align	2
  49              	systick_flag:
  50 0000 00000000 		.space	4
  52              		.align	2
  53              	delay_count:
  54 0004 00000000 		.space	4
  56              		.align	2
  57              	fisk:
  58 0008 00000000 		.space	4
  60              		.text
  61              		.align	1
  62              		.global	init_app
  63              		.syntax unified
  64              		.code	16
  65              		.thumb_func
  66              		.fpu softvfp
  68              	init_app:
  69              	.LFB1:
  16:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** #define PORT_D 0x40020C00
  17:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** #define PORT_D_Moder ((volatile unsigned int*) (PORT_D))
  18:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** #define PORT_D_Otyper ((volatile unsigned short *) (PORT_D+0x4))
  19:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** #define PORT_D_Ospeedr ((volatile unsigned int *) (PORT_D+0x8))
  20:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** #define PORT_D_Pupdr ((volatile unsigned int *) (PORT_D+0xC))
  21:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** #define PORT_D_IdrLow ((volatile unsigned short *) (PORT_D+0x10))
  22:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** #define PORT_D_IdrHigh ((volatile unsigned char *) (PORT_D+0x11))
  23:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** #define PORT_D_OdrLow ((volatile unsigned char *) (PORT_D+0x14))
  24:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** #define PORT_D_OdrHigh ((volatile unsigned char *) (PORT_D+0x14+1))
  25:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 
  26:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** #define STK 0xE000E010
  27:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** #define STK_CTRL ((volatile unsigned int*)(STK))
  28:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** #define STK_LOAD ((volatile unsigned int*)(STK + 0x4))
  29:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** #define STK_VAL ((volatile unsigned int*)(STK + 0x8))
  30:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** #define SIMULATOR
  31:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 
  32:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** #ifdef	SIMULATOR
  33:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** #define DELAY_COUNT 1000
  34:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** #else
  35:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** #define DELAY_COUNT 1000000
  36:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** #endif
  37:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 
  38:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** static volatile int systick_flag;
  39:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** static volatile int delay_count;
  40:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** static volatile int fisk;
  41:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** void systick_irq_handler(void);
  42:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 
  43:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** void init_app(void){
  70              		.loc 1 43 0
  71              		.cfi_startproc
  72              		@ args = 0, pretend = 0, frame = 0
  73              		@ frame_needed = 1, uses_anonymous_args = 0
  74 0000 80B5     		push	{r7, lr}
  75              		.cfi_def_cfa_offset 8
  76              		.cfi_offset 7, -8
  77              		.cfi_offset 14, -4
  78 0002 00AF     		add	r7, sp, #0
  79              		.cfi_def_cfa_register 7
  44:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	*PORT_D_Moder = 0x55555555;
  80              		.loc 1 44 0
  81 0004 044B     		ldr	r3, .L3
  82 0006 054A     		ldr	r2, .L3+4
  83 0008 1A60     		str	r2, [r3]
  45:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	*((void(**)(void))0x2001C03C) = systick_irq_handler;
  84              		.loc 1 45 0
  85 000a 054B     		ldr	r3, .L3+8
  86 000c 054A     		ldr	r2, .L3+12
  87 000e 1A60     		str	r2, [r3]
  46:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** }
  88              		.loc 1 46 0
  89 0010 C046     		nop
  90 0012 BD46     		mov	sp, r7
  91              		@ sp needed
  92 0014 80BD     		pop	{r7, pc}
  93              	.L4:
  94 0016 C046     		.align	2
  95              	.L3:
  96 0018 000C0240 		.word	1073875968
  97 001c 55555555 		.word	1431655765
  98 0020 3CC00120 		.word	536985660
  99 0024 00000000 		.word	systick_irq_handler
 100              		.cfi_endproc
 101              	.LFE1:
 103              		.align	1
 104              		.global	delay_1mikro
 105              		.syntax unified
 106              		.code	16
 107              		.thumb_func
 108              		.fpu softvfp
 110              	delay_1mikro:
 111              	.LFB2:
  47:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** void delay_1mikro(void){
 112              		.loc 1 47 0
 113              		.cfi_startproc
 114              		@ args = 0, pretend = 0, frame = 0
 115              		@ frame_needed = 1, uses_anonymous_args = 0
 116 0028 80B5     		push	{r7, lr}
 117              		.cfi_def_cfa_offset 8
 118              		.cfi_offset 7, -8
 119              		.cfi_offset 14, -4
 120 002a 00AF     		add	r7, sp, #0
 121              		.cfi_def_cfa_register 7
  48:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	*STK_CTRL = 0;
 122              		.loc 1 48 0
 123 002c 074B     		ldr	r3, .L6
 124 002e 0022     		movs	r2, #0
 125 0030 1A60     		str	r2, [r3]
  49:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	*STK_LOAD = (168 -1);
 126              		.loc 1 49 0
 127 0032 074B     		ldr	r3, .L6+4
 128 0034 A722     		movs	r2, #167
 129 0036 1A60     		str	r2, [r3]
  50:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	*STK_VAL = 0;
 130              		.loc 1 50 0
 131 0038 064B     		ldr	r3, .L6+8
 132 003a 0022     		movs	r2, #0
 133 003c 1A60     		str	r2, [r3]
  51:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	*STK_CTRL = 7;
 134              		.loc 1 51 0
 135 003e 034B     		ldr	r3, .L6
 136 0040 0722     		movs	r2, #7
 137 0042 1A60     		str	r2, [r3]
  52:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** }
 138              		.loc 1 52 0
 139 0044 C046     		nop
 140 0046 BD46     		mov	sp, r7
 141              		@ sp needed
 142 0048 80BD     		pop	{r7, pc}
 143              	.L7:
 144 004a C046     		.align	2
 145              	.L6:
 146 004c 10E000E0 		.word	-536813552
 147 0050 14E000E0 		.word	-536813548
 148 0054 18E000E0 		.word	-536813544
 149              		.cfi_endproc
 150              	.LFE2:
 152              		.align	1
 153              		.global	systick_irq_handler
 154              		.syntax unified
 155              		.code	16
 156              		.thumb_func
 157              		.fpu softvfp
 159              	systick_irq_handler:
 160              	.LFB3:
  53:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** void systick_irq_handler(void){
 161              		.loc 1 53 0
 162              		.cfi_startproc
 163              		@ args = 0, pretend = 0, frame = 0
 164              		@ frame_needed = 1, uses_anonymous_args = 0
 165 0058 80B5     		push	{r7, lr}
 166              		.cfi_def_cfa_offset 8
 167              		.cfi_offset 7, -8
 168              		.cfi_offset 14, -4
 169 005a 00AF     		add	r7, sp, #0
 170              		.cfi_def_cfa_register 7
  54:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	*STK_CTRL = 0;
 171              		.loc 1 54 0
 172 005c 0A4B     		ldr	r3, .L12
 173 005e 0022     		movs	r2, #0
 174 0060 1A60     		str	r2, [r3]
  55:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	delay_count --;
 175              		.loc 1 55 0
 176 0062 0A4B     		ldr	r3, .L12+4
 177 0064 1B68     		ldr	r3, [r3]
 178 0066 5A1E     		subs	r2, r3, #1
 179 0068 084B     		ldr	r3, .L12+4
 180 006a 1A60     		str	r2, [r3]
  56:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	if(delay_count > 0){
 181              		.loc 1 56 0
 182 006c 074B     		ldr	r3, .L12+4
 183 006e 1B68     		ldr	r3, [r3]
 184 0070 002B     		cmp	r3, #0
 185 0072 02DD     		ble	.L9
  57:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 		delay_1mikro();
 186              		.loc 1 57 0
 187 0074 FFF7FEFF 		bl	delay_1mikro
  58:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	}
  59:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	else systick_flag = 1;
  60:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** }
 188              		.loc 1 60 0
 189 0078 02E0     		b	.L11
 190              	.L9:
  59:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** }
 191              		.loc 1 59 0
 192 007a 054B     		ldr	r3, .L12+8
 193 007c 0122     		movs	r2, #1
 194 007e 1A60     		str	r2, [r3]
 195              	.L11:
 196              		.loc 1 60 0
 197 0080 C046     		nop
 198 0082 BD46     		mov	sp, r7
 199              		@ sp needed
 200 0084 80BD     		pop	{r7, pc}
 201              	.L13:
 202 0086 C046     		.align	2
 203              	.L12:
 204 0088 10E000E0 		.word	-536813552
 205 008c 04000000 		.word	delay_count
 206 0090 00000000 		.word	systick_flag
 207              		.cfi_endproc
 208              	.LFE3:
 210              		.align	1
 211              		.global	delay
 212              		.syntax unified
 213              		.code	16
 214              		.thumb_func
 215              		.fpu softvfp
 217              	delay:
 218              	.LFB4:
  61:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** void delay(unsigned int count){
 219              		.loc 1 61 0
 220              		.cfi_startproc
 221              		@ args = 0, pretend = 0, frame = 8
 222              		@ frame_needed = 1, uses_anonymous_args = 0
 223 0094 80B5     		push	{r7, lr}
 224              		.cfi_def_cfa_offset 8
 225              		.cfi_offset 7, -8
 226              		.cfi_offset 14, -4
 227 0096 82B0     		sub	sp, sp, #8
 228              		.cfi_def_cfa_offset 16
 229 0098 00AF     		add	r7, sp, #0
 230              		.cfi_def_cfa_register 7
 231 009a 7860     		str	r0, [r7, #4]
  62:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	if(	count == 0){
 232              		.loc 1 62 0
 233 009c 7B68     		ldr	r3, [r7, #4]
 234 009e 002B     		cmp	r3, #0
 235 00a0 08D0     		beq	.L17
  63:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 		return;
  64:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	}
  65:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	delay_count = count;
 236              		.loc 1 65 0
 237 00a2 7A68     		ldr	r2, [r7, #4]
 238 00a4 054B     		ldr	r3, .L18
 239 00a6 1A60     		str	r2, [r3]
  66:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	systick_flag = 0;
 240              		.loc 1 66 0
 241 00a8 054B     		ldr	r3, .L18+4
 242 00aa 0022     		movs	r2, #0
 243 00ac 1A60     		str	r2, [r3]
  67:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	delay_1mikro();
 244              		.loc 1 67 0
 245 00ae FFF7FEFF 		bl	delay_1mikro
 246 00b2 00E0     		b	.L14
 247              	.L17:
  63:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 		return;
 248              		.loc 1 63 0
 249 00b4 C046     		nop
 250              	.L14:
  68:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** }
 251              		.loc 1 68 0
 252 00b6 BD46     		mov	sp, r7
 253 00b8 02B0     		add	sp, sp, #8
 254              		@ sp needed
 255 00ba 80BD     		pop	{r7, pc}
 256              	.L19:
 257              		.align	2
 258              	.L18:
 259 00bc 04000000 		.word	delay_count
 260 00c0 00000000 		.word	systick_flag
 261              		.cfi_endproc
 262              	.LFE4:
 264              		.align	1
 265              		.global	main
 266              		.syntax unified
 267              		.code	16
 268              		.thumb_func
 269              		.fpu softvfp
 271              	main:
 272              	.LFB5:
  69:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 
  70:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** void main(void){
 273              		.loc 1 70 0
 274              		.cfi_startproc
 275              		@ args = 0, pretend = 0, frame = 0
 276              		@ frame_needed = 1, uses_anonymous_args = 0
 277 00c4 80B5     		push	{r7, lr}
 278              		.cfi_def_cfa_offset 8
 279              		.cfi_offset 7, -8
 280              		.cfi_offset 14, -4
 281 00c6 00AF     		add	r7, sp, #0
 282              		.cfi_def_cfa_register 7
  71:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	init_app();
 283              		.loc 1 71 0
 284 00c8 FFF7FEFF 		bl	init_app
  72:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	*PORT_D_OdrLow = 0;
 285              		.loc 1 72 0
 286 00cc 0D4B     		ldr	r3, .L26
 287 00ce 0022     		movs	r2, #0
 288 00d0 1A70     		strb	r2, [r3]
  73:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	delay(DELAY_COUNT);
 289              		.loc 1 73 0
 290 00d2 FA23     		movs	r3, #250
 291 00d4 9B00     		lsls	r3, r3, #2
 292 00d6 1800     		movs	r0, r3
 293 00d8 FFF7FEFF 		bl	delay
  74:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	*PORT_D_OdrLow = 0xFF;
 294              		.loc 1 74 0
 295 00dc 094B     		ldr	r3, .L26
 296 00de FF22     		movs	r2, #255
 297 00e0 1A70     		strb	r2, [r3]
 298              	.L23:
  75:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	while(1){
  76:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 		if(systick_flag){
 299              		.loc 1 76 0
 300 00e2 094B     		ldr	r3, .L26+4
 301 00e4 1B68     		ldr	r3, [r3]
 302 00e6 002B     		cmp	r3, #0
 303 00e8 05D1     		bne	.L25
  77:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 			break;
  78:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 		}
  79:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 		fisk++;
 304              		.loc 1 79 0
 305 00ea 084B     		ldr	r3, .L26+8
 306 00ec 1B68     		ldr	r3, [r3]
 307 00ee 5A1C     		adds	r2, r3, #1
 308 00f0 064B     		ldr	r3, .L26+8
 309 00f2 1A60     		str	r2, [r3]
  76:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 			break;
 310              		.loc 1 76 0
 311 00f4 F5E7     		b	.L23
 312              	.L25:
  77:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 			break;
 313              		.loc 1 77 0
 314 00f6 C046     		nop
  80:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	}
  81:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** 	*PORT_D_OdrLow = 0;
 315              		.loc 1 81 0
 316 00f8 024B     		ldr	r3, .L26
 317 00fa 0022     		movs	r2, #0
 318 00fc 1A70     		strb	r2, [r3]
  82:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/systick_irq\systick_irq.c **** }
 319              		.loc 1 82 0
 320 00fe C046     		nop
 321 0100 BD46     		mov	sp, r7
 322              		@ sp needed
 323 0102 80BD     		pop	{r7, pc}
 324              	.L27:
 325              		.align	2
 326              	.L26:
 327 0104 140C0240 		.word	1073875988
 328 0108 00000000 		.word	systick_flag
 329 010c 08000000 		.word	fisk
 330              		.cfi_endproc
 331              	.LFE5:
 333              	.Letext0:
