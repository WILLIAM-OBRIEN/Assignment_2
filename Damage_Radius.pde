class Circle
{
  boolean overCircle(int x, int y, int diameter) 
  {
    float SpaceX = x - mouseX;
    float SpaceY = y - mouseY;
    if (sqrt(sq(SpaceX) + sq(SpaceY)) < diameter/2 ) 
    {
      return true;
    } 
    
    else 
    {
      return false;
    }
  }//end overcircle
}