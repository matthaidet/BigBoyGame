
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
  boolean notFall;
  int level;
  int yVel;
  double yAcc;
  
  //Images and animations
  Animation_State state;
  PImage runningImgs[];
  PImage jumpingImg;
  PImage fallingImg;
  int animation_timer;
 
  private final int TILE_HEIGHT = height/10;
  public static final int START_LIFE = 3;
  public static final int PLAYER_X = 100;
  public static final int JUMP_VELOCITY = -30;
  public static final double ACCELERATION = 1;
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
   this.y = FLOOR_1;
   this.notJump = true;
   this.level = 1;
   this.yVel = 0;
   this.yAcc = 0;
   this.notFall = true;
   
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
    
    image(person, PLAYER_X, y, TILE_HEIGHT, TILE_HEIGHT);
  }
  
  public void jump()
  {
   if( notJump && notFall && level < 2)
   {
     level++;
     state = Animation_State.JUMP;
     
     notJump = false;
     yVel = JUMP_VELOCITY;
     yAcc = ACCELERATION;
   }  
  }
  
  public void drop()
  {
    if( notJump && notFall && level != 0 )
    {
      
      state = Animation_State.FALL;
      level--;
      yVel = -JUMP_VELOCITY;
      yAcc = ACCELERATION;
      notFall = false;
    }
  }
  
  
  private void fall(){
    y += yVel;
    yVel += yAcc; 
  }
  
  public void step()
  {
    int yTemp = y + yVel;
    //CODE FOR JUMPING
    if( notJump == false )
    { 
      if( level == 0 )
      {
        if( yTemp < FLOOR_0  )
        {
          yAcc = 0;
          yVel = 0;
          notJump = true;
          y = FLOOR_0;
        } else {
          fall();
        }
      } else if( level == 1 ) 
      {
        if( yTemp < FLOOR_1 )
        {
          yAcc = 0;
          yVel = 0;
          notJump = true;
          y = FLOOR_1;
        } else {
          fall();
        }
      } else if( level == 2 )
      {
        if( yTemp < FLOOR_2 )
        {
          yAcc = 0;
          yVel = 0;
          notJump = true;
          y = FLOOR_2;
        } else {
          fall();
        }
      }
    }
    
    
    //CODE FOR FALLING
    if( notFall == false )
    {
      if( level == 0 )
      {
        if( yTemp > FLOOR_0  )
        {
          yAcc = 0;
          yVel = 0;
          notFall = true;
          y = FLOOR_0;
        } else {
          fall();
        }
      } else if( level == 1 ) 
      {
        if( yTemp > FLOOR_1 )
        {
          yAcc = 0;
          yVel = 0;
          notFall = true;
          y = FLOOR_1;
        } else {
          fall();
        }
      } else if( level == 2 )
        {
        if( yTemp > FLOOR_2 )
        {
          yAcc = 0;
          yVel = 0;
          notFall = true;
          y = FLOOR_2;
        } else {
          fall();
        }
      } 
    } 
  }
  /**
  *Returns true if player is dead
  *Reduces health otherwise
  */
  public boolean onCollision()
  {
   if( life == 1 ){
     //return true; 
   } else{
      life--;
      
    }
    return false;
  }
  
  public int getLevel()
  {
    return level;
  }
  
}
