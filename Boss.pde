class BossMonster extends Monsters
{
  float  hitP=bossHealth;

  BossMonster (float hitP) {
  super(hitP);}
  {
    HP = hitP;
    monster = boss;//boss enemy
  }
}