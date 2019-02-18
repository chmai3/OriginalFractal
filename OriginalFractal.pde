public void setup()
{
  size(700,700);
  
}
public void draw()
{
  background(255);
  myFractal(350,350,400);
}
public void myFractal( int x, int y, int siz){
  stroke(255, 255, 255, 50);
  fill((int)(Math.random()*255));
  triangle(x, y, x + siz/2, y - siz, x + siz, y);
  if(siz > 20)
  {
  
    myFractal(x - siz/2, y, siz/2);
    myFractal(x, y - siz, siz/2);
    myFractal(x - siz/4, y + siz/2, siz/2);
     myFractal(x + siz, y, siz/2);
    myFractal(x + siz/2, y - siz, siz/2);
    myFractal(x + (4*siz)/5, y + siz/2, siz/2);
  }
}
