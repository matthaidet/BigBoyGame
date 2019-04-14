
enum Animation_State {
   RUN,
   JUMP,
   FALL,
   DEATH
}

public class Player{
  int life;
  int score;
  int x;
  int y;
  boolean notJump;
  int level;
  int yVel;
  int yAcc;
  
  Animation_State state;
 
  public static final int START_LIFE = 3;
  public static final int PLAYER_X = 50;
  public static final int START_Y = 100;
  public static final int JUMP_VELOCITY = 10;
  public static final int ACCELERATION = -1;
  public static final int FLOOR_2 = 300;
  public static final int FLOOR_1 = 200;
  public static final int FLOOR_0 = 100;
  
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
    switch(state){
      case RUN:
      
      break;
      
      case JUMP:
      
      break;
      
      case FALL:
      
      break;
      
      case DEATH:
      
      break;
    }
  }
  
  public void jump()
  {
   if( notJump )
   {
     if( level < 2 )
     {
       level++;
     }
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
      if( yTemp <= FLOOR_0 )
      {
        yAcc = 0;
        yVel = 0;
        notJump = true;
        y = FLOOR_0;
      }
    } else if( level == 1 ) 
    {
      if( yTemp <= FLOOR_1 )
      {
        yAcc = 0;
        yVel = 0;
        notJump = true;
        y = FLOOR_1;
      }
    } else if( level == 2 )
    {
      if( yTemp <= FLOOR_2 )
      {
        yAcc = 0;
        yVel = 0;
        notJump = true;
        y = FLOOR_2;
      }
    } else {
      y += yVel;
      yVel += yAcc;
    }
    
  }
  
}
