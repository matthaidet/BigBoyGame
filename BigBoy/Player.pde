public class Player{
  int life;
  int score;
  int x;
  int y;
  boolean notJump;
  
  public static final int START_LIFE = 3;
  public static final int PLAYER_X = 50;
  public static final int JUMP_TIME = 100;
  
  public Player()
  {
   this.life = START_LIFE;
   this.score = 0;
   this.x = PLAYER_X;
   this.y = 0;
   this.notJump = true;
  }
  
  public void jump()
  {
   if( y <= 3 && notJump )
   {
     y++;
     notJump = false;
     try {
       wait(JUMP_TIME);
     } catch(Exception e){
       //Do nothing
     }
   }
    
    
  }
  
}
