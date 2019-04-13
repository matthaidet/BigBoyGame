/**
 * An interface that outlines methods Obstacles must implement
 *
 * @author Jack M
 */
public interface Obstacle
{
  void display();
  void stepx();
  
  boolean checkCollision();
  
  int getLevel();
  int getX();
 
}
