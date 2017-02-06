PShape enemy;
PShape Towers[]=new PShape[10];
static float cell=1000/20;
int cols=20, rows=13;
int spawnTime = 0;
//Gameplay variables
ArrayList <Tower> AllTowers=new ArrayList<Tower>();
ArrayList MonstersList = new ArrayList();
int money = 60;
int lives = 10;
int level = 1;
int startMonsters= 5;
int spawnMonsters = startMonsters;
float Health=100;
boolean start;
//end
Cell[][] Grid = new Cell[cols][rows];

Cell hoverCell=null;
void setup() 
{
  size(1000,725);
  frameRate(30);
  //tower1
  Towers[0]=createShape();
  Towers[0].beginShape();
  Towers[0].strokeWeight(3);
  Towers[0].fill(255,69,0);
  Towers[0].vertex(3,3);
  Towers[0].vertex(47,3);
  Towers[0].vertex(3,47);
  Towers[0].vertex(47,47);
  Towers[0].endShape(CLOSE);
  //tower2
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
  
  for(int x=0;x<Grid.length;x++)
  {
    for(int y=0;y<Grid[0].length;y++)
    {
      Grid[x][y]=new Cell(x,y);
    }
  }
}

void draw()
{
  drawBackground();
  
  for(int i=0;i<AllTowers.size();i++)
  {
    AllTowers.get(i).drawMe();
  }
  fill(#DC143C);
  if(overRect(895,670,95,40))
  {
    fill(0,255,0);
  }
  noStroke();
  
  rect(895,670,95,40,5);//start button
  
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
  text("Cash:" + " " + nf(money, 2), 600, 700);
  //checks where mouse is to draw grid outline
  mouseCheck();
  //start button condition
  if(start)
  {
    spawnTime++;
    if (spawnTime == 25) 
    { 
      if ( spawnMonsters == 0) 
      {
        spawnTime = 26;
      } 
      else 
      {
        MonstersList.add(new Monsters(Health));
        spawnMonsters--;
        spawnTime = 0;
      }
    }

    for (int j = 0; j < MonstersList.size(); j++) 
    {
      if (MonstersList.size() > 0)
        ((Monsters)MonstersList.get(j)).MonsterMovement();
    } 
    if (MonstersList.size() == 0) 
    {
      if (spawnTime >= 26) {
        spawnTime = 0;
        Health += 50;
        startMonsters+= 2;
        level += 1;
        start = false;
        spawnMonsters = startMonsters;   
      }
    }
  }
  
  for (int i=0; i<AllTowers.size(); i++) 
  {
    AllTowers.get(i).shoot();
  }
}

void mouseCheck()
{
  int x =  (int)(mouseX/ cell);
  int y = (int)(mouseY/ cell);
  
  if( x<Grid.length && y<Grid[0].length)
  {
   hoverCell = Grid[x][y];
   hoverCell.outlineMe();
  }
}

void mousePressed()
{
  if(hoverCell!=null && mouseY<=650)
  {
    if(hoverCell.Build())
    {
      hoverCell.buildOn(new Tower(hoverCell.x,hoverCell.y));
    }
  }
  if(!start)
  {
    if(overRect(895,670,95,40))
    {
      start=true;
    }
  }
}