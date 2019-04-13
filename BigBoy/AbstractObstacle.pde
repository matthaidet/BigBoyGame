/**
 * An abstract class that contains common behavior of all Obstacles
 *
 * @author Jack M
 */
public abstract class AbstractObstacle implements Obstacle
{
  private int x;
  private int level;
  
  /**
   * Constructs a new AbstractObstacle object
   *
   * @param Level for the Obstacle to be drawn on
   */
  public AbstractObstacle(int level)
  {
    this.level = level;
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
  
  
}
