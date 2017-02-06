class Monsters
{
  int xpos = 155;
  int ypos = -1;
  int speed = 2;
  float HP;
  PShape monster;
  float HealthBarWidth=40;
  float HealthRemains;
  Monsters (float hp) 
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
  
  void damage() 
  {
    HP -= 5;
  }
  void MonsterMovement() 
  {
    if (ypos<65 && xpos==155) 
    {
      ypos += speed;
    }//p1
    else if (ypos==65 && xpos>5 && xpos<850) 
    {
      xpos -= speed;
    }//p2 
    else if (xpos==5 && ypos<=410) 
    {
      ypos += speed;
    }//p3
    else if (xpos<205 && ypos==411) 
    {
      xpos += speed;
    }//p4
    else if (xpos==205 && ypos>=259 && ypos<450) 
    {
      ypos -= speed;
    }//p5
    
    else if (xpos<=455 && ypos==257) 
    {
      xpos += speed;
    }//p6
    
    else if (xpos==457 && ypos<460) 
    {
      ypos += speed;     
    }//p7
    else if (xpos>355 && xpos<850 && ypos==461) 
    {
      xpos -= speed;
    }//p8
    else if (xpos==355 && ypos<610) 
    {
      ypos += speed;
    }//p9
    else if (xpos<605 && ypos==611) 
    {
      xpos += speed;
    }//p10    
    else if (xpos==605 && ypos>511) 
    {
      ypos -= speed;
    }//p11 
    else if (xpos<855 && ypos==511) 
    {
      xpos += speed;
    }//p12
    else if (xpos==855 && ypos>-100) 
    {
      ypos -= speed;
    }//p13
    
    //loses hp
    if (HP < 0) 
    {  
        MonstersList.remove(this);
        money += 50;
    }
    //pass endpoint loss
    if (ypos < -5) 
    {
        lives--;
        MonstersList.remove(this);
    }
    pushMatrix();
    translate(xpos, ypos);
    shape(enemy, 0, 0, 40, 25);
    // Change color
    if (HP < 25)
    {
      fill(255, 0, 0);
    }  
    else if (HP < 50)
    {
      fill(255, 200, 0);
    }
    else
    {
      fill(0, 255, 0);
    }
    
    // Draw bar
    noStroke();
    HealthRemains = (HP / Health) * HealthBarWidth;
    rect(0, -15, HealthRemains, 10);    
    popMatrix();
  }
    
}