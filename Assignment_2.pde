drawRoom DR;
selectPlayer MurderCND;
rectangle box;
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
  //MurderCND.select();
}
void draw()
{
  DR.grid(); 
}