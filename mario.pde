PImage pic;
color[] c=new color [225*225];
int x;
int y;
float r;
void setup()
{
  pic=loadImage("mario.jpg");
  size(225,275);
  image(pic,0,0);
  for (int i=0;i<225;i++)
  {
    for (int j=0;j<225;j++)
    {
      c[225*j+i]=get(i,j);
    }
  }
  clear();
  background(255,255,255);
  noStroke();
  smooth();
  r=5;
  fill(0,0,0);
  rect(0,265,30,10);
}
void draw()
{
  loadPixels();
  x=int(random(225));
  y=int(random(225));
  fill(c[225*y+x]);
  ellipse(x,y,r,r);
}  
void mouseDragged()
{
  {
    fill(255,255,255);
    rect(0,265,255,10);
    fill(0,0,0);
    if (mouseX<0)
    {
      r=3;
      rect(0,265,30,10);
    }
    else if (mouseX>195)
    {
      r=22;
      rect(195,265,30,10);
    }
    else 
    {
      r=mouseX*0.1+3;
      rect(mouseX,265,30,10);
    }
  }
}
