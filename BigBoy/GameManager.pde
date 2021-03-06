/**
 * Controls the "backend" of the game
 * Will control the player instance, list of obstacles,
 * collision detection, and end conditions.
 * Most methods will be called by the main method
 *
 * @author Jack M
 */
public class GameManager
{
  private static final int ARRAY_CAPACITY = 15;
  private static final int NUM_LEVELS = 3;
  private static final int PLAYER_X = 175;
  private static final int SPAWN_CHANCE = 1000;
  
  private Player p;
  private BackgroundDrawer backgroundDrawer;
  
  private int score;
  
  ArrayList<Obstacle>[] obstacles;
  private int gameSpeed;
  /*
  private ArrayList<Obstacle> level0;
  private ArrayList<Obstacle> level1;
  private ArrayList<Obstacle> level2;
  */
  
  /**
   * Constructs a new GameManager object
   *
   * (Potentially singleton)
   */
  public GameManager(int diff)
  {
    gameSpeed = diff;
     p = new Player();
     backgroundDrawer = new BackgroundDrawer();
     
     score = 0;
     
     obstacles = new ArrayList[NUM_LEVELS];
     
     obstacles[0] = new ArrayList<Obstacle>(ARRAY_CAPACITY);
     obstacles[1] = new ArrayList<Obstacle>(ARRAY_CAPACITY);
     obstacles[2] = new ArrayList<Obstacle>(ARRAY_CAPACITY);
  }
  

  
  //Master updater loop for the game
  public void updateGame(){
    //Moves the player
    p.step();
    drawAll();
    //Step all the objects
    
    //Limit the number of times this runs for performance
    if(frameCount % 2 == 0) {
    for(int i = 0; i < NUM_LEVELS; i++) //
    {
      for(int j = 0; j < obstacles[i].size(); j++)
      {
        Obstacle o = obstacles[i].get(j);
        if( o != null )
        {
          //Check if objects are off screen and remove them
           if( o.getX() < -50 ){
              obstacles[i].remove(o);
              score += 10;

           }
           //Check for collisions
           if( o.checkCollision(PLAYER_X) && p.getLevel() == o.getLevel() ){
             if( p.onCollision(o) ){
               currentScene = new EndScene();
            } else{
              obstacles[i].remove(o);
              
            }

          }
          //Step each object
          o.stepX();
        }
      }
    }
    
    //Generate new Objects
    int chance = (int)random(0, SPAWN_CHANCE);
    if( gameSpeed == 1 )
    {
      if( chance < 25 )
      {
        generateObstacle();
      }
      else if ( chance > 999 )
      {
        generatePowerUp();
      }
    }
    else if( gameSpeed == 3 )
    {
      if( chance < 75 )
      {
        generateObstacle();
      }
      else if ( chance > 998 )
      {
        generatePowerUp();
      }
    }
    else if( gameSpeed == 5 )
    {
     if( chance < 125 )
      {
        generateObstacle();
      }
      else if ( chance > 995 )
      {
        generatePowerUp();
      } 
    }
    }
    
  }
  
  
  /**
   * Draws all the entities on screen
   */
  public void drawAll()
  {
    backgroundDrawer.display();
    //p.setState(Animation_State.RUN);
    p.display();
  
    for(int i = 0; i < NUM_LEVELS; i++)
    {
       for(int j = 0; j < obstacles[i].size(); j++)
       {
         Obstacle o = obstacles[i].get(j);
          o.display(); 
       }
    }
    
    text("Score: " + score, 15, 90);
  }
  
  private void generateObstacle()
  {
    //randomSeed(6255);
    int destLvl = (int)random(0, 3); 
    
    Obstacle o;
    if(true) // Place holder for randomly generating different types of objects. For now we only have Wall
    {
      o = new Wall(destLvl, gameSpeed);
    }
      
    obstacles[destLvl].add(o);  
  }
  
  private void generatePowerUp()
  {
    int destLvl = (int)random(0, 3);
    
    Obstacle o;
    if(true) // Place holder for other powerups
    {
       o = new LifeUp(destLvl, gameSpeed); 
    }
    
    obstacles[destLvl].add(o);
  }
  
  //Handles control logic of the game
  public void handlePress(){
    switch(key){
     case 'w':
       p.jump();
     break;
     
     case 's':
       p.drop();
     break;
    }
  }
  
  public int getGameSpeed()
{
   return gameSpeed; 
}

public void setGameSpeed( int speed )
{
   this.gameSpeed = speed;
}
  
}
