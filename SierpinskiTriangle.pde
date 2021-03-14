public void setup()
{
  size(640, 640);
  fill(255, 255, 255);
  //stroke(255, 255, 255);
  noStroke();
}
public void draw()
{
  background(0, 0, 0);
  //triangle(0, 0, width, 0, width/2, (float)(Math.sqrt(3)/2)*width);
  sierpinski(0, 0, width);
}
public void mouseDragged()//optional
{
}
public void sierpinski(int x, int y, int len) 
{
  if (len<=width/256) {
    triangle(x, y, x+len, y, x+len/2, y+(float)(Math.sqrt(3)/2)*len);
  }
  if (len >= 5) {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y+(int)((Math.sqrt(3)/2)*(len/2)), len/2);
  }
}
