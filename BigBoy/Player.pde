
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
  
  //Images and animations
  Animation_State state;
  PImage runningImgs[];
  PImage jumpingImg;
  PImage fallingImg;
  int animation_timer;
 
  private final int TILE_HEIGHT = height/10;
  public static final int START_LIFE = 3;
  public static final int PLAYER_X = 100;
  public static final int START_Y = 200;
  public static final int JUMP_VELOCITY = -10;
  public static final int ACCELERATION = 1;
  public final int FLOOR_2 = TILE_HEIGHT;
  public final int FLOOR_1 = TILE_HEIGHT*3;
  public final int FLOOR_0 = TILE_HEIGHT*6;
  
  private final PImage RUN_IMAGE = loadImage("player1.png");
  private final PImage JUMP_IMAGE = loadImage("playerjump.png");
  
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
   
   //Init animation system
   state = Animation_State.RUN;
  }
  
  public void display()
  {
    PImage person = RUN_IMAGE;
    
    switch(state){
      case RUN:
        person = RUN_IMAGE;
      break;
      
      case JUMP:
        person = JUMP_IMAGE;
      break;
      
      case FALL:
      
      break;
      
      case DEATH:
      
      break;
    }
    
    image(person, PLAYER_X, y, width/2-500, height/2-250);
  }
  
  public void jump()
  {
   if( notJump )
   {
     if( level < 2 )
     {
       level++;
     }
     state = Animation_State.JUMP;
     
     notJump = false;
     yVel = JUMP_VELOCITY;
     yAcc = ACCELERATION;
   }  
  }
  
  public void drop()
  {
    if( notJump && level != 0 )
    {
      state = Animation_State.FALL;
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
      if( yTemp >= FLOOR_0 )
      {
        yAcc = 0;
        yVel = 0;
        notJump = true;
        y = FLOOR_0;
      }
    } else if( level == 1 ) 
    {
      if( yTemp >= FLOOR_1 )
      {
        yAcc = 0;
        yVel = 0;
        notJump = true;
        y = FLOOR_1;
      }
    } else if( level == 2 )
    {
      if( yTemp >= FLOOR_2 )
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
  /**
  *Returns true if player is dead
  *Reduces health otherwise
  */
  public boolean onCollision()
  {
   if( life == 1 ){
     return true; 
   } else{
      life--;
      return false;
    }
  }
  
  public int getLevel()
  {
    return level;
  }
  
}
