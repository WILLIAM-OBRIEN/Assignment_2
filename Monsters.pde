class Monsters
{

  /*int xpos = 155;
  int ypos = -1;*/
  int xpos = 455;
  int ypos = 260;
  int speed = 2;
  int HP;
  PShape monster;

  Monsters (int hp) 
  {
    HP = hp;
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
    if (ypos < 65 && xpos == 155 ) 
    {
      ypos += speed;
    }
    else if (ypos <= 65 && xpos > 5) 
    {
      xpos -= speed;
    } 
    else if (xpos <= 5 && ypos<410) 
    {
      ypos += speed;
    }
    else if (xpos < 205 && ypos>=405) 
    {
      xpos += speed;
    }
    else if (xpos >=205 && xpos <454 && ypos>260 && ypos<450) 
    {
      ypos -= speed;
    }
    else if (xpos <455 && ypos<=260) 
    {
      xpos += speed;
    }
    else if (xpos >454 && ypos<460) 
    {
      ypos += speed;
    }
    else if (xpos > 355 && ypos<=460) 
    {
      xpos -= speed;
    }
    else if (xpos > 355 && ypos<=460) 
    {
      xpos -= speed;
    }
    /*
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
    translate(xpos, ypos);
    shape(enemy, 0, 0, 40, 25);
}
    
}