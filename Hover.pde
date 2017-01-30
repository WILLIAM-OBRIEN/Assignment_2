class hover
{
  void keypress(int x, int y) 
  {
      if( box.overRect(r, 550, 50,50) ) 
      {
        key[i] = true;
      } 
      else 
      {
        key[i] =false;
      }
  }//used to see if mouse over certain keyboard keys for top line
}