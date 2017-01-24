class drawRoom
{
  void rooms()
  {
    strokeWeight(5);
    //Study
    rect(0,0,300,200);
    //Hall
    rect(400,0,200,300);
    //Lounge
    rect(700,0,300,200);
    //Library
    rect(0,300,300,200);
    //Billiard Room
    rect(0,600,300,150);
    //Conservatory
    rect(0,850,200,150);
    //Ballroom
    rect(400,700,250,300);
    //Kitchen
    rect(800,800,200,200);
    //Dining room
    rect(700,300,300,300);
    
    //Gamesheet
    fill(0,255,255);
    rect(1000,0,400,1000);
  }
  
  void grid()
  {
    noFill();
    strokeWeight(1);
    for(i=0;i<1000;i+=50)
    {
      for(j=0;j<1000;j+=50)
      {
        rect(j,i+50,50,50);
      } 
      rect(i,0,50,50);
    }
  }
}