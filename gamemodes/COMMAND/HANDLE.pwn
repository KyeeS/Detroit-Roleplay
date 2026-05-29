public OnPlayerCommandText(playerid, cmdtext[]) {
  if(StatusLogin[playerid] == false) {
    SendMessageError(playerid, "Kamu harus login agar bisa menggunakan command!");
    return 1;
  }
  return 0;
}