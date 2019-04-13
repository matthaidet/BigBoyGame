
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
  
  public void display(){
    
  }
  
  public void click(){
    
  }
  
}

public class Menu extends Scene{
 
  Button startButton;
  Button helpButton;
  String title = "The Adventures of Big Boy";
  PFont font;
  
  public Menu(){
    startButton = new Button(width/2,height/2,width/25,height/20,null,"Start");
    helpButton = new Button(width/2,height/2+height/10,width/25,height/20,null,"Help");
    font = loadFont("BerlinSansFBDemi-Bold-100.vlw");
    textFont(font);
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
