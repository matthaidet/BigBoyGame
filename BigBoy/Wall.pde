/**
 * A Wall obstacle
 * Walls cannot be broken, the player must move to a different
 * level to avoid
 *
 * @author Jack M
 */
public class Wall extends AbstractObstacle
{
  /**
   * Constructs a new Wall object
   */
  public Wall(int level)
  {
    super(level);
  }
}
