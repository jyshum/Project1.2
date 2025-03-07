void gameWin() {

  background(gameWinBackground);
  
  scale(0.5);
  image(FishEating, width/2+200, height/2);
  
  
  
}

void gameWinClicks() {

    if (mouseX > 0 && mouseX < 1000 && mouseY > 0 && mouseY < 800) {
    
     mode = TRANSITION;
     TRANSITIONMODE = INTRO;
     transitionCounter = 0;
    
  }
  
}
