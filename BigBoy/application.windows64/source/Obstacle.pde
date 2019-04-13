/**
 * An interface that outlines methods Obstacles must implement
 *
 * @author Jack M
 */
public interface Obstacle
{
  /**
   * Draws the obstacle on the canvas
   */
  void display();
  
  /**
   * Moves the object along the screen toward the player
   */
  void stepX();
  
  /**
   * Checks whether or not the Obstacle has collided with another Obstacle
   * The method will return true if the object has collided with the specified
   * object, o.
   *
   * @param o Obstacle to check collision on
   * @return True if a collision has occured, false otherwise
   */
  boolean checkCollision(int x);
  
  /**
   * Returns the level the Obstacle is on
   *
   * @return The level the Obstacle is on
   */
  int getLevel();
  
  /**
   * Returns the X location of the Obstacle
   *
   * @return The X location of the Obstacle
   */
  int getX();
}
