/**
 * A Wall obstacle
 * Walls cannot be broken, the player must move to a different
 * level to avoid
 *
 * @author Jack M
 */
public class Wall extends AbstractObstacle
{
<<<<<<< HEAD
  
  PImage w;
=======
>>>>>>> 8dd2fb37b89d287916fc463e2e26a49bfc1c71ec
  public static final int X_STEP = 10;
  
  private final PImage car = loadImage("car.png");
  private final PImage drill = loadImage("drill.png");
  
  /**
   * Constructs a new Wall object
   */
  public Wall(int level)
  {
   super(level);
<<<<<<< HEAD
   super.x = width; 
    w = loadImage("car.png");
=======
>>>>>>> 8dd2fb37b89d287916fc463e2e26a49bfc1c71ec
  }
  
  public void stepX()
  {
<<<<<<< HEAD
    super.x -= X_STEP;
=======
    setX(getX() - X_STEP);
>>>>>>> 8dd2fb37b89d287916fc463e2e26a49bfc1c71ec
  }
  
  public void display()
  { 
<<<<<<< HEAD
     image(w, super.x, FLOOR_HEIGHTS[getLevel()], 100, 100);
=======
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
      image(car, getX(), FLOOR_HEIGHTS[getLevel()], 100, 100);
    }
     
>>>>>>> 8dd2fb37b89d287916fc463e2e26a49bfc1c71ec
  }
  
  
}
