void game() {

  background(gameBackground);
  
  //spawning--------------------------------------------------------------------------------------------------------------------
  for (int i = 0; i < 20; i++) {
        plankton(planktonX[i], planktonY[i],transparency[i]);
    }
    
    // Check if all plankton are eaten
    checkPlanktonEaten();
  
  pushMatrix();
  noStroke();
  circle(player1X, player1Y, player1Size);
  circle(player2X, player2Y, player2Size);
  popMatrix();
  
  //if (dist(player1X,player1Y,player2X,player2Y) < player1Size/2 +player2Size/2) {
  
  //}
  
  //drawing players--------------------------------------------------------------------------------------------------------------------
  
  player2Fish(player2X, player2Y, player2Angle);
  
//eating collision--------------------------------------------------------------------------------------------------------------------
for (int i = 0; i < planktonX.length; i++) {
    if (dist(player1X, player1Y, planktonX[i], planktonY[i]) < 30) {
        transparency[i] = 0; // Only this specific plankton disappears
    }
        if (dist(player2X, player2Y, planktonX[i], planktonY[i]) < 30) {
        transparency[i] = 0; // Only this specific plankton disappears
    }
}

  //drawing bottom sea--------------------------------------------------------------------------------------------------------------------
  fill(sand);
  rect(0,500,1000,150);

  
  //movement system--------------------------------------------------------------------------------------------------------------------
  if (wkey == true) {
    player1X = player1X + 2*cos(radians(player1Angle));
    player1Y = player1Y + 2*sin(radians(player1Angle));
  }
  if (skey == true) ;
  if (akey == true) player1Angle = player1Angle - 5;
  if (dkey == true) player1Angle = player1Angle + 5;
  
  if (upkey == true) {
    player2X = player2X + 2*cos(radians(player2Angle));
    player2Y = player2Y + 2*sin(radians(player2Angle));
  }
  if (downkey == true) ;
  if (leftkey == true) player2Angle = player2Angle - 5;
  if (rightkey == true) player2Angle = player2Angle + 5;
  
 //coral X walls--------------------------------------------------------------------------------------------------------------------
 if (player1X <= player1Size/2) {
    player1X = player1Size/2;
  }
  if (player1X >= width-player1Size/2) {
    player1X = width-player1Size/2;
  }
  if (player2X <= player2Size/2) {
    player2X = player2Size/2;
  }
  if (player2X >= width-player2Size/2) {
    player2X = width-player2Size/2;
  }
  //coral Y walls--------------------------------------------------------------------------------------------------------------------
  if (player1Y <= player1Size/2) {
    player1Y = player1Size/2;
  }
  if (player1Y >= 500-player1Size/2) {
    player1Y = 500-player1Size/2;
  }
  if (player2Y <= player2Size/2) {
    player2Y = player2Size/2;
  }
  if (player2Y >= 500-player2Size/2) {
    player2Y = 500-player2Size/2;
  }
  
}

void gameClicks() {

}

void checkPlanktonEaten() {
    boolean allPlanktonEaten = true;

    // Check if all plankton's transparency is 0
    for (int i = 0; i < 20; i++) {
        if (transparency[i] != 0) {
            allPlanktonEaten = false;
            break; // Exit early if one plankton is still visible
        }
    }

    // If all plankton are eaten (transparency 0), switch to game over mode
    if (allPlanktonEaten) {
       mode = TRANSITION;
       TRANSITIONMODE = GAMEWIN;
       transitionCounter = 0;
       resetPlanktonPlayers(); // Reset plankton positions and transparency
    }
}

void resetPlanktonPlayers() {
    // Reset plankton positions and transparency
    for (int i = 0; i < 20; i++) {
        planktonX[i] = random(width);  // Reset position to random place
        planktonY[i] = random(height);
        transparency[i] = 255;  // Reset transparency to 255 (fully visible)
        
        player1X = 100;
        player1Y = height/2-200;
        player1Angle = 45;
        
        player2X = 100;
        player2Y = height/2-100;
        player2Angle = 45;
    }
}


void player1Fish(float x, float y, float a) {

  pushMatrix();
  translate(x, y);
  scale(0.5);
  rotate(radians(a));
  fill(player1);
  fishdorsal(0, 0);
  fishtail(0, 0);
  fishbody(0, 0);
  //fishfin(0,0);
  fishgill(0,0);
  fishmouth(0, 0);
  fisheye(0, 0);
  //fisheye2(0,0);
  popMatrix();
  
}

void player2Fish(float x, float y, float a) {
  
  pushMatrix();
  translate(x, y);
  scale(0.5);
  rotate(radians(a));
  fill(player2);
  fishdorsal(0, 0);
  fishtail(0, 0);
  fishbody(0, 0);
  //fishfin(0, 0);
  fishgill(0, 0);
  fishmouth(0, 0);
  fisheye(0, 0);
  //fisheye2(0,0);
  popMatrix();

}




void fishbody(float x, float y) {
  pushMatrix();
  translate(x,y);
  circle(0, 0, 80);
  popMatrix();
}

void fishtail(float x, float y) {
  pushMatrix();
  translate(x,y);
  triangle(-10, 0, -70, 30, -70, -30);

  f = -30;
  while (f <= 30) {
  stroke(2);
  line(-10,0,-70,f);
  f += 10;
  }
  popMatrix();
}

void fisheye(float x, float y) {
  pushMatrix();
  translate(x,y);
  fill(0);
  ellipse(20, -10, 8, 8);
  fill(255);
  popMatrix();
}

void fisheye2(float x, float y) {
  pushMatrix();
  translate(x,y);
  fill(0);
  ellipse(20, 10, 8, 8);
  fill(255);
  popMatrix();
}

void fishdorsal(float x, float y) {
  pushMatrix();
  translate(x,y);
  ellipse(0, -40, 15, 25);
  ellipse(-10, -40, 10, 15);
  ellipse(15, -40, 15, 20);
  popMatrix();
}

void fishfin(float x, float y) {
  pushMatrix();
  translate(x,y);
  ellipse(15, 25, 30, 25);
  popMatrix();
}

void fishmouth(float x, float y) {
  pushMatrix();
  translate(x,y);
  line(40, 10, 25, 5);
  popMatrix();
}

void fishgill(float x, float y) {
  pushMatrix();
  translate(x,y);
  line(0, -8, 0, 8);
  ellipse(-5, 0, 10, 10);
  popMatrix();
}

void plankton(float x, float y, int transparency) {

  pushMatrix();
  translate(x,y);
  noStroke();
  fill(plankton, transparency);
  circle(0,0,15);
  popMatrix();

}
