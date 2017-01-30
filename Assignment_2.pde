PShape tower1;
static float cell=1000/20;

Cell[][] Grid = new Cell[20][13];
void setup() 
{
  size(1000,800);
  //tower1
  tower1=createShape();
  tower1.beginShape();
  tower1.strokeWeight(3);
  tower1.fill(255,69,0);
  tower1.vertex(0,0);
  tower1.vertex(44,0);
  tower1.vertex(0,44);
  tower1.vertex(44,44);
  tower1.endShape(CLOSE);
  //grid
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
  
  shape(tower1,mouseX,mouseY);
  mouseCheck();
  println(mouseX,mouseY);
}

void mouseCheck()
{
  int x =  (int)(mouseX/ cell);
  int y = (int)(mouseY/ cell);
  
  if( x<Grid.length && y<Grid[0].length)
  {
    Grid[x][y].outlineMe();
  }
}