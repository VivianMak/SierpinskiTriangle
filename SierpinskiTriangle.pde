int lenMouse = 300;
public void setup()
{
  size(400,400);
  background(0);
}
public void draw()
{
  background(0);
  sierpinski(0,400,lenMouse);
}
public void mouseMoved()//optional
{
 lenMouse = mouseX;
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
    triangle(x,y, x+len,y, x+len/2,y-len);
  }else{
     sierpinski(x, y, len/2);
     sierpinski(x+len/2, y, len/2);
     sierpinski(x+len/4, y-len/2, len/2);
     //fill(((int)Math.random()*256),((int)Math.random()*256),((int)Math.random()*256));
     /*
     triangle(x,y, x+len,y, x+len/2,y-len);
     triangle(x+len,y, x+len*2,y, x+len+(len/2),y-len);
     triangle(x+len/2,y-len, x+len+(len/2),y-len, x+len,y-(len*2));
     //triangle(x,y, x+len/2,y, x+len/4,y-len/2);
     //System.out.println(x + "," + y + "," +len);
     sierpinski(x, y, len/2);
     sierpinski(x+len, y, len/2);
     sierpinski(x+len/2, y-len, len/2);
     */
     
   }
}
