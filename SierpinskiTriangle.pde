public void settings() {
  size(400, 400);
}

public void setup()
{
}

public void draw()
{
//  sierpinski(0, 0, 400, 20);
int x;
  if(mousePressed && (mouseButton == LEFT))
  {
    x = 20;
    sierpinski(0, 0, 400, x+10);
 }
   if(mousePressed && (mouseButton == RIGHT))
  {
    x = 20;
    sierpinski(0, 0, 400, x-10);
  }
}

public void sierpinski(int x, int y, int len, int base) 
{
  if (len <= base)
  {
    triangle(x, y, x + len/2, y + len, x + len, y);
  } else
  {
    sierpinski(x,y, len/2, base);
    sierpinski(x + len/2, y, len/2, base);
    sierpinski(x + len/4, y + len/2, len/2, base);
  }
}
