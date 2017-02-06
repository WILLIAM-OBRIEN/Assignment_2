class Tower
{
  int cellX;
  int cellY;
    PVector location = new PVector();
  float r = 40;
  float aX = r;
  float aY = r;
  int radius = 100;
  int Tfr = 0;
  int inReach = 80;
  PImage towers;
  boolean upgrade;
  float towerX, towerY;
  int tint;
  
  void drawMe()
  {
    shape(Towers[1],cellX*cell,cellY*cell);
  }
  
  Tower(int x, int y)
  {
    cellX=x;
    cellY=y;
    location.x = x;
    location.y = y;
  }
  void shoot()
  {  
    if (MonstersList.size() > 0) 
    {
      if (dist(((Monsters)MonstersList.get(0)).xpos, ((Monsters)MonstersList.get(0)).ypos, location.x, location.y) < inReach) 
      {
        Tfr++;
        println((dist(((Monsters)MonstersList.get(0)).xpos, ((Monsters)MonstersList.get(0)).ypos, location.x, location.y)));
        if(Tfr==5)
        {
          ((Monsters)MonstersList.get(0)).damage(); 
          Tfr = 0;
        }
      }
    }
  }
}