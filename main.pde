//Jared-Shum

//mode-variables
int mode;
final int INTRO = 0;
final int GAMEMODE = 1;
final int GAMEMODE2 = 2;
final int GAME = 3;
final int GAMEOVER = 4;
final int PAUSE = 5;
final int TRANSITION = 6;
int TRANSITIONMODE;

//counter variables
int transitionCounter;

//entity-variables
float player1X, player1attackX, player1Y, player1attackY, player1Size, player1Angle, 
,   player2X, player2attackX, player2Y, player2attackY, player2Size, player2Angle; //paddles

//keyboard variables
boolean wkey, skey, akey, dkey, ekey, upkey, downkey, leftkey, rightkey, ctrlkey;

//other-variables
float f;

//color pallette
color introBackground = #0F2550;
color gameBackground = #405B8E;

void setup() {
 size(1000,600);
 
  mode = INTRO; //Set first mode to intro for the start
 
  //player1 Starts
  player1X = 100;
  player1Y = height/2-200;
  player1Angle = 45;
  player1Size = 40;
 
  //player2 Starts
  player2X = 100;
  player2Y = height/2-200;
  player2Angle = 45;
  player2Size = 40;
 
  //initialize keyboard variables
  wkey = skey = akey = dkey = ekey = upkey = downkey = leftkey = rightkey = false;
 
}

void draw() {

    if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameOver();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == TRANSITION) {
    transition();
  } else {
    println("Error: Mode = " + mode);
  }
  
}
