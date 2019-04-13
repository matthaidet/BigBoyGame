/**
  Big Boy game
  Property of the Big boy squad.
  2019
*/

enum Frame {
  MENU,
  GAME,
  END
}

PImage image;

Frame currentFrame;

void setup(){
  background(0);
  fullScreen();
  currentFrame = Frame.MENU;
}


// Main game loop
void draw(){
 switch(currentFrame){
  case MENU:
    
  break;
  
  case GAME:
  
  break;
  
  case END:
  
  break;
 }
}
