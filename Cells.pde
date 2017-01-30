class Cell
{
  int x, y;
  Tower InUse = null;//will default to  null, assumes no tower
  
  void buildOn(Tower t)
  {
    if(Build())
    {
      InUse=t;
      AllTowers.add(InUse);
      println("Tower Built!\n");
    }
  }
  
  boolean Build()
  {
    if(InUse==null){return true;}
    else{return false;}
  }
  
  void outlineMe()
  {
    noFill();
    stroke(0,255,255);
    rect(x * cell, y * cell, cell, cell);
  }
  
  Cell(int _x, int _y)
  {
    x= _x;
    y= _y;
  }
}