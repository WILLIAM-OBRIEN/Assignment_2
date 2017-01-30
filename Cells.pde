class Cell
{
  int x, y;
  
  void outlineMe()
  {
    noFill();
    stroke(0,255,0);
    rect(x * cell, y * cell, cell, cell);
  }
  
  Cell(int _x, int _y)
  {
    x= _x;
    y= _y;
  }
}