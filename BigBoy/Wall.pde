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
  public static final int X_STEP = 10;
  
  
  /**
   * Constructs a new Wall object
   */
  public Wall(int level)
  {
   super(level);
   super.x = width; 
    w = loadImage("car.png");
  }
  
  public void stepX()
  {
    super.x -= X_STEP;
  }
  
  public void display()
  { 
     image(w, super.x, FLOOR_HEIGHTS[getLevel()], 100, 100);
  }
  
  
}
