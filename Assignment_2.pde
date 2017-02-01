PShape enemy;
PShape Towers[]=new PShape[10];
static float cell=1000/20;

//Gameplay variables
ArrayList <Tower> AllTowers=new ArrayList<Tower>();
int money = 750;
int lives = 10;
int level = 1;
boolean start;
//end
Cell[][] Grid = new Cell[20][13];

Cell hoverCell=null;
void setup() 
{
  size(1000,800);
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
  //grid
  fill(#8b4513);
  noStroke();
  rect(0,0,width,height);
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
  
  for(int i=0;i<AllTowers.size();i++)
  {
    AllTowers.get(i).drawMe();
  }
  fill(0);
  rect(0, 650, 1000, 150); // toolbar
  if(overRect(895,670,95,50))
  {
    fill(0,255,0);
  }
  stroke(0,255,0);
  rect(895,670,95,50);//start button
  
  textSize(25);
  fill(255);
  text("START!", 900, 700);
  fill(255);
  text("Lives:" + " " + nf(lives, 2), 350, 700);
  fill(255);
  text("Level:" + " " + nf(level, 2), 100, 700);
  fill(255);
  text("Dosh:" + " " + nf(money, 2), 600, 700);
  
  println(mouseX,mouseY);
  //shape(Towers[0],mouseX,mouseY);
  mouseCheck();
  
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
      hoverCell.buildOn(new Tower(hoverCell.x,hoverCell.y,0));
    }
  }
  if(!start)
  {
    if(overRect(895,670,95,50))
    {
      start=true;
    }
  }
}