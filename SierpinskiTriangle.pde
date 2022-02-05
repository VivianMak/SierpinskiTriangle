int lenMouse = 300;
int fColor;
public void setup()
{
  size(400,400);
  background(0);
}
public void draw()
{
  fill(fColor);
  background(0);
  sierpinski(0,400,lenMouse);
}
public void mouseMoved()//optional
{
  lenMouse = mouseX;
  if(mouseX < 66)
   fColor = color(194, 44, 33);
  else if(mouseX < 132)
   fColor = color(224, 169, 18);
  else if(mouseX < 198)
    fColor = color(224, 214, 18);
  else if(mouseX < 264)
    fColor = color(33, 222, 52);
  else if(mouseX < 330)
    fColor = color(33, 128, 222);
  else if(mouseX < 390)
    fColor = color(112, 33, 222);
  else 
    fColor = color(255);
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
    triangle(x,y, x+len,y, x+len/2,y-len);
  }else{
     sierpinski(x, y, len/2);
     sierpinski(x+len/2, y, len/2);
     sierpinski(x+len/4, y-len/2, len/2);    
   }
}
