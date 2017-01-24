drawRoom DR;
selectPlayer MurderCND;
Table table;
String[] suspects=new String[6];
String[] weapons=new String[6];
String[] rooms=new String[11];

String susp,wep,room; 

int murderID, weaponID, roomID;

int i,j;

void setup() 
{
  size(1400,1000);
  table = loadTable("clue.csv", "header");
  println(table.getRowCount() + " total rows in table"); 
  
  for (TableRow row : table.rows()) 
  {
    if(i<6)
    {
      susp = row.getString("Suspects");
      wep = row.getString("Weapons");
      suspects[i] = susp;
      weapons[i] = wep;
    }
    room = row.getString("Rooms");
    
      rooms[i] = room;
      i++;
      println(i);
  }
  DR = new drawRoom();
  MurderCND = new selectPlayer();
  DR.rooms();
  MurderCND.select();
}
int a=1;
void draw()
{
  if( a==1)
  {
    println("\n--Suspects:\n");
    for(i=0;i<6;i++)
    {
      println(suspects[i]+"\n");
    }
    println("\n--Weapons:\n");
    for(i=0;i<6;i++)
    {
      println(weapons[i]+"\n");
    }
    println("\n--Rooms:\n");
    for(i=0;i<9;i++)
    {
      println(rooms[i]+"\n");
    }
    a--;
  }
 DR.grid(); 
}