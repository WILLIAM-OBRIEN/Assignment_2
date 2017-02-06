void drawBackground()
{
  //grid
  fill(#8b4513);
  noStroke();
  rect(0,0,width,height);
  //pathOutline
  fill(100);
  rect(140,0,70,100);
  rect(0,40,210,70);
  rect(0,100,60,350);
  rect(0,390,250,70);
  rect(190,250,70,210);
  rect(190,240,310,70);
  rect(440,240,70,260);
  rect(340,440,170,70);
  rect(340,490,70,160);
  rect(390,590,270,60);
  rect(590,490,70,100);
  rect(640,490,270,70);
  rect(840,0,70,550);
  //path
  fill(#ffe4b5);
  rect(150,0,50,50);
  rect(0,50,200,50);
  rect(0,100,50,350);
  rect(50,400,150,50);
  rect(200,300,50,150);
  rect(200,250,250,50);
  rect(450,250,50,250);
  rect(350,450,100,50);
  rect(350,500,50,150);
  rect(400,600,250,50);
  rect(600,500,50,100);
  rect(650,500,200,50);
  rect(850,0,50,550);
  
  fill(150,180);
  rect(0, 650, 1000, 150); // toolbar
  fill(#B0C4DE);
  stroke(0);
  rect(-10,650,1050,10);//toolbar top
}