drawRoom DR;
Table table;
String[] suspects=new String[20];
String[] weapons=new String[20];
String[] rooms=new String[20];
void setup() 
{
  size(1400,1000);
  table = loadTable("clue.csv", "header");

  println(table.getRowCount() + " total rows in table"); 
  int i=0;
  for (TableRow row : table.rows()) 
  {
    
    String susp = row.getString("Suspects");
    String wep = row.getString("Weapons");
    String room = row.getString("Rooms");
    
      suspects[i] = susp;
      weapons[i] = wep;
      rooms[i] = room;
      i++;
      println(i);
  }
  DR = new drawRoom();
  DR.rooms();
}

void draw()
{
  int i;
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
}