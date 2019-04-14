/**
  Big Boy game
  Property of the Big boy squad.
  2019
*/
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

// Calls the scene's appropriate click method
void mouseClicked(){
 currentScene.click(); 
}

void keyPressed(){
 currentScene.keyPress(); 
}
