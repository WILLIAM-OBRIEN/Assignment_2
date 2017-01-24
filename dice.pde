class dice
{
  int di()
  {
    int d1=int(random(1,7));
    int d2=int(random(1,7));
    int rollTotal=d1+d2;
    println(rollTotal) ;
    return rollTotal;
  }
}