stock ResetVariabelPlayer(playerid) 
{
  Pemain[playerid][pId] = 0;
  Pemain[playerid][pArmor] = 0.0;
  Pemain[playerid][pSkin] = 0;
  Pemain[playerid][pLevel] = 0;
  PosisiPemain[playerid][int] = 0;
  
  TipeLogin[playerid] = false;
  return 1;
}

Fungsi: MuatDataLogin(playerid) {
  
  cache_get_value_int(0, "gender", Pemain[playerid][pGender]);
  cache_get_value_int(0, "skin", Pemain[playerid][pSkin]);
  cache_get_value_int(0, "level", Pemain[playerid][pLevel]);
  
  // float
  cache_get_value_name_float(0, "posx", PosisiPemain[playerid][x]);
  cache_get_value_name_float(0, "posy", PosisiPemain[playerid][y]);
  cache_get_value_name_float(0, "posz", PosisiPemain[playerid][z]);
  cache_get_value_name_float(0, "angel", PosisiPemain[playerid][angel]);
  
  cache_get_value_name_float(0, "nyawa", Pemain[playerid][pNyawa]);
  cache_get_value_name_float(0, "armor", Pemain[playerid][pArmor]);
  
  cache_get_value_int(0, "interior", PosisiPemain[playerid][int]);
  
  TipeLogin[playerid] = 0;
  
  SpawnPemainEx(playerid);
  
  return 1;
}

Fungsi: SaveAccounts(playerid)
{
    new query[256];
    mysql_format(g_SQL, query, sizeof(query),
     "UPDATE Pemain SET posx='%f', posy='%f', posz='%f', angel='%f',\
     interior='%d', nyawa='%f', armor='%f'\
     gender='%d', skin='%d', level='%d'\
     WHERE id='%d'",
     PosisiPemain[playerid][x], PosisiPemain[playerid][y], PosisiPemain[playerid][z], PosisiPemain[playerid][angel],
     PosisiPemain[playerid][int], Pemain[playerid][pNyawa], Pemain[playerid][pArmor],
     Pemain[playerid][pGender], Pemain[playerid][pSkin], Pemain[playerid][pLevel],
     Pemain[playerid][pId]);
    mysql_tquery(g_SQL, query);
    
    return 1;
}

