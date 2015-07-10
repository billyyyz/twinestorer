int [] x=new int[20];
int temp;
int i;
int j;
int end;
void setup()
{
  size(800,500);
  i=0;
  j=1;
  end=0;
  for(int i=0;i<20;i++)
  {
    x[i]=int(random(100));
  }
  background(255,255,255);
    for (int k=0;k<20;k++)
    {
      fill(0,0,0);
      rect(70+k*30,400-x[k]*3,20,x[k]*3);
    }
}
void draw()
{
  if (end==0)
  {
    if (x[i]>x[j])
    {
      temp=x[i];
      x[i]=x[j];
      x[j]=temp;
      clear();
      background(255,255,255);
      for (int k=0;k<20;k++)
      {
        if((k!=i)&&(k!=j))
        {
           fill(0,0,0);
           rect(70+k*30,400-x[k]*3,20,x[k]*3);
        }
      }
        fill(255,0,0);
        rect(70+i*30,400-x[i]*3,20,x[i]*3);
        fill(255,0,0);
        rect(70+j*30,400-x[j]*3,20,x[j]*3);
      }
      delay(100);
      j++;
      if (i==18)
      {
        end=-1;
      }
      if ((j==20)&&(i<19))
      {
        i++;
        j=i+1;
      }
  }
}
  
