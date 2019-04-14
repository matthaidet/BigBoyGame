

public class BackgroundDrawer{

  private class TileRoll{
    
    //Actual tile size -1 to fix black line issues
    private final int TILE_SIZE = 200;

    float tiles[];
    PImage tile;
    float y;
    int size;
    
    public TileRoll(PImage img, int y){
      size = ceil(width/TILE_SIZE)+2;
      tile = img;
      tile.resize(TILE_SIZE+10,height);
      tiles = new float[size];
      this.y = y;
      for(int i = 0; i < size; i++){
       tiles[i] = i*(TILE_SIZE-5);
      }
    }
    
    public void display(){
      for(int i = 0; i < size; i++){
       tiles[i]-=3;
       if(tiles[i]+TILE_SIZE <= 0){
         tiles[i] = width;
       }
       image(tile, tiles[i], y);
      }
    }
    
  }
  
  TileRoll layer;
  
  public BackgroundDrawer(){ 
   layer = new TileRoll(loadImage("column.png"), 0);
  }
  
  public void display(){
      layer.display();
  }
  
  
}
