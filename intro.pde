void intro() {

  background(introBackground);
  
  text("SWIM", width/2, height/2);
  
}

void introClicks() {
  
  if (mouseX > 0 && mouseX < 1000 && mouseY > 0 && mouseY < 800) {
    
     mode = TRANSITION;
     TRANSITIONMODE = GAME;
     transitionCounter = 0;
    
  }

}
