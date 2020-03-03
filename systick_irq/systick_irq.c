/*
 * 	startup.c
 *
 */
void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void )
{
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	"_exit: B .\n"				/* never return */
	) ;
}
#define PORT_D 0x40020C00
#define PORT_D_Moder ((volatile unsigned int*) (PORT_D))
#define PORT_D_Otyper ((volatile unsigned short *) (PORT_D+0x4))
#define PORT_D_Ospeedr ((volatile unsigned int *) (PORT_D+0x8))
#define PORT_D_Pupdr ((volatile unsigned int *) (PORT_D+0xC))
#define PORT_D_IdrLow ((volatile unsigned short *) (PORT_D+0x10))
#define PORT_D_IdrHigh ((volatile unsigned char *) (PORT_D+0x11))
#define PORT_D_OdrLow ((volatile unsigned char *) (PORT_D+0x14))
#define PORT_D_OdrHigh ((volatile unsigned char *) (PORT_D+0x14+1))

#define STK 0xE000E010
#define STK_CTRL ((volatile unsigned int*)(STK))
#define STK_LOAD ((volatile unsigned int*)(STK + 0x4))
#define STK_VAL ((volatile unsigned int*)(STK + 0x8))
#define SIMULATOR

#ifdef	SIMULATOR
#define DELAY_COUNT 1000
#else
#define DELAY_COUNT 1000000
#endif

static volatile int systick_flag;
static volatile int delay_count;
static volatile int fisk;
void systick_irq_handler(void);

void init_app(void){
	*PORT_D_Moder = 0x55555555;
	*((void(**)(void))0x2001C03C) = systick_irq_handler;
}
void delay_1mikro(void){
	*STK_CTRL = 0;
	*STK_LOAD = (168 -1);
	*STK_VAL = 0;
	*STK_CTRL = 7;
}
void systick_irq_handler(void){
	*STK_CTRL = 0;
	delay_count --;
	if(delay_count > 0){
		delay_1mikro();
	}
	else systick_flag = 1;
}
void delay(unsigned int count){
	if(	count == 0){
		return;
	}
	delay_count = count;
	systick_flag = 0;
	delay_1mikro();
}

void main(void){
	init_app();
	*PORT_D_OdrLow = 0;
	delay(DELAY_COUNT);
	*PORT_D_OdrLow = 0xFF;
	while(1){
		if(systick_flag){
			break;
		}
		
		fisk++;
	}
	*PORT_D_OdrLow = 0;
}

