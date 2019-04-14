public class LifeUp extends AbstractObstacle
{
  private final PImage pic = loadImage("topac.png");
  private int speed;
  /**
   * Constructs a new Wall object
   */
  public LifeUp(int level, int speed)
  {
    super(level);
    this.speed = speed;

  }
  
  public final int X_STEP = 20;

  public void stepX()
  {
    setX(getX() - X_STEP * speed);
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
