class rectangle
{
  boolean overRect(int x, int y, int width, int height)  
  {
    if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) 
    {
      return true;
    } 
    else 
    {
      return false;
    }
  }//used to detect if user interacts with keys on keyboard
}//end class rectangle