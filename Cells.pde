class Cell
{
  int x, y;
  Tower InUse = null;//will default to  null, assumes no tower
  boolean isPath = false;
  
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
    if(InUse==null && !isPath)
    {
      return true;
    }
    else
    {
      return false;
    }
  }//checks to see if tower already placed
  
  void outlineMe()
  {
    noFill();
    if(Build())
    {
      stroke(0,255,255);
    }
    else
    {
      stroke(255,0,0);
    }
    rect(x * cell, y * cell, cell, cell);
    
  }
  
  Cell(int _x, int _y)
  {
    x= _x;
    y= _y;
  }
}