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
  
  private final PImage car = loadImage("car.png");
  private final PImage drill = loadImage("drill.png");
  private final PImage plane = loadImage("plane.png");
  
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
      image(drill, getX(), FLOOR_HEIGHTS[getLevel()], 100, 100);
    }
    else if(getLevel() == 1)
    {
      image(car, getX(), FLOOR_HEIGHTS[getLevel()], 100, 100);
    }
    else
    {
      // Place holder for airplane
      image(plane, getX(), FLOOR_HEIGHTS[getLevel()], 100, 100);
    }
     
  }
  
  
}
