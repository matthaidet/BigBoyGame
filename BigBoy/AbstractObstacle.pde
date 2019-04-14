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
  
  public static final int tileheight = 0;
  private final int TILE_HEIGHT = height/7;
  private final int FLOOR_2 = TILE_HEIGHT;
  private final int FLOOR_1 = TILE_HEIGHT*4 - 20;
  private final int FLOOR_0 = TILE_HEIGHT*6 - 20;
  public final int[] FLOOR_HEIGHTS = { FLOOR_0, FLOOR_1, FLOOR_2 };
  
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
  public void setX(int newX)
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
  public boolean checkCollision(int otherX)
  {
     return otherX >= getX();
  }
  
  @Override
  public void stepX()
  {
     setX(getX() + STEP_AMOUNT);
  }
  
  
}
