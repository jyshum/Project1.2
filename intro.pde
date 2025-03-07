void intro() {

  background(introBackground);
  
  fill(white,textFade);
  textAlign(CENTER,CENTER);
  textSize(80);
  text("SWIM", width/2, height/2-100);
  text("EAT", width/2,height/2-10);
  textSize(30);
  text("&",width/2,height/2-55);
  
  textSize(20);
  textFont(Fondamento);
  text("Click Anywhere To Begin", width/2, height/2+100);
  
  textFadeRun();
  
}

void introClicks() {
  
  if (mouseX > 0 && mouseX < 1000 && mouseY > 0 && mouseY < 800) {
    
     mode = TRANSITION;
     TRANSITIONMODE = GAME;
     transitionCounter = 0;
    
  }

}

void textFadeRun() {

  counter = 0;
  if (counter < 100) {
  counter = counter + 1;
  textFade = textFade + 2;
  }

}
