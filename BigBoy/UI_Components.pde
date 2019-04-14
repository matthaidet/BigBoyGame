
public class Button{
 
  int x, y, w, h;
  String text;
  PImage img;
  int padding, textSize;
  
  public Button(int x, int y,int w, int h, PImage image, String text){
    this.x = x;
    this.y = y;
    this.h = h;
    this.text = text;
    this.img = image;
    this.textSize = (int) textWidth(text);
    this.w = (int) ((w * textSize)*.25);
    this.padding = (int)(this.w*.125);
  }
  
  /**
    Uses the current mouse position to check if the button has been clicked
  */
  public boolean isHovered(){
    return mouseX < x + w && mouseX > x && mouseY > y && mouseY < y + h;
  }
  
  public void display(){
    
    if(isHovered()){
      stroke(255,20,0);
      fill(200,20,0);
    } else {
      stroke(150, 100, 0);
      fill(100,100,0);
    }
    
    rect(x,y,w,h);
    
    textSize(50);
    stroke(0);
    fill(0);
    text(text,x+padding,y+50);
    
  }
  
}
