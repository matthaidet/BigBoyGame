import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class BigBoy extends PApplet {

/**
  Big Boy game
  Property of the Big boy squad.
  2019
*/

PImage image;
Scene currentScene;

public void setup(){
  background(0);
  
  //fullScreen();
  currentScene = new Menu();
}

// Main game loop
public void draw(){
 background(0);
 currentScene.display();
}

public void mouseClicked(){
 currentScene.click(); 
}
/**
 * An abstract class that contains common behavior of all Obstacles
 *
 * @author Jack M
 */
public abstract class AbstractObstacle implements Obstacle
{
  private int x;
  private int level;
  
  private final int START_X = width + 50;
  private static final int STEP_AMOUNT = 10;
  
  /**
   * Constructs a new AbstractObstacle object
   *
   * @param Level for the Obstacle to be drawn on
   */
  public AbstractObstacle(int level)
  {
    this.level = level;
    this.x = START_X;
  }
  
  /**
   * Sets the new value of the Obstacle's X position
   *
   * @param newX The new value of the X position
   */
  private void setX(int newX)
  {
     this.x = newX; 
  }
  
  @Override
  public int getX()
  {
     return x; 
  }
  
  @Override
  public int getLevel()
  {
     return level; 
  }
  
  @Override
  public void display()
  {
     //TODO: Finish later 
  }
  
  @Override
  public boolean checkCollision(int otherX)
  {
     return otherX <= getX();
  }
  
  @Override
  public void stepX()
  {
     setX(getX() + STEP_AMOUNT);
  }
  
  
}

public class GameManager{
  
  
}
/**
 * An interface that outlines methods Obstacles must implement
 *
 * @author Jack M
 */
public interface Obstacle
{
  /**
   * Draws the obstacle on the canvas
   */
  public void display();
  
  /**
   * Moves the object along the screen toward the player
   */
  public void stepX();
  
  /**
   * Checks whether or not the Obstacle has collided with another Obstacle
   * The method will return true if the object has collided with the specified
   * object, o.
   *
   * @param o Obstacle to check collision on
   * @return True if a collision has occured, false otherwise
   */
  public boolean checkCollision(int x);
  
  /**
   * Returns the level the Obstacle is on
   *
   * @return The level the Obstacle is on
   */
  public int getLevel();
  
  /**
   * Returns the X location of the Obstacle
   *
   * @return The X location of the Obstacle
   */
  public int getX();
}
public class Player{
  int life;
  int score;
  int x;
  int y;
  boolean notJump;
  
  public static final int START_LIFE = 3;
  public static final int PLAYER_X = 50;
  public static final int JUMP_TIME = 100;
  
  public Player()
  {
   this.life = START_LIFE;
   this.score = 0;
   this.x = PLAYER_X;
   this.y = 0;
   this.notJump = true;
  }
  
  public void jump()
  {
   if( y <= 3 && notJump )
   {
     y++;
     notJump = false;
     try {
       wait(JUMP_TIME);
     } catch(Exception e){
       //Do nothing
     }
   }
    
    
  }
  
}

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
    startButton = new Button(width/2,height/2,width/20,height/20,null,"Start");
    helpButton = new Button(width/2,height/2+height/10,width/20,height/20,null,"Help");
    font = loadFont("BerlinSansFBDemi-Bold-100.vlw");
    textFont(font);
  }
  
  public void click() {
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
     text("The Adventures of Big Boy", width/2-600, height*.25f);
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

public class Button{
 
  int x, y, w, h;
  String text;
  PImage img;
  
  public Button(int x, int y,int w, int h, PImage image, String text){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.text = text;
    this.img = image;
  }
  
  /**
    Uses the current mouse position to check if the button has been clicked
  */
  public boolean isHovered(){
    return mouseX < x + w && mouseX > x && mouseY > y && mouseY < y + h;
  }
  
  public void display(){
    
    if(isHovered()){
      stroke(255,20,0);
      fill(200,20,0);
    } else {
      stroke(150, 100, 0);
      fill(100,100,0);
    }
    
    textSize(50);
    text(text,x+50,y+50);
    rect(x,y,w,h);
    
  }
  
}
/**
 * A Wall obstacle
 * Walls cannot be broken, the player must move to a different
 * level to avoid
 *
 * @author Jack M
 */
public class Wall extends AbstractObstacle
{
  
  int x;
  
  /**
   * Constructs a new Wall object
   */
  public Wall(int level)
  {
   super(level);
   this.x = width; 
  }
  
  public static final int X_STEP = 10;

  public void stepX()
  {
    x -= X_STEP;
  }
}
  public void settings() {  size(1920, 1080); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#030202", "--hide-stop", "BigBoy" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
