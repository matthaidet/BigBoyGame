
public abstract class Scene {

  public abstract void display();
  
  public abstract void click();
  
 }


public class Game extends Scene{
  
  public void display(){
    
  }
  
  public void click(){
    
  }
  
}

public class Help extends Scene{
  
  Button menuButton;
  
  public Help(){
    menuButton = new Button(width/2,height-100,5,height/15,null,"Main Menu");
  }
  
  public void display(){
     fill(255);
     stroke(255);
     textSize(75);
     text("The object of the game is to stay alive.\nMove your player from level to level to \navoid walls and click to \nuse your weapon against enemies.", width/2-600, height*.25);
     menuButton.display();
  }
  
  public void click(){
    if(menuButton.isHovered()){
     currentScene = new Menu(); 
    }
  }
  
}

public class Menu extends Scene{
 
  Button startButton;
  Button helpButton;
  String title = "The Adventures of Big Boy";
  PFont font;
  
  public Menu(){
    font = loadFont("BerlinSansFBDemi-Bold-100.vlw");
    textFont(font);
    startButton = new Button(width/2,height/2,10,height/20,null,"Start");
    helpButton = new Button(width/2,height/2+height/10,10,height/20,null,"Help");
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
     fill(255);
     stroke(255);
     textSize(100);
     text("The Adventures of Big Boy", width/2-600, height*.25);
     startButton.display();
     helpButton.display();
  }
  
  
}

public class EndScene extends Scene {
 
  public void display(){
    
  }
  
  public void click(){
    
  }
  
}
