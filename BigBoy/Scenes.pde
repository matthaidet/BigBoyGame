
public abstract class Scene {

  public abstract void display();
  
 }


public class Game extends Scene{
  
  public void display(){
    
  }
  
}

public class Help extends Scene{
  
  public void display(){
    
  }
  
}

public class Menu extends Scene{
 
  Button startButton;
  Button helpButton;
  String title = "The Adventures of Big Boy";
  
  public Menu(){
    startButton = new Button(width/2,10,100,50,null,"Start");
    helpButton = new Button(width/2,200,100,50,null,"Help");
  }
  
  void mouseClicked() {
    if(startButton.isHovered()){
      currentScene = new Game();
    }
    if(helpButton.isHovered()){
      currentScene = new Help();
    }
  }
  
  public void display(){
     text("The Adventures of Big Boy", width/2, height*.25);
  }
  
  
}

public class EndScene extends Scene {
 
  public void display(){
    
  }
  
}
