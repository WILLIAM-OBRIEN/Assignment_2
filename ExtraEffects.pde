void drawFlower(float x, float y)
{
  pushMatrix();
  strokeWeight(10);
  
  stroke(#FF69B4);  
  
  translate(x,y);
  for(int i=0;i<10;i++)
  {
    rotate(TWO_PI/10);
    line(0,0,30,0);
  }
  
  noStroke();
  //fill(randomColor());
  fill(255,255,0);
  ellipse(0,0,25,25);
  popMatrix();
}