

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
  public static final int JUMP_ACCELERATION = 1;
  
  public Player()
  {
   this.life = START_LIFE;
   this.score = 0;
   this.x = PLAYER_X;
   this.y = START_Y;
   this.notJump = true;
   this.level = 1;
   this.yVel = 0;
   this.yacc = 0;
  }
  
  public void jump()
  {
   if( notJump )
   {
     yVel = JUMP_VELOCITY;
     yAcc = JUMP_ACCELERATION;
   }
    
    
  }
  
}
