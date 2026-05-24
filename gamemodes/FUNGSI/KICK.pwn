forward KickPemain(playerid);

public KickPemain(playerid) {
  if(!IsPlayerConnected(playerid)) {
    return 1;
  }
  
  Kick(playerid);
  
  return 1;
}