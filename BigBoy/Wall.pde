/**
 * A Wall obstacle
 * Walls cannot be broken, the player must move to a different
 * level to avoid
 *
 * @author Jack M
 */
public class Wall extends AbstractObstacle
{

  public static final int X_STEP = 10;

  /**
   * Constructs a new Wall object
   */
  public Wall(int level)
  {
   super(level);


  }
  
  public void stepX()
  {


    setX(getX() - X_STEP);

  }
  
  public void display()
  { 


    if(getLevel() == 0)
    {
      image(assets.getDrill(), getX(), FLOOR_HEIGHTS[getLevel()], TILE_HEIGHT, TILE_HEIGHT);
    }
    else if(getLevel() == 1)
    {
      image(assets.getCar(), getX(), FLOOR_HEIGHTS[getLevel()], TILE_HEIGHT, TILE_HEIGHT);
    }
    else
    {
      image(assets.getPlane(), getX(), FLOOR_HEIGHTS[getLevel()], TILE_HEIGHT, TILE_HEIGHT);
    }
     
  }
  
  
}
