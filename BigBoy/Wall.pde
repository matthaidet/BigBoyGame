<<<<<<< HEAD
/**
 * A Wall obstacle
 * Walls cannot be broken, the player must move to a different
 * level to avoid
 *
 * @author Jack M
 */
public class Wall extends AbstractObstacle
{
  /**
   * Constructs a new Wall object
   */
  public Wall(int level)
  {
    super(level);
=======
public class Wall implements Obstacle extends AbstractObstacle
{
  int x;
  
  public static final int X_STEP = 10;
  
  public Wall()
  {
   this.x = width; 
  }
  
  public boolean stepX()
  {
    x -= X_STEP;
    if ( x < 0 ){
      return true;
    }
    return false;
>>>>>>> 2ae015740909c4a5bd2d7667f58ec4f02901852d
  }
}
