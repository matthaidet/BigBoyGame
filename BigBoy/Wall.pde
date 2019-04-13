<<<<<<< HEAD
public class Wall implements Obstacle extends AbstractObstacle
=======
public class Wall extends AbstractObstacle
>>>>>>> 4a76c3adc0f67491fcc88fac5f307efb3e0e35ae
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
