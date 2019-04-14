public class LifeUp extends AbstractObstacle
{
  
  int x;
  
  /**
   * Constructs a new Wall object
   */
  public LifeUp(int level)
  {
   super(level);
   this.x = width; 
  }
  
  public static final int X_STEP = 10;

  public void stepX()
  {
    x -= X_STEP;
  }
  
  public void display()
  {
      
  }
}
