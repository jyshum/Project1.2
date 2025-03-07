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
final int GAMEWIN = 7;
int TRANSITIONMODE;

//image variables
PImage FishEating;

//counter variables
int transitionCounter;

//entity-variables
float player1X, player1attackX, player1Y, player1attackY, player1Size, player1Angle, 
   player2X, player2attackX, player2Y, player2attackY, player2Size, player2Angle;
   //, planktonX, planktonY; //paddles

//keyboard variables
boolean wkey, skey, akey, dkey, ekey, upkey, downkey, leftkey, rightkey, ctrlkey;

//other-variables
float f;
float textFade;
int counter;
PFont Fondamento;
int[] transparency = new int[20]; // ✅ This stores transparency for EACH plankton
int planktonCount;
float[] planktonX = new float[20];
float[] planktonY = new float[20];

//color pallette
color introBackground = #0F2550;
color gameBackground = #405B8E;
color gameOverBackground = #99D7E5;
color gameWinBackground = #99D7E5;
color plankton = #5ACE5E;
color player1 = #E3995C;
color player2 = #BF6B3A;
color sand = #CBA97F;
color white = #FFFFFF;

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
  player2Y = height/2-100;
  player2Angle = 45;
  player2Size = 40;
  
  //other Starts
  FishEating = loadImage("fish1-removebg-preview.png");
  Fondamento = createFont("Fondamento-Italic", 20);
  
  for (int i = 0; i < 20; i++) {
    planktonX[i] = random(20,980);
    planktonY[i] = random(20,480);
    transparency[i] = 255; // Initialize transparency for each plankton
    }
 
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
  } else if (mode == GAMEWIN) {
    gameWin();
  }else {
    println("Error: Mode = " + mode);
  }
  
}
