class Monsters
{

  int xpos = 155;
  int ypos = -1;
  int speed = 2;
  int circleHP;
  PShape monster;
  boolean xLine = true;
  boolean xLine2 = true;

  Monsters (int hp) 
  {
    circleHP = hp;
    if (level % 10 == 0) //if level of 10s == boss
    {
      monster = enemy;//boss enemy
    } 
    else 
    {
      monster = enemy;//normal enemy
    }
  }

  void MonsterMovement() 
  {
    
    /*boolean xLine = true;
    boolean xLine2 = true;*/
    if (ypos < 580 ) 
    {
      ypos += speed;
    }
    else if (xpos < 140) 
    {
      xpos += speed;
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
    //pushMatrix();
    translate(xpos, ypos);
    shape(enemy, 0, 0, 40, 25);
    //popMatrix();
}
    
}