

public class BackgroundDrawer{

  private final int TILE_HEIGHT = height/10;
  
  private class TileRoll{
    
    private final int TILE_SIZE = 100;
   
    float tiles[];
    PImage tile;
    float y;
    int size;
    
    public TileRoll(PImage img, int y){
      size = 21;
      tile = img;
      tile.resize(100,110);
      tiles = new float[size];
      this.y = y;
      for(int i = 0; i < size; i++){
       tiles[i] = i*TILE_SIZE;
      }
    }
    
    public void display(){
      for(int i = 0; i < size; i++){
       tiles[i]-=1.5;
       if(tiles[i]+TILE_SIZE <= 0){
         tiles[i] = width;
       }
       image(tile, tiles[i], y);
      }
    }
    
  }
  
  TileRoll layers[];
  
  public BackgroundDrawer(){ 
   layers = new TileRoll[10];
   layers[0] = new TileRoll(loadImage("dirtbottom.png"), TILE_HEIGHT*9);
   layers[1] = new TileRoll(loadImage("dirt.png"), TILE_HEIGHT*8);
   layers[2] = new TileRoll(loadImage("dirt.png"), TILE_HEIGHT*7);
   layers[3] = new TileRoll(loadImage("toplayer.png"), TILE_HEIGHT*6);
   layers[4] = new TileRoll(loadImage("skybot.png"), TILE_HEIGHT*5);
   layers[5] = new TileRoll(loadImage("skybot.png"), TILE_HEIGHT*4);
   layers[6] = new TileRoll(loadImage("skyfloor.png"), TILE_HEIGHT*3);
   layers[7] = new TileRoll(loadImage("skytop.png"), TILE_HEIGHT*2);
   layers[8] = new TileRoll(loadImage("skytop.png"), TILE_HEIGHT);
   layers[9] = new TileRoll(loadImage("skytop.png"), 0);
  }
  
  public void display(){
    for(int i = 0;  i < 10; i++){
      layers[i].display();
    }
  }
  
  
}
