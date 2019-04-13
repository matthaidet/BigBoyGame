/**
  Big Boy game
  Property of the Big boy squad.
  2019
*/

PImage image;
Scene currentScene;

void setup(){
  background(0);
  size(1920, 1080);
  //fullScreen();
  currentScene = new Menu();
}

// Main game loop
void draw(){
 background(0);
 currentScene.display();
}

void mouseClicked(){
 currentScene.click(); 
}
