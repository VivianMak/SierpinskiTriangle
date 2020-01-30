public void setup()
{
	size(1000,750);
	fill((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);

}
public void draw()
{
	background(0);
	sierpinski(0,height,mouseX*3);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	double posX;
	posX=mouseX;
	if(posX>=mouseX*0.75)
	{
		posX=mouseX*0.74;
	}
	if((double)len<=((double)width*(0.75)-posX))
	{
		triangle( x,y, x+len/2,y , x+len/4,y-len/2 );
	}
	else
	{
		sierpinski(x,y,len/2);
		sierpinski(x+len/4,y,len/2);
		sierpinski(x+len/8,y-len/4,len/2);
	}
}