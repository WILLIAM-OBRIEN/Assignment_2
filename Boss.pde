class BossMonster extends Monsters
{
  float  hitP;

  BossMonster (float hitP) {
  super(hitP);}
  {
    HP = hitP;
    monster = boss;//boss enemy
  }
}