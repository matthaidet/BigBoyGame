

public class Player{
  int life;
  int score;
  int x;
  int y;
  boolean notJump;
  int level;
  int yVel;
  int yAcc;
  
  public static final int START_LIFE = 3;
  public static final int PLAYER_X = 50;
  public static final int START_Y = 100;
  public static final int JUMP_VELOCITY = 10;
  public static final int ACCELERATION = -1;
  public static final int FLOOR_3 = 300;
  public static final int FLOOR_2 = 200;
  public static final int FLOOR_1 = 100;
  
  public Player()
  {
   this.life = START_LIFE;
   this.score = 0;
   this.x = PLAYER_X;
   this.y = START_Y;
   this.notJump = true;
   this.level = 1;
   this.yVel = 0;
   this.yAcc = 0;
  }
  
  public void display()
  {
    
  }
  
  public void jump()
  {
   if( notJump )
   {
     notJump = false;
     yVel = JUMP_VELOCITY;
     yAcc = ACCELERATION;
   }  
  }
  
  public void drop()
  {
    if( notJump && level != 0 )
    {
      level--;
      yAcc = ACCELERATION;
      notJump = false;
    }
  }
  
  public void step()
  {
    int yTemp = y + yVel;
    if( level == 0 )
    {
      if( yTemp <= FLOOR_1 || yTemp >= FLOOR_2 )
      {
        yAcc = 0;
        notJump = true;
        y = FLOOR_1;
      }
    }
    
    y += yVel;
    yVel += yAcc;
    
  }
  
}
