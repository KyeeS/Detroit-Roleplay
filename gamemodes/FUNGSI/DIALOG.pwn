public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {

  // login sistem
  if(dialogid == DIALOG_LOGIN) {
    // tombol kirim
    if(response == 1) {
      // sandi benar
      if(strcmp(inputtext, Pemain[playerid][pPassword], true) == 0) {
        SendMessageServer(playerid, "Pssword benar, selamat bermain");
        // ubah variabel status login
        StatusLogin[playerid] = true;
        
        new blah[256];
        format(blah, sizeof(blah), "{59ff28}[SERVER]{fff000} %s {ffffff}memasuki server.", Pemain[playerid][pNama]);
        SendClientMessageToAll(0xffffff, blah);
        
        return 1;
      }
      // sandi salah
      else {
        SendMessageError(playerid, "Sandi salah!");
        
        new str[512];
        format(str, sizeof(str),
         "Akun {FFF000}%s {FFFFFF}sudah terdaftar.\n\nSilahkan masukkan password akun anda.\n\n{ff0000}[ERROR]{ffffff}Sandi salah!",
         Pemain[playerid][pNama]
        );
        
        ShowPlayerDialog(playerid, DIALOG_LOGIN, DIALOG_STYLE_PASSWORD,
         "{CD7000}Detroit {FFFFFF}Roleplay - Account Login",
         str,
         "Kirim", "Batal"
        );
        return 1;
      }
    }
    // tombol batal
    else {
      SetTimerEx("KickPemain", 5000, false, "i", playerid);
    }
  }
  
  return 0;
}