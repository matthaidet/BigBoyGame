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
  }
}
