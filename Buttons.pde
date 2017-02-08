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
}//buttons passed here to check if mouse has pressed or is hovered over