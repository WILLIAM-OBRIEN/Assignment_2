class Tower
{
  ArrayList bullets;
  PVector location = new PVector();
  float r = 40;
  float aX = r;
  float aY = r;
  int radius = 100;
  int Tfr = 0;
  int inReach = 160;
  boolean upgrade;
  int cellX;
  int cellY;
  float towerX, towerY;
  
  void drawMe()
  {
    shape(Towers[1],cellX*cell,cellY*cell);
  }
  
  Tower(int x, int y)
  {
    cellX=x;
    cellY=y;
  }
  void shoot()
  {
    if (MonstersList.size() > 0) 
    {
      if (dist(((Monsters)MonstersList.get(0)).xpos, ((Monsters)MonstersList.get(0)).ypos, location.x, location.y) < inReach) 
      {        
        Tfr++;
        if (Tfr == 5) 
        {
          bullets.add(new Bullet(location.x, location.y)); 
          Tfr = 0;
        }
      }

      for (int i=0; i<bullets.size(); i++) 
      {

        shape(Towers[1], location.x, location.y);
        ((Bullet)bullets.get(i)).run(aX, aY);
        pushMatrix();
        translate(location.x, location.y);
        popMatrix();


        if (dist(((Monsters)MonstersList.get(0)).xpos, ((Monsters)MonstersList.get(0)).ypos, ((Bullet)bullets.get(i)).loc.x, ((Bullet)bullets.get(i)).loc.y) < 25) 
        {
          bullets.remove(i);
          ((Monsters)MonstersList.get(0)).damage();
        }
        else if (((Bullet)bullets.get(i)).loc.x > width || ((Bullet)bullets.get(i)).loc.x < 0 || ((Bullet)bullets.get(i)).loc.y > height || ((Bullet)bullets.get(i)).loc.y < 0) 
        {
          bullets.remove(i);
        }
      }
    }
  }
}
}