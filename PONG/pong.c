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
typedef unsigned int uint32_t;
typedef unsigned short int uint16_t;
typedef unsigned char uint8_t;

typedef struct GPIO { // Struct för GPIO Portar
	uint32_t	moder;
	uint16_t	otyper;
	uint16_t	otReserved;
	uint32_t	oSpeedr;
	uint32_t	pupdr;
	uint8_t		idr_low;
	uint8_t		idr_high;
	uint16_t	idr_reserved;
	uint8_t		odr_low;
	uint8_t		odr_high;
	uint16_t	odr_reserved;
	
} GPIO;
typedef volatile GPIO* gpioptr;

#define GPIO_E (*((gpioptr)0x40021000))
#define GPIO_D (*((gpioptr)0x40020C00))

#define SysTick 0xE000E010
#define STK_CTRL ((volatile unsigned int*) (SysTick))
#define STK_LOAD ((volatile unsigned int*) (SysTick + 0x4))
#define STK_VAL ((volatile unsigned int*) (SysTick + 0x8))

#define B_E 0x40 // Enable
#define B_RST 0x20 // Reset
#define B_CS2 0x10 // Controller Select 2
#define B_CS1 8 // Controller Select 1
#define B_SELECT 4 // 0 Graphics, 1 ASCII
#define B_RW 2 // 0 Write, 1 Read
#define B_RS 1 // 0 Command, 1 Data

#define LCD_ON 0x3F // Display on
#define LCD_OFF 0x3E // Display off
#define LCD_SET_ADD 0x40 // Set horizontal coordinate
#define LCD_SET_PAGE 0xB8 // Set vertical coordinate
#define LCD_DISP_START 0xC0 // Start address
#define LCD_BUSY 0x80 // Read busy status

#define LCD_WIDTH 128 //LC skärmens bredd
#define LCD_HEIGHT 64 //LC skärmens höjd
#define MAX_POINTS 14 //max antal punkter som en Geometry får ha.

//#define SIMULATOR //Om man kör i labbsystemet kommentera ut hela raden.
#define WinPoints 9 //Poängen man ska få för att vinna.


unsigned char Segcodes[16] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
unsigned char Key[16]  = {1,2,3,0xA, 4, 5, 6 , 0xB, 7, 8, 9, 0xC, 0xE, 0, 0xF, 0xD};
char *AsciiOutPrint; //Pekaren som i Print_To_Ascii

// Structs
typedef struct tpoint{
	unsigned char x;
	unsigned char y;
}POINT;
typedef struct tGeometry{
	int numPoints;
	int sizeX;
	int sizeY;
	POINT px[MAX_POINTS];
}GEOMETRY, *PGEOMETRY;
typedef struct tObj{
	PGEOMETRY geo;
	int dirx,diry;
	int posx,posy;
	void (*draw)(struct tobj*);
	void (*clear)(struct tobj*);
	void (*move)(struct tobj*);
	void (*set_speed)(struct tobj*, int, int);
	void (*set_pos)(struct tobj*, int, int);
	void (*check_ball_collision)(struct tobj*);
}OBJECT, *POBJECT;
typedef struct tPlayer{ //Spelar Structen
	POBJECT objct;
	int points;
	char PAscii[10];
	char winMsg[12];

	
}PLAYER, *PPLAYER;


//Funktions declarationer
void graphic_initialize(void);
static void graphic_write_command(uint8_t command, uint8_t controller);
static void graphic_write_data(uint8_t data, uint8_t controller);
static void graphic_write(uint8_t value, uint8_t controller);
static void graphic_ctrl_bit_clear(uint8_t x);
void move_bouncer(POBJECT O);
void move_ball(POBJECT O);
void clear_object(POBJECT O);
void draw_object(POBJECT O);
void set_object_speed(POBJECT O, int speedx, int speedy);
void set_pos(POBJECT O, int x, int y);
unsigned char ascii_read_status(void);
void ascii_write_CMD(unsigned char command);
void check_ball_collision(POBJECT O);

GEOMETRY ball_geometry ={
	.numPoints = 12,
	.sizeX = 4,
	.sizeY = 4,
	{
		/* px[0,1,2 ....] */
		{0,1}, {0,2}, {1,0}, {1,1}, {1,2},
		{1,3}, {2,0}, {2,1}, {2,2}, {2,3},
		{3,1}, {3,2}
	}
};
GEOMETRY bouncer_geometry={
	.numPoints = 14,
	.sizeX = 2,
	.sizeY = 6,
	{
		{0,0},{1,0},
		{0,1},{1,1},
		{0,2},{1,2},
		{0,3},{1,3},
		{0,4},{1,4},
		{0,5},{1,5},
		{0,6},{1,6}
	}
};
static OBJECT left_bouncer ={ // Den vänstra "pinnen".
	.geo = &bouncer_geometry,
	.dirx = 0,
	.diry = 0,
	.posx = 15,
	.posy = LCD_HEIGHT/2,
	draw_object,
	clear_object,
	move_bouncer,
	set_object_speed,
	set_pos,
};
static OBJECT right_bouncer ={ //Den högra "pinnen".
	.geo = &bouncer_geometry,
	.dirx = 0,
	.diry = 0,
	.posx = LCD_WIDTH-15,
	.posy = LCD_HEIGHT/2,
	draw_object,
	clear_object,
	move_bouncer,
	set_object_speed,
	set_pos,
};

static OBJECT ball = {
	.geo = &ball_geometry,
	.dirx = 0,
	.diry = 0,
	.posx = LCD_WIDTH/2,
	.posy = LCD_HEIGHT/2,
	draw_object,
	clear_object,
	move_ball,
	set_object_speed,
	set_pos,
	check_ball_collision,
};
static PLAYER Player1 = { //Spelare 1
	.objct = &left_bouncer,
	.points = 0, //P1:s poäng.
	.PAscii = "player1: ",
	.winMsg = "Player1 wins"
};
static PLAYER Player2= { //Spelare 2
	.objct = &right_bouncer,
	.points = 0, //P2:s poäng.
	.PAscii = "Player2: ",
	.winMsg = "PLayer2 wins",
};

//                      Functions
// LCD functions
static void graphic_ctrl_bit_set(uint8_t x) {
uint8_t c;
c = GPIO_E.odr_low;
c &= ~B_SELECT;
c |= (~B_SELECT & x);
GPIO_E.odr_low = c;
}
static void graphic_ctrl_bit_clear(uint8_t x) {
uint8_t c;
c = GPIO_E.odr_low;
c &= ~B_SELECT;
c &= ~x;
GPIO_E.odr_low = c;
}
static void select_controller(uint8_t controller){
	switch(controller){
		case 0:
			graphic_ctrl_bit_clear(B_CS1|B_CS2);
			break;
		case B_CS1 :
			graphic_ctrl_bit_set(B_CS1);
			graphic_ctrl_bit_clear(B_CS2);
			break;
		case B_CS2 :
			graphic_ctrl_bit_set(B_CS2);
			graphic_ctrl_bit_clear(B_CS1);
			break;
		case B_CS1|B_CS2 :
			graphic_ctrl_bit_set(B_CS1|B_CS2);
			break;
	}
}
void graphic_initialize(void) {
	graphic_ctrl_bit_set(B_E);
	delay_mikro(10);
	graphic_ctrl_bit_clear(B_CS1|B_CS2|B_RST|B_E);
	delay_milli(30);
	graphic_ctrl_bit_set(B_RST);
	delay_milli(100);
	graphic_write_command(LCD_OFF, B_CS1|B_CS2);
	graphic_write_command(LCD_ON, B_CS1|B_CS2);
	graphic_write_command(LCD_DISP_START, B_CS1|B_CS2);
	graphic_write_command(LCD_SET_ADD, B_CS1|B_CS2);
	graphic_write_command(LCD_SET_PAGE, B_CS1|B_CS2);
	select_controller(0);
}
static void graphic_wait_ready(void) {
	uint8_t c;
	graphic_ctrl_bit_clear(B_E);
	GPIO_E.moder = 0x00005555; // 15-8 inputs, 7-0 outputs
	graphic_ctrl_bit_clear(B_RS);
	graphic_ctrl_bit_set(B_RW);
	delay_500ns();
	while(1) {
		graphic_ctrl_bit_set(B_E);
		delay_500ns();
		c = GPIO_E.idr_high & LCD_BUSY;
		graphic_ctrl_bit_clear(B_E);
		delay_500ns();
		if( c == 0 ) break;
	}
	GPIO_E.moder = 0x55555555; // 15-0 outputs
}
static uint8_t graphic_read(uint8_t controller) {
	uint8_t c;
	graphic_ctrl_bit_clear(B_E);
	GPIO_E.moder = 0x00005555; // 15-8 inputs, 7-0 outputs
	graphic_ctrl_bit_set(B_RS|B_RW);
	select_controller(controller);
	delay_500ns();
	graphic_ctrl_bit_set(B_E);
	delay_500ns();
	c = GPIO_E.idr_high;
	graphic_ctrl_bit_clear(B_E);
	GPIO_E.moder = 0x55555555; // 15-0 outputs
	if( controller & B_CS1 ) {
		select_controller(B_CS1);
		graphic_wait_ready();
	}
	if( controller & B_CS2 ) {
		select_controller(B_CS2);
		graphic_wait_ready();
	}
return c;
}
static uint8_t graphic_read_data(uint8_t controller) {
graphic_read(controller);
return graphic_read(controller);
}
static void graphic_write(uint8_t value, uint8_t controller) {
	GPIO_E.odr_high = value;
	select_controller(controller);
	delay_500ns();
	graphic_ctrl_bit_set(B_E);
	delay_500ns();
	graphic_ctrl_bit_clear( B_E );
	if(controller & B_CS1) {
		select_controller( B_CS1);
		graphic_wait_ready();
	}
	if(controller & B_CS2) {
		select_controller( B_CS2);
		graphic_wait_ready();
	}
}
static void graphic_write_command(uint8_t command, uint8_t controller) {
	graphic_ctrl_bit_clear(B_E);
	select_controller(controller);
	graphic_ctrl_bit_clear(B_RS|B_RW);
	graphic_write(command, controller);
}
static void graphic_write_data(uint8_t data, uint8_t controller) {
	graphic_ctrl_bit_clear(B_E);
	select_controller(controller);
	graphic_ctrl_bit_set(B_RS);
	graphic_ctrl_bit_clear(B_RW);
	graphic_write(data, controller);
}
void graphic_clear_screen(void) {
	uint8_t i, j;
	for(j = 0; j < 8; j++) {
		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
		graphic_write_command(LCD_SET_ADD | 0, B_CS1|B_CS2);
		for(i = 0; i <= 63; i++){
			graphic_write_data(0, B_CS1|B_CS2);
		}
	}
}

void pixel(int x, int y, int set) {
	uint8_t mask, c, controller;
	int index;
	if((x < 1) || (y < 1) || (x > 128) || (y > 64)) return;
	index = (y-1)/8;
	switch( (y-1)%8 ) {
		case 0: mask = 1; break;
		case 1: mask = 2; break;
		case 2: mask = 4; break;
		case 3: mask = 8; break;
		case 4: mask = 0x10; break;
		case 5: mask = 0x20; break;
		case 6: mask = 0x40; break;
		case 7: mask = 0x80; break;
	}
		if(set == 0)
			mask = ~mask;
		if(x > 64){
			controller = B_CS2;
		x = x - 65;
		} 
		else {
		controller = B_CS1;
		x = x-1;
		}
		graphic_write_command(LCD_SET_ADD | x, controller );
		graphic_write_command(LCD_SET_PAGE | index, controller );
		c = graphic_read_data(controller);
		graphic_write_command(LCD_SET_ADD | x, controller);
		if(set)
			mask = mask | c;
		else
			mask = mask & c;
		graphic_write_data(mask, controller);
}

// Game object funcions.
void check_ball_collision(POBJECT O){ //Check if the ball hits anything.
	// Check if hits left side. if it does P2 get point.
	if(O->posx < 1){
		Player2.points = Player2.points + 1;
		ascii_clear_dsplay();
		print_to_ascii(Player1.PAscii, ('0' + Player1.points), 1);
		print_to_ascii(Player2.PAscii, ('0' + Player2.points), 2);
		O->set_pos(O,LCD_WIDTH/2,LCD_HEIGHT/2);
		delay_milli(200);
	}
	// Check if hits right side. if it does P1 get point.
	else if(O->posx > LCD_WIDTH){
		Player1.points = Player1.points + 1;
		ascii_clear_dsplay();
		print_to_ascii(Player1.PAscii, ('0' + Player1.points), 1);
		print_to_ascii(Player2.PAscii, ('0' + Player2.points), 2);
		O->set_pos(O,LCD_WIDTH/2,LCD_HEIGHT/2);
		delay_milli(200);

	}
	//Check if the ball hits the roof or floor it changes Y direction.
	else if(O->posy < 3 || O->posy >= LCD_HEIGHT - O->geo->sizeY){
		O->diry = -(O->diry);
	}
	//If the ball hits player1's paddle, change direction.
	else if(O->posx < Player1.objct->posx + O->geo->sizeX && Player1.objct->posy -2 <= O->posy && O->posy <= Player1.objct->posy + Player1.objct->geo->sizeY +1 && O->posx > Player1.objct->posx - 4 ){
		O->dirx = -(O->dirx);
		O->set_pos(O, Player1.objct->posx + 5, O->posy);
		Player1.objct->draw(Player1.objct);
	}
	//If the ball hits player1's paddle, change direction.
	else if(O->posx > Player2.objct->posx - O->geo->sizeX && Player2.objct->posy -2 <= O->posy && O->posy <= Player2.objct->posy + Player2.objct->geo->sizeY +1 && O->posx < Player2.objct->posx + 4 ){
		O->dirx = -(O->dirx);
		O->set_pos(O, Player2.objct->posx - 5, O->posy);
		Player2.objct->draw(Player2.objct);
	}
}
void set_object_speed(POBJECT O, int speedx, int speedy){
	O->dirx = speedx;
	O->diry = speedy;
}
void draw_object(POBJECT O){
	for(int i = 0; i < MAX_POINTS ;i++){
		pixel(O->posx + O->geo->px[i].x, O->posy + O->geo->px[i].y, 1);
	}
}
void clear_object(POBJECT O){
	for(int i = 0; i < MAX_POINTS; i++){
		pixel(O->posx + O->geo->px[i].x, O->posy + O->geo->px[i].y, 0);
	}
}
void set_pos(POBJECT O, int x, int y){
	O->posx = x;
	O->posy = y;
}
void move_ball(POBJECT O){
	clear_object(O);
	O->check_ball_collision(O);
	O->posx += O->dirx;
	O->posy += O->diry;
	draw_object(O);
}
void move_bouncer(POBJECT O){
	clear_object(O);
	// Check if at top or bottom of scren and if so change the Y-dirrection.
	if(O->posy > 3 && O->diry < 0){
		O->posy += O->diry;
	}
	else if(O->posy < LCD_HEIGHT - O->geo->sizeY-2 && O->diry > 0){
		O->posy += O->diry;
	}
	//Move the bouncer to the new cordinates.
	
	//Set diry to zero so the bouncer stops.
	O->diry = 0;
	draw_object(O);
	
}

//Delay funktioner
void delay_250ns ( void ) {
		*STK_CTRL = 0x00;
		*STK_LOAD = ((168/4) - 1);
		*STK_VAL = 0;
		*STK_CTRL = 5;
		while ((*STK_CTRL & 0x10000) == 0){}
		*STK_CTRL = 0;
}
void delay_500ns(void){
	delay_250ns();
	delay_250ns();
}
void delay_mikro (unsigned int us){
	for (int i = 0; i < us; i++) {
		delay_250ns();
		delay_250ns();
		delay_250ns();
		delay_250ns();
		}
}	
void delay_milli (unsigned int ms){
	#ifdef SIMULATOR
		delay_mikro(1);
	#else
		delay_mikro(ms * 1000);
	#endif
}

//Keypad Funktioner
unsigned char keyb(void){
	int row, column;
	for (row = 1; row <= 4; row++){
		ActivateRow(row);
		if (column = ReadColumn()){
			ActivateRow(0);
			return Key[4*(row-1) + (column-1)];
		}
	}
	ActivateRow(0);
	return 0xFF;
}
void ActivateRow(char row){
	switch(row){
		case 1: GPIO_D.odr_high = 0x10; break;
		case 2: GPIO_D.odr_high = 0x20; break;
		case 3: GPIO_D.odr_high = 0x40; break;
		case 4: GPIO_D.odr_high = 0x80; break;
		case 0: GPIO_D.odr_high = 0x00; break;
	}
}
int ReadColumn (void){
	unsigned char c;
	c = GPIO_D.idr_high;
	if(c & 0x8) return 4;
	if(c & 0x4) return 3;
	if(c & 0x2) return 2;
	if(c & 0x1) return 1;
	return 0;
}
//void out7seg(unsigned char c){
//	if (c > 0xF){
//		GPIO_D.odr_low = 0x00;
//	}
//	else GPIO_D.odr_low = Segcodes[c];
//	}

//ascii Funktioner
void ascii_init(void){
	while((ascii_read_status() & 0x80) == 0x80){}
		delay_mikro(8);
		ascii_write_CMD(0x38);
		delay_mikro(39);
		ascii_write_CMD(0x0E);
		delay_mikro(39);
		ascii_write_CMD(0x06);
		delay_mikro(39);
}
void ascii_gotoxy(int x, int y){
	int address = x - 1;
	if(y == 2){
		address = address + 0x40;
	}
	ascii_write_CMD(0x80 | address);
}
void ascii_write_char(unsigned char c){
	while((ascii_read_status() & 0x80) == 0x80){}
	delay_mikro(8);
	ascii_write_data(c);
	delay_mikro(43);
}

void ascii_ctrl_bit_set( unsigned char x ){ /* Funktion för att 1-ställa bitar */
	unsigned char c;
	c = GPIO_E.odr_low;
	c |= ( B_SELECT | x );
	GPIO_E.odr_low = c;
}
void ascii_ctrl_bit_clear( unsigned char x ){
	unsigned char c;
	c = GPIO_E.odr_low;
	c = B_SELECT | ( c & ~x );
	GPIO_E.odr_low = c;
} 

void ascii_write_controller(unsigned char c){
	ascii_ctrl_bit_set(B_E);
	GPIO_E.odr_high = c;
	delay_250ns();
	ascii_ctrl_bit_clear(B_E);
}
void ascii_write_CMD(unsigned char command){
	ascii_ctrl_bit_clear(B_RS);
	ascii_ctrl_bit_clear(B_RW);
	ascii_write_controller(command);
}
void ascii_write_data(unsigned char data){
	ascii_ctrl_bit_set(B_RS);
	ascii_ctrl_bit_clear(B_RW);
	ascii_write_controller(data);
}
unsigned char ascii_read_controller(void){
	ascii_ctrl_bit_set(B_E);
	delay_250ns();
	delay_250ns();
	unsigned char r = GPIO_E.idr_high;
	ascii_ctrl_bit_clear(B_E);
	return r;
}
unsigned char ascii_read_status(void){
	GPIO_E.moder = 0x00005555;
	ascii_ctrl_bit_clear(B_RS);
	ascii_ctrl_bit_set(B_RW);
	unsigned char r = ascii_read_controller();
	GPIO_E.moder = 0x55555555;
	return r;
}
unsigned char ascii_read_data(void){
	unsigned char rv;
	GPIO_E.moder = 0x00005555;
	ascii_ctrl_bit_set(B_RS);
	ascii_ctrl_bit_set(B_RW);
	rv = ascii_read_controller;
	GPIO_E.moder = 0x55555555;
	return rv;
}
void ascii_clear_dsplay(void){
	ascii_write_CMD(1);
}
//skriver ut det som finns i PAscii till AsciiDisplayen.
void print_to_ascii(char line[], signed char x, char i){		
		ascii_gotoxy(1,i);
		while(*line)
			ascii_write_char(*line++);
		if(x >= 0){ //If X is negative, don't print the players point.
			ascii_write_char(x);
		}

}

//Sets values to their initiall value.
void init_app(void){ 	
	
	GPIO_E.moder = 0x55555555;
	GPIO_D.moder = 0x55005555;
}	
void game_init(POBJECT BALL, PPLAYER P1, PPLAYER P2){
		//Reset points
		P1->points = 0;
		P2->points = 0;
		// Reset bouncer positions.
		P1->objct->posx = 6;
		P1->objct->posy = 32;
		P2->objct->posx = LCD_WIDTH - 6;
		P2->objct->posy = 32;
		
		//Clears LCD screen
		graphic_clear_screen();
		
		// Writes the startup values to the AsciiDisplay.
		ascii_clear_dsplay();
		print_to_ascii(Player1.PAscii,'0' + Player1.points, 1);
		print_to_ascii(Player2.PAscii,'0' + Player2.points, 2);
		
		P1->objct->move(P1->objct); //Flyttar P1 "pinne"
		P2->objct->move(P2->objct); //Flyttar P2 "pinne"
		
		// Gives the ball it's speedfactor.
		BALL->set_speed(BALL,1,1);
		delay_milli(300);
}

void main(void){
	char c;
	POBJECT BALL = &ball;
	PPLAYER P1 = &Player1;
	PPLAYER P2 = &Player2;
	
	init_app(); //Initierar register
	ascii_init(); //Initierar Ascii displayen
	graphic_initialize(); //initierar LC displayen
	game_init(BALL, P1, P2); //initierar spelet
	while(1){
		BALL->move(BALL); //sätter bollen i rörelse
		delay_milli(10);
		c = keyb(); //Kollar om någon tryckt
		switch(c){
			case 1: P1->objct->set_speed(P1->objct, 0, -2);
				P1->objct->move(P1->objct);
				break;
			case 7: P1->objct->set_speed(P1->objct, 0, 2);
				P1->objct->move(P1->objct);
				break;
			case 3: P2->objct->set_speed(P2->objct, 0, -2);
				P2->objct->move(P2->objct);
				break;
			case 9: P2->objct->set_speed(P2->objct, 0, 2);
				P2->objct->move(P2->objct);
				break;
		}
		if(P1->points >= WinPoints||P2->points >= WinPoints){ //Om någon har nåt poängen för att vinna
			char press[] = "Press 5 to restart";
			char restart = 1; //sätt restart variabeln till 1
			if(P1->points >= WinPoints){ // Om player 1 har vunnit sätt Ascii displayerna till Player1 Wins
				ascii_clear_dsplay();
				print_to_ascii(Player1.winMsg, -1, 1);
				print_to_ascii(press, -1, 2);

			}
			else if(P2->points >= WinPoints){ // Om player 2 har vunnit sätt Ascii displayerna till Player2 Wins
			ascii_clear_dsplay();
			print_to_ascii(Player2.winMsg, -1, 1);
			print_to_ascii(press, -1, 2);
			}
			while(restart){ //Så länge inte knapp 5 på Keypaden har tryckts så står är spelet låst
				char button = keyb(); //reads the keyboard.
				if(button == 5){
					game_init(BALL, P1, P2); // startar om spelet
					restart = 0; //Set restar to 0.

				}
			}
		}
	}
}

