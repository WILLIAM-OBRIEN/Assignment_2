static float cell=1200/20;

Cell[][] Grid = new Cell[20][13];
void setup() 
{
  size(1200,1000);
  
  //grid
  for(int x=0;x<Grid.length;x++)
  {
    for(int y=0;y<Grid[0].length;y++)
    {
      Grid[x][y]=new Cell(x,y);
    }
  }
}
void draw()
{
  fill(0,0,255);
  noStroke();
  rect(0,0,width,height);
  mouseCheck();
}

void mouseCheck()
{
  int x =  (int)(mouseX/ cell);
  int y = (int)(mouseY/ cell);
  
  if( x<Grid.length && y<Grid[0].length)
  {
    Grid[x][y].outlineMe();
    println("W="+x + "H="+y);
  }
}

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