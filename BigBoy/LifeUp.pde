public class LifeUp extends AbstractObstacle
{
  private final PImage pic = loadImage("topac.png");
  
  /**
   * Constructs a new Wall object
   */
  public LifeUp(int level)
  {
   super(level);
  }
  
  public static final int X_STEP = 20;

  public void stepX()
  {
    setX(getX() - X_STEP);
  }
  
  public void display()
  {
        if(getLevel() == 0)
    {
      image(pic, getX(), FLOOR_HEIGHTS[getLevel()], 100, 100);
    }
    else if(getLevel() == 1)
    {
      image(pic, getX(), FLOOR_HEIGHTS[getLevel()], 100, 100);
    }
    else
    {
      // Place holder for airplane
      image(pic, getX(), FLOOR_HEIGHTS[getLevel()], 100, 100);
    }
  }
}
