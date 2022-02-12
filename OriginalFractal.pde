public void setup()
{
  size(500,500);
  rectMode(CENTER);
}

public void draw()
{
  background(255);
  myFractal(250,250,240,480,150,150);
}

public void myFractal(int x, int y, float sizL, float sizW, int r, int g)
{
  noStroke();
  //stroke(255);
  ellipse(x,y-sizL,sizL,sizW);
  ellipse(x,y+sizL,sizL,sizW);
  ellipse(x-sizW/2,y,sizW,sizL);
  ellipse(x+sizW/2,y,sizW,sizL);
  
 fill(r,g,205,85);
  
  ellipse(x-x,y-y,sizW,sizW);
  ellipse(x+x,y-y,sizW,sizW);
  ellipse(x-x,y+y,sizW,sizW);
  ellipse(x+x,y+y,sizW,sizW);
  
  fill(r,g,255,85);
  
  if(sizL > 10)
  {
   myFractal(x,y,sizL/1.2,sizW/1.2,r+10,g+20);
  }
}

