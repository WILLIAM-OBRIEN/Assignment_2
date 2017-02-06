class BossMonster extends Monsters
{
  int xpos = 155;
  int ypos = -1;
  int speed = 2;
  float HP, hitP;
  PShape monster;
  float HealthBarWidth=40;
  float HealthRemains;
  BossMonster (float hitP) {
  super(hitP);}
  {
    HP = hitP;
    if (level % 10 == 0) //if level of 10s == boss
    {
      monster = enemy;//boss enemy
    } 
    else 
    {
      monster = enemy;//normal enemy
    }
  }    
}