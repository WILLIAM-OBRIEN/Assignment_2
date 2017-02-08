void intro()
{
  fill(0);
  noStroke();
  rect(0,0,width,height);
  fill(100);
  if(overRect(400,600,200,100))
  {fill(0,255,255);}
  rect(400,600,200,100,10);  
  fill(#DAA520);
  textSize(32);
  text("Protect the village! -- Tower Defense",200,100);
  fill(255,0,0);
  textSize(28);
  text("You must defeat the evil cats and mice before they reach the village!!",20,170);
  fill(255);
  textSize(25);
  text("-Orange Towers (weak) cost 300 cash and Gold towers (strong) cost 500",50,250);
  text("-Left click to place orange and right click for gold",50,300);
  text("-Bosses(cats) every 10 levels",50,350);
  text("-Mice give 50cash and Cats give 500cash",50,400);
  text("-When lives reach 0 its game over",50,450);
  text("-SPACE or click start button for new level",50,500);
  fill(#808000);
  text("<<See read me for explanation what of tower defense is!>>",50,550);
  fill(0);
  text("Continue!",445,655);
}
void drawBackground()
{
  //grass  
  fill(#9ACD32);
  noStroke();
  rect(0,0,width,height);
  //mud
  fill(#8b4513);
  rect(660,560,300,200,80);
  //split
  fill(140);
  rect(0,0,500,725);
  //platau
  fill(50);
  rect(0,0,140,40);
  rect(210,0,140,40);
  //border
  fill(#CD853F);
  stroke(0);
  rect(495,0,10,725);
  //flowers
  for(int i=725;i<925;i+=50)
  {
    drawFlower(i,625);
    drawFlower(i,675);
  }
  flowerColors=0;
  strokeWeight(5);
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
  //lava
  fill(lava,yellow,0);
  rect(100,150,60,200,20);
  rect(350,200,80,25,20);
  rect(280,50,60,50,20);
  ellipse(150,550,200,100);
  if(change==1)
  {
    yellow++;
    if(yellow==200)
    {
      change=0;
    }
  }
  else if(change==0)
  {
    yellow--;
    if(yellow==50)
    {
      change=1;
    }
  }
  fill(100);
  rect(160,0,30,50);//spawn door
  fill(200);
  ellipse(175,0,100,75);//spawn tower
  fill(150);
  ellipse(175,0,75,50);//spawn tower 3rd top
  fill(100);
  ellipse(175,0,55,30);//spawn tower 2nd top
  fill(0);
  ellipse(175,0,10,10);//spawn tower top
  
  //civ sign
  stroke(0);
  fill(#DEB887);
  rect(700,100,100,100);
  fill(0);
  textSize(14);
  text(" Defenseless\n town :(\n  ----->",700,130);
  
  fill(150,180);
  rect(0, 650, 1000, 150); // toolbar
  fill(#B0C4DE);
  stroke(0);
  rect(-10,650,1050,10);//toolbar top
}
void endScreen()
{  
  if(QuotePick==0)
  {
    r = int(random(1,10));
    QuotePick++;
  }
  //star background
  background(0);
    if (stars==1)
    {
      fill(255);

      for (int i=0; i < 250; i++) 
      {
        noStroke ();
        ellipse(xPos[i], yPos[i], s[i], s[i]);
      }
    }//plots stars made in setup
  fill(#FF05E2);
  textSize(32);
  text("YOU LOSE!",400,40);
  text("Your score:" + " " + nf(score,7), 300, 80);
  fill(255,alpha);
  if(r==1)
  {
    textSize(32);
    text("\"Mission failed\nWe'll get em next time...\"\n\n                   -Winston Churchill",200,200);
  }
  if(r==2)
  {
    textSize(25);
    text("\"In this moment, I am euphoric.\nNot because of any phony god’s blessing.\nBut because, I am enlightened by my intelligence\" \n\n                                                -Albert Einstein",100,200);
  }
  if(r==3)
  {
    textSize(25);
    text("\"When I went to school they asked me what I want to be when I grew up.\nI wrote down \'life\'. They told me they didn\'t understand life.\nI told them I didn\'t understand the assignment.\"\n\n                                                                             -John Lenin",100,200);
  }
  if(r==4)
  {
    textSize(32);
    text("\"They Don’t Think It Be Like It Is, But It Do\"\n\n                   -Nelson Mandela",200,200);
  }
  if(r==5)
  {
    textSize(32);
    text("\"Neutron stars are so dense,\none gram would weigh 3 billion grams\"\n\n                                  -Leonard Susskind",200,200);
  }
  if(r==6)
  {
    textSize(32);
    text("\"If the sun disappeared everyone \nwould get very cold\"\n\n                    -Neill Degrasse Tyson",200,200);
  }
  if(r==7)
  {
    textSize(32);
    text("\"There are more cells in our brains,\nthan there are brains in our entire body\"\n\n                                  -Richard Dawkins",200,200);
  }
  if(r==8)
  {
    textSize(25);
    text("\"People Use To Ask Me What You Wanna Be When You Get Older \nAnd I Would Say What A Stupid Question The Real Question Is\nWhat I Am Right Now\"\n\n                                  -Jaden Smith",100,200);
  }
  if(r==9)
  {
    textSize(32);
    text("\"Take it easy dude.\nBut make sure you take it\"\n\n                                  -Terence McKenna",200,200);
  }
  if(r==10)
  {
    textSize(25);
    text("\"Thats the amazing thing about evolution,\none day you have a butterfly and the very next day\nit might evolve into a frog or rabbit\"\n\n                                  -Carl Sagan",200,200);
  }
  alpha+=3;
  fill(100); 
  if(overRect(800,400,100,50))
  {fill(0,255,50);}
  rect(800,400,100,50,5);
  
  fill(0);
  textSize(16);
  text(" Generate\n Quote!",800,420);
  
  fill(100); 
  if(overRect(400,600,200,100))
  {fill(255,0,0);}
  rect(400,600,200,100,10);
  
  fill(0);
  textSize(25);
  text("EXIT GAME",440,655);
}