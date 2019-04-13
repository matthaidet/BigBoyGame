
public class Button{
 
  int x, y, w, h;
  String text;
  PImage img;
  
  public Button(int x, int y,int w, int h, PImage image, String text){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.text = text;
    this.img = image;
  }
  
  /**
    Uses the current mouse position to check if the button has been clicked
  */
  public boolean isHovered(){
    return mouseX < x + width && mouseX > x && mouseY > y && mouseY < y + height;
  }
  
  public void display(){
    
    if(isHovered()){
      stroke(255,0,0);
    } else {
      stroke(200, 0, 0); 
    }
    
    rect(x,y,w,h);
    
  }
  
}
