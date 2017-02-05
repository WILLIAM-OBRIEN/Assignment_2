void circleMovement() 
  {
    int xpos = 155;
    int ypos = -1;
    int speed = 2;
    boolean xLine = true;
    boolean xLine2 = true;
    if (ypos < 580 ) 
    {
      ypos -= speed;
    }
    else if (ypos < 140) 
    {
      ypos += speed;
      //xLine = false;
    }
    /*
    else if (xpos > 60 && xLine2) 
    {
      xpos -= speed;
    }
    else if (ypos < 220 && ypos >= 140) 
    {
      ypos += speed;
      if (ypos == 218) 
      {
        xLine = true;
        xLine2 = false;
      }
    }
    else if (ypos < 300 && ypos >= 220) 
    {
      ypos += speed;
      xLine = false;
    }
    else
    {
      xpos -= speed;
    }*/
    pushMatrix();
    translate(xpos, ypos);
    shape(enemy, 0, 0, 40, 25);
    popMatrix();
}