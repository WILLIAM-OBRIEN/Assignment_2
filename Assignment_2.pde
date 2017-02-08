PShape enemy;//is the enemy shape
PShape boss;//is the boss shape
PShape Towers[]=new PShape[10];//contains array of tower shapes
static float cell=1000/20;//decides size of cells
int cols=20, rows=13;//decides size of grid map
int Timer = 0;
int QuotePick=0;
int r;
int gamestate=1;
int flowerColors=1;
//Gameplay variables
ArrayList <Tower> TowersList=new ArrayList<Tower>();//contains array of all towers
ArrayList MonstersList = new ArrayList();
ArrayList BossList = new ArrayList();
int money = 1000;
int lives = 10;
int level = 10;
int towerCost = 300;
int upgradeCost = 500;
int startMonsters= 5;
int startBoss= 1;
int spawnMonsters = startMonsters;
int spawnBoss = startBoss;
float Health=100;
float bossHealth=3500;
boolean start;
//end
Cell[][] Grid = new Cell[cols][rows];
Cell CheckHover=null;

//variables used to map stars in gamestate 2
int stars=1;
float[] xPos = new float[250];
float[] yPos = new float[250];
float[] xVel = new float[250];
float[] yVel = new float[250];
float[] s = new float[250]; 
void setup() 
{
  size(1000,725);
  frameRate(140);
  //makes stars coordinates + size random generated and places the information in arrays
  for (int i=0; i < 250; i++) 
  {
    xPos[i] = random(1, 1000);
  }

  for (int i=0; i < 250; i++) 
  {
    yPos[i] = random(1, 649);
  }

  for (int i=0; i < 250; i++) 
  {
    xVel[i] = random(-10, 10);
  }

  for (int i=0; i < 250; i++) 
  {
    yVel[i] = random(-10, 10);
  }
  for (int i=0; i < 250; i++) 
  {
    s[i] = random(1, 6);
  }
  //tower1 shape
  Towers[0]=createShape();
  Towers[0].beginShape();
  Towers[0].strokeWeight(3);
  Towers[0].fill(#DAA520);
  Towers[0].vertex(5,5);
  Towers[0].vertex(15,5);
  Towers[0].vertex(15,15);
  Towers[0].vertex(20,15);
  Towers[0].vertex(20,5);
  Towers[0].vertex(30,5);
  Towers[0].vertex(30,15);
  Towers[0].vertex(35,15);
  Towers[0].vertex(35,5);
  Towers[0].vertex(45,5);
  Towers[0].vertex(45,45);
  Towers[0].vertex(5,45);
  Towers[0].endShape(CLOSE);
  //tower2 shape
  Towers[1]=createShape();
  Towers[1].beginShape();
  Towers[1].strokeWeight(3);
  Towers[1].fill(255,69,0);
  Towers[1].vertex(5,5);
  Towers[1].vertex(15,5);
  Towers[1].vertex(15,15);
  Towers[1].vertex(20,15);
  Towers[1].vertex(20,5);
  Towers[1].vertex(30,5);
  Towers[1].vertex(30,15);
  Towers[1].vertex(35,15);
  Towers[1].vertex(35,5);
  Towers[1].vertex(45,5);
  Towers[1].vertex(45,45);
  Towers[1].vertex(5,45);
  Towers[1].endShape(CLOSE);
  //grid
  
  //enemy
  enemy=createShape();
  enemy.beginShape();
  enemy.strokeWeight(2);
  enemy.fill(218,165,32);
  enemy.vertex(0,5);
  enemy.vertex(0,15);
  enemy.vertex(5,20);
  enemy.vertex(45,20);
  enemy.vertex(25,0);
  enemy.vertex(5,0);
  enemy.endShape(CLOSE); 
  //boss
  boss=createShape();
  boss.beginShape();
  boss.strokeWeight(2);
  boss.fill(#F791EC);
  boss.vertex(0,0);
  boss.vertex(10,10);
  boss.vertex(30,10);
  boss.vertex(40,0);
  boss.vertex(40,30);
  boss.vertex(30,40);
  boss.vertex(10,40);
  boss.vertex(0,30);
  boss.endShape(CLOSE);
  
  for(int x=0;x<Grid.length;x++)
  {
    for(int y=0;y<Grid[0].length;y++)
    {
      Grid[x][y]=new Cell(x,y);
    }
  }//actually draws grid creating all the different cell
}

void draw()
{
  if(gamestate==0)
  {
    intro();
  }
  else if(gamestate==1)
  {
    drawBackground();//just calls to a function in a different tab 
    
    for(int i=0;i<TowersList.size();i++)
    {
      TowersList.get(i).drawMe();
    }//draws the towers
    //if mouse over start button
    fill(#DC143C);
    if(overRect(895,670,95,40))
    {
      fill(0,255,0);
    }
    noStroke();
    
    rect(895,670,95,40,5);//start button
    
    //game stats text
    textSize(25);
    fill(255);
    if(level==1)
    {
      text("START!", 900, 700);
    }
    else
    {
      text("N.LVL!", 905, 700);
    }
    fill(255);
    text("Lives:" + " " + nf(lives, 2), 350, 700);
    fill(255);
    text("Level:" + " " + nf(level, 2), 100, 700);
    fill(255);
    if(money<50)
    {fill(255,0,0);}//if not enough money
    text("Cash:" + " " + nf(money, 2), 600, 700);
    
    //checks where mouse is to draw grid outline
    mouseCheck();
    //start button condition creates the spawns for monsters
    if(start)
    {
      if(level%10==0)
      {
        Timer++;
        if (Timer == 20) 
        { // spawn rate
          BossList.add(new BossMonster(bossHealth));
          spawnBoss--;
          if ( spawnBoss == 0) 
          {
            Timer = 21;
          } 
          else 
          {
            Timer = 0;
          }
        }
        for (int j = 0; j < BossList.size(); j++) 
        {
          if (BossList.size() > 0) 
          {
            ((BossMonster)BossList.get(j)).MonsterMovement();
          }
        }
  
        if (BossList.size() == 0) 
        {
          if (Timer >= 26) 
          {
            Timer = 0;
            bossHealth += 500;
            startBoss += 1;
            level += 1;
            start = false;
            spawnBoss = startBoss;
          }
        }
      }
      
      else
      {
        Timer++;
        if (Timer == 25) 
        { 
          if ( spawnMonsters == 0) 
          {
            Timer = 26;
          } 
          else 
          {
            MonstersList.add(new Monsters(Health));
            spawnMonsters--;
            Timer = 0;
          }
        }
    
        for (int j = 0; j < MonstersList.size(); j++) 
        {
          if (MonstersList.size() > 0)
          {
            ((Monsters)MonstersList.get(j)).MonsterMovement();
          }
        }//gives monsters movement
        
        if (MonstersList.size() == 0) 
        {
          if (Timer >= 26) {
            Timer = 0;
            Health += 20;
            startMonsters+= 2;
            level += 1;
            start = false;
            spawnMonsters = startMonsters;   
          }
        }
      }//when all monsters gone adds conditions for next round
    } 
    
    for (int i=0; i<TowersList.size(); i++) 
    {
      TowersList.get(i).shoot();
    }//responsible for allowing towers to damage the monsters
    fill(100);
    stroke(0);
    for(int i=0;i<40;i+=20)
    {
      rect(825,000+i,100,20,10);
    }//draws pipe thing
    if(lives<=0)
    {
      gamestate=2;
    }
  }//end gamestate1
  else if(gamestate==2)
  {
    endScreen();
  }
}//END DRAW

void mouseCheck()
{
  int x =  (int)(mouseX/ cell);
  int y = (int)(mouseY/ cell);
  
  if( x<Grid.length && y<Grid[0].length)
  {
   CheckHover = Grid[x][y];
   CheckHover.outlineMe();
  }
}//checks where mouse is to draw grid outline

void mousePressed()
{
  if(gamestate==0)
  {
    if(overRect(400,600,200,100))
    {
      gamestate=1;
    }
  }
  else if(gamestate==1)
  {
    if(mouseButton==LEFT)
    {
      if(CheckHover!=null && mouseY<=650)
      {
        if(CheckHover.Build())
        {
          if(money>=towerCost)
          {
            CheckHover.buildOn(new Tower(CheckHover.x,CheckHover.y,false));
            money-=towerCost;
          }
        }
      }//allows building of towers assuming its on the grid aswell as having enough money
      if(!start)
      {
        if(overRect(895,670,95,40))
        {
          start=true;
        }
      }//start button interaction
    }//end left mouse button
    
    else if(mouseButton==RIGHT)
    {
      if(CheckHover!=null && mouseY<=650)
      {
        if(CheckHover.Build())
        {
          if(money>=upgradeCost)
          {
            CheckHover.buildOn(new Tower(CheckHover.x,CheckHover.y,true));
            money-=upgradeCost;
          }
        }
      }
    }//end right mouse used to upgrade
  }
  
  else if(gamestate==2)
  {
    if(overRect(400,600,200,100))
    {
      exit();
    } 
    else if(overRect(800,400,100,50))
    {
      QuotePick=0;
    }
  }
}
void keyPressed()
{
  if(gamestate==1)
  {
    if(!start)
    {
      if(keyCode==' ')
      {
        start=true;
      }
    }//start button interaction
  }
}