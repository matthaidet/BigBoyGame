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
