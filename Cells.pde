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
    if(InUse==null && (x*cell<=100&&y*cell<=0) || (x*cell<=300&&y*cell>=450&&y*cell<=650)
    ||(x*cell>=50&&x*cell<=150&&y*cell>=100&&y*cell<=350))
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