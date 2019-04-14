import processing.sound.*;

/**
  Big Boy game
  Property of the Big boy squad.
  2019
*/
Scene currentScene;
AssetManager assets;
SoundFile music;

void setup(){
  background(0);
  size(1920, 1080);
  //fullScreen();
  assets = new AssetManager();
  thread("load");
  currentScene = new Loading();
}

void load(){
  music = new SoundFile(this, "Mega.mp3");
  music.amp(1);
  music.loop(); 
}

// Main game loop
void draw(){
 //background(0);
 currentScene.display();
}

// Calls the scene's appropriate click method
void mouseClicked(){
 currentScene.click(); 
}

void keyPressed(){
 currentScene.keyPress(); 
}
