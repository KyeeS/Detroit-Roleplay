// Data player
enum DataPemain {
  pNama[MAX_PLAYER_NAME],
  pId,
  pVerified,
  pKode,
  pPassword[256],
  pGender,
  pSkin,
  pLevel,
  Float:pNyawa,
  Float:pArmor
};

new Pemain[MAX_PLAYERS][DataPemain];

// posisi player
enum PosisiPlayer {
  Float:x,
  Float:y,
  Float:z,
  Float:angel,
  int
};

new PosisiPemain[MAX_PLAYERS][PosisiPlayer];
/////////////////////////////////////////////////////

// enum dialog 
enum {
  DIALOG_UNUSED,
  DIALOG_VERIFIKASI_KODE,
  DIALOG_BUAT_PASSWORD,
  DIALOG_LOGIN,
  DIALOG_GENDER
};

// posisi default
enum DPos {
  Float:x = 0.0,
  Float:y = 0.0,
  Float:z = 0.0,
  Float:angel = 0.0
}

new DefaultPos[DPos];

// skin default
enum DSkin {
  pria = 147,
  wanita = 150
}

new DefaultSkin[DSkin];