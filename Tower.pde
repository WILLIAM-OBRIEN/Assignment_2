class Tower
{
  int cellX;
  int cellY;
  
  int spriteIndex;
  int tint;
  
  void drawMe()
  {
    shape(Towers[1],cellX*cell,cellY*cell);
  }
  
  Tower(int x, int y, int sprite)
  {
    cellX=x;
    cellY=y;
    spriteIndex=sprite;
  }
}