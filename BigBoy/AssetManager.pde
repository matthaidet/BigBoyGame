/**
 Singleton for handling the creation of asset objects
 without needing to load them at every use;
*/

public class AssetManager{
 
  private PImage car, drill, plane;
  
  /**
    Load all assets here
  */
  private AssetManager(){
    car = loadImage("car.png");
    drill = loadImage("drill.png");
    plane = loadImage("plane.png");
  }
  
  public PImage getCar(){
    return car;
  }
  
  public PImage getDrill(){
    return drill;
  }
  
  public PImage getPlane(){
    return plane;
  }
  
}
