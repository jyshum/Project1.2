void game() {

  background(gameBackground);
  
  pushMatrix();
  noStroke();
  circle(player1X, player1Y, player1Size);
  circle(player2X, player2Y, player2Size);
  popMatrix();
  
  player1Fish(player1X, player1Y, player1Angle);
  
  player2Fish(player2X, player2Y, player2Angle);
  

  
  //movement system
  if (wkey == true) {
    player1X = player1X + 3*cos(radians(player1Angle));
    player1Y = player1Y + 3*sin(radians(player1Angle));
  }
  if (skey == true) ;
  if (akey == true) player1Angle = player1Angle - 5;
  if (dkey == true) player1Angle = player1Angle + 5;
  
  if (upkey == true) {
    player2X = player2X + 3*cos(radians(player2Angle));
    player2Y = player2Y + 3*sin(radians(player2Angle));
  }
  if (downkey == true) ;
  if (leftkey == true) player2Angle = player2Angle - 5;
  if (rightkey == true) player2Angle = player2Angle + 5;
  
 //coral walls
  if (player1Y <= player1Size/2) {
    player1Y = player1Size/2;
  }
  if (player1Y >= height-player1Size/2) {
    player1Y = height-player1Size/2;
  }
  if (player2Y <= player2Size/2) {
    player2Y = player2Size/2;
  }
  if (player2Y >= height-player2Size/2) {
    player2Y = height-player2Size/2;
  }
  
}

void gameClicks() {

}

void player1Fish(float x, float y, float a) {

  pushMatrix();
  translate(x, y);
  scale(0.5);
  rotate(radians(a));
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
