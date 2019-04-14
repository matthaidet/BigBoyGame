
public abstract class Scene {

  public abstract void display();
  
  public abstract void click();
  
  public abstract void keyPress();
  
 }


public class Game extends Scene{
  
  GameManager manager;
  
  
  public Game(){
   manager = new GameManager(); 
  }
  
  public void display(){
    manager.updateGame();
  }
  
  public void click(){
    
  }
  
  //Control logic
  public void keyPress(){
    manager.handlePress();
  }
  
}

public class Help extends Scene{
  
  Button menuButton;
  
  public Help(){
    menuButton = new Button(width*7/16,height*2/3,5,height/15,null,"Main Menu");
  }
  
  public void display(){
     fill(255);
     stroke(255);
     textSize(75);
     text("The object of the game is to stay alive.\nMove your player from level to level to \navoid walls and click to \nuse your weapon against enemies.\n[W] - Jump Up\n[S] - Fall Down", width/2-600, height*.25);
     menuButton.display();
  }
  
  public void click(){
    if(menuButton.isHovered()){
     currentScene = new Menu();
    }
  }
  
    public void keyPress(){
    
  }
  
}

public class Menu extends Scene{
 
  Button startButton;
  Button helpButton;
  String title = "The Adventures of Big Boy";
  PFont font;
  PImage bigBoys[];
  PImage background;
  int animationIndex, delay;
  
  public Menu(){
    background = loadImage("menubackground.png");
    background.resize(width,height);
    bigBoys = new PImage[2];
    bigBoys[0] = loadImage("player1.png");
    bigBoys[1] = loadImage("player2.png");
    bigBoys[0].resize(500,500);
    bigBoys[1].resize(500,500);
    font = loadFont("BerlinSansFBDemi-Bold-100.vlw");
    textFont(font);
    startButton = new Button(width/2,height/2,3,height/20,null,"Start");
    helpButton = new Button(width/2,height/2+height/10,3,height/20,null,"Help");
    animationIndex=1;
  }
  
  void click() {
    if(startButton.isHovered()){
      currentScene = new Game();
    }
    if(helpButton.isHovered()){
      currentScene = new Help();
    }
  }
  
  public void display(){
     background(background);
     if(delay>=25){
      if(animationIndex==0){
        animationIndex=1;
      } else {
        animationIndex=0;
      }
      delay=0;
     } else {
      delay++;
     }
     image(bigBoys[animationIndex], width/2-500, height/2-250);
     fill(255);
     stroke(255);
     textSize(100);
     text("The Adventures of Big Boy", width/2-600, height*.25);
     startButton.display();
     helpButton.display();
  }
  
    public void keyPress(){
    
    }
  
}

/**
 Game over scene
 gives button to return to menu
*/
public class EndScene extends Scene {
 
  Button menuButton;
  
  public EndScene(){
    menuButton = new Button(width/3,height/3,5,height/15,null,"Main Menu");
  }
  
  public void display(){
      fill(255);
     stroke(255);
     textSize(100);
     text("GAME OVER.", width/2-400, height*.25);
     menuButton.display();
  }
  
  public void click(){
    if(menuButton.isHovered()){
     currentScene = new Menu(); 
    }
  }
  
  public void keyPress(){
     
  }
  
}
