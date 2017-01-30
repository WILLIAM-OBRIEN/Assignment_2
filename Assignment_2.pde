float cell=1000/20;

Cell[][] Grid = new Cell[20][13];
void setup() 
{
  size(1000,1200);
  
  //grid
  for(int x=0;x<Grid.length;x++)
  {
    for(int y=0;y<Grid[0].length;y++)
    {
      Grid[x][y]=new Cell(x, y);
    }
  }
}
void draw()
{
}
void mouseCheck()
{}
class Cell
{
  int x, y;
  
  void outlineME()
  {
    noFill();
    stroke(0,255,0);
    rect(x + cell, y + cell, cell, cell);
  }
  
  Cell(int _x, int _y)
  {
    x= _x;
    y= _y;
  }
}