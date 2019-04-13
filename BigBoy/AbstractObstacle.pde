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
