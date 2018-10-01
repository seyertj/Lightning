int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
int c = (int)(Math.random()*256);
void setup()
{
	size(300,300);
	strokeWeight(5);
	background(0);
}
void draw()
{
	while(endX < 300)
	{
		endX = startX + (int)(Math.random()*10);
		endY = startY + (int)((Math.random()*20)-10);
		lightning();
		startX = endX;
		startY = endY;	
	}
}
void lightning()
{
	stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
	line(startX,startY,endX,endY);
}
void mousePressed()
{
startX = 0;
startY = 150;
endX = 0;
endY = 150;
}