/**
 * A Wall obstacle
 * Walls cannot be broken, the player must move to a different
 * level to avoid
 *
 * @author Jack M
 */
public class Wall extends AbstractObstacle
{
  
  PImage w;
  int x;
  public static final int X_STEP = 10;
  
  
  /**
   * Constructs a new Wall object
   */
  public Wall(int level)
  {
   super(level);
   this.x = width; 
    w = loadImage("car.png");
  }
  
  public void stepX()
  {
    x -= X_STEP;
  }
  
  public void display()
  { 
     image(w, x, FLOOR_HEIGHTS[getLevel()], 100, 100);
  }
  
  
}
