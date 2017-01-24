class selectPlayer
{
  void select()
  {
    murderID = int(random(suspects.length)); 
    weaponID = int(random(weapons.length));
    roomID = int(random(rooms.length));
    println("Murder conditions:\n"+suspects[murderID] +" --"+ weapons[weaponID] +" --"+ rooms[roomID]);
  }
}