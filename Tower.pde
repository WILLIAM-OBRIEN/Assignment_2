class Tower
{
  int cellX;
  int cellY;
  PVector location = new PVector();
  int FireRate = 0;
  int Range = 120;
  boolean upgrade;
  
  void drawMe()
  {
    shape(Towers[1],cellX*cell,cellY*cell);
  }
  
  Tower(int x, int y)
  {
    cellX=x;
    cellY=y;
    location.x = cellX*cell;
    location.y = cellY*cell;
  }
  void shoot()
  {  
    if(level%10==0)
    {
      if (BossList.size() > 0) 
      {
        if (dist(((BossMonster)BossList.get(0)).xpos, ((BossMonster)BossList.get(0)).ypos, location.x, location.y) < Range) 
        {
          FireRate++; 
          if(FireRate==5)
          {
            ((BossMonster)BossList.get(0)).damage(); 
            FireRate = 0;
          }
        }
      }
    }//end boss if
    else
    {
      if (MonstersList.size() > 0) 
      {
        if (dist(((Monsters)MonstersList.get(0)).xpos, ((Monsters)MonstersList.get(0)).ypos, location.x, location.y) < Range) 
        {
          FireRate++; 
          if(FireRate==5)
          {
            ((Monsters)MonstersList.get(0)).damage(); 
            FireRate = 0;
          }
        }
      }
    }//end monster else 
  }//end void shoot
}//end class tower