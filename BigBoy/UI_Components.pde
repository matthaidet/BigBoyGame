
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
    return mouseX < x + width && mouseX > x && mouseY > y && mouseY < y + h;
  }
  
  public void display(){
    
    if(isHovered()){
      stroke(255,20,0);
      fill(200,20,0);
    } else {
      stroke(150, 100, 0);
      fill(100,100,0);
    }
    textSize(50);
    text(text,x,y);
    rect(x,y,w,h);
    
  }
  
}
