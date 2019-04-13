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
Game game;

Frame currentFrame;

void setup(){
  background(0);
  fullScreen();
  currentFrame = Frame.MENU;
}

void startGame(){
  game = new Game();
}



// Main game loop
void draw(){
 switch(currentFrame){
  case MENU:
    text("The Adventures of Big Boy", 100, 100);
  break;
    
  case GAME:
  
  break;
  
  case END:
  
  break;
 }
}
