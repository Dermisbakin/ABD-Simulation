String[] ArrowStands = new String[30];
Server MyPrivateServer = new Server();
Logs MyLogs = new Logs();
ConfidenceInterval Statistics = new ConfidenceInterval();
String[] TrowelDig = new String[8];
double[] tDist = new double[71];
String[] select = new String[5];
int digs = 0;
boolean sewers = true;
boolean running = false;
int speed = 5;
boolean statsMode = false;
int x = 0;

void setup(){
 size(1200,800); 
 ArrowStands[0] = "Doppio's King Crimson";
 ArrowStands[1] = "The Emperor";
 ArrowStands[2] = "Anubis";
 ArrowStands[3] = "Heirophant Green";
 ArrowStands[4] = "Mr President";
 ArrowStands[5] = "Crazy Diamond";
 ArrowStands[6] = "Killer Queen";
 ArrowStands[7] = "Star Platinum (6)";
 ArrowStands[8] = "Gold Experience";
 ArrowStands[9] = "Silver Chariot";
 ArrowStands[10] = "Sticky Fingers";
 ArrowStands[11] = "Magicians Red";
 ArrowStands[12] = "Soft & Wet";
 ArrowStands[13] = "The World: Alternate Universe";
 ArrowStands[14] = "Whitesnake";
 ArrowStands[15] = "The Hand";
 ArrowStands[16] = "Purple Haze"; 
 ArrowStands[17] = "Stone Free";
 ArrowStands[18] = "Star PLatinum(3)";
 ArrowStands[19] = "D4C";
 ArrowStands[20] = "Star Platinum: The World";
 ArrowStands[21] = "The World";
 ArrowStands[22] = "King Crimson: Alternate Universe";
 ArrowStands[23] = "Retro Star Platinum";
 ArrowStands[24] = "Retro The World";
 ArrowStands[25] = "Neo The World: Alternate Universe";
 ArrowStands[26] = "Cracked Golden Experience";
 ArrowStands[27] = "Creeper Queen";
 ArrowStands[28] = "Crazy Ruby";
 ArrowStands[29] = "Golden Soft & Wet";
 TrowelDig[0] = "Nothing";
 TrowelDig[1] = "Banknote";
 TrowelDig[2] = "Rokakaka";
 TrowelDig[3] = "Arrow";
 TrowelDig[4] = "Vampire Mask";
 TrowelDig[5] = "DIO's Diary";
 TrowelDig[6] = "Requiem Arrow";
 TrowelDig[7] = "Monochromatic Sphere";
 select[0] = "Kars";
 select[1] = "Oreo";
 select[2] = "Manga";
 select[3] = "STW";
 select[4] = "MiG";
    tDist[0] = 2.0452;
    tDist[1] = 2.0423;
    tDist[2] = 2.0395;
    tDist[3] = 2.0369;
    tDist[4] = 2.0345;
    tDist[5] = 2.0322;
    tDist[6] = 2.0301;
    tDist[7] = 2.0281;
    tDist[8] = 2.0262;
    tDist[9] = 2.0244;
    tDist[10] = 2.0225;
    tDist[11] = 2.0212;
    tDist[12] = 2.0195;
    tDist[13] = 2.0181;
    tDist[14] = 2.0167;
    tDist[15] = 2.0154;
    tDist[16] = 2.0141;
    tDist[17] = 2.0129;
    tDist[18] = 2.0117;
    tDist[19] = 2.0106;
    tDist[20] = 2.0096;
    tDist[21] = 2.0086;
    tDist[22] = 2.0076;
    tDist[23] = 2.0066;
    tDist[24] = 2.0057;
    tDist[25] = 2.0049;
    tDist[26] = 2.0040;
    tDist[27] = 2.0032;
    tDist[28] = 2.0025;
    tDist[29] = 2.0017;
    tDist[30] = 2.0010;
    tDist[31] = 2.0003;
    tDist[32] = 1.9996;
    tDist[33] = 1.9990;
    tDist[34] = 1.9983;
    tDist[35] = 1.9977;
    tDist[36] = 1.9971;
    tDist[37] = 1.9966;
    tDist[38] = 1.9960;
    tDist[39] = 1.9955;
    tDist[40] = 1.9949;
    tDist[41] = 1.9944;
    tDist[42] = 1.9939;
    tDist[43] = 1.9935;
    tDist[44] = 1.9930;
    tDist[45] = 1.9925;
    tDist[46] = 1.9921;
    tDist[47] = 1.9917;
    tDist[48] = 1.9913;
    tDist[49] = 1.9908;
    tDist[50] = 1.9905;
    tDist[51] = 1.9901;
    tDist[52] = 1.9897;
    tDist[53] = 1.9893;
    tDist[54] = 1.9890;
    tDist[55] = 1.9886;
    tDist[56] = 1.9883;
    tDist[57] = 1.9879;
    tDist[58] = 1.9876;
    tDist[59] = 1.9873;
    tDist[60] = 1.9870;
    tDist[61] = 1.9867;
    tDist[62] = 1.9864;
    tDist[63] = 1.9861;
    tDist[64] = 1.9858;
    tDist[65] = 1.9855;
    tDist[66] = 1.9853;
    tDist[67] = 1.9850;
    tDist[68] = 1.9847;
    tDist[69] = 1.9845;
    tDist[70] = 1.9842;
   textSize(15);
   fill(255);
}

public void draw(){
 background(0);
 frameRate(speed);
 stroke(255);
 line(600,0,600,600);
 stroke(255);
 line(0,600,1200,600);
 MyLogs.show();
 textAlign(CENTER);
 text("ABD Farming Sim. 1.1.0",300,50);
 if (running == true){
  MyPrivateServer.spawn();
  if (sewers == true){sewerFarm();}
  trowelFarm();
  arrowFarm();
  rareRoll();
 } else {
   textAlign(CENTER);
   fill(198, 214, 69);
   if(statsMode == false){
    text("Press SPACE to start",300,370);
    text("S to switch sewer farming",300,390);
    text("I to speed up simulation",300,410);
    text("K to slow down simulation",300,430);
    text("H to put on hyperspeed",300,450);
  } else {
    text("Setting up data collection...",300,370);
  }
 }
 if(statsMode == false){text("Statistics Analysis: off",300,580);}
 else {
  speed = 1000;
   fill(198, 214, 69);
  text("Statistics Analysis: on",300,580);
  text("You cannot set speed in this mode.",300,560);
}
  textAlign(LEFT);
  fill(255);
 text("Server Time: " + MyPrivateServer.getTime(),240,80);
  textAlign(LEFT);
 text("Rokas: " + MyPrivateServer.getRokas(),50,110);
  textAlign(LEFT);
 text("Arrows: " + MyPrivateServer.getArrows(),50,130);
  textAlign(LEFT);
 text("Frogs: " + MyPrivateServer.getFrogs(),50,150);
  textAlign(LEFT);
 text("Masks: " + MyPrivateServer.getMasks(),50,170);
  textAlign(LEFT);
 text("Diaries: " + MyPrivateServer.getDiaries(),50,190);
  textAlign(LEFT);
 text("Cams: " + MyPrivateServer.getCams(),50,210);
  textAlign(LEFT);
 text("Spheres: " + MyPrivateServer.getSpheres(),50,230);
  textAlign(LEFT);
 text("Money: " + MyPrivateServer.getLire(),450,110);
  textAlign(LEFT);
 text("Trowels: " + MyPrivateServer.getTrowels(),450,130);
  textAlign(LEFT);
 text("Dirt Piles: " + MyPrivateServer.getDirtPiles(),450,150);
  textAlign(LEFT);
 text("Kars Obtained: " + MyPrivateServer.getKars(),15,290);
  textAlign(LEFT);
 text("Oreos Obtained: " + MyPrivateServer.getOreos(),225,290);
  textAlign(LEFT);
 text("Mangas Obtained: " + MyPrivateServer.getMangas(),415,290);
  textAlign(CENTER);
 text("Current Stand/Spec: " + MyPrivateServer.getStand(),300,540);
 textAlign(LEFT);
 text("STWs Obtained: " + MyPrivateServer.getSTWs(),15,310);
 textAlign(LEFT);
 text("MiGs Obtained: " + MyPrivateServer.getMiGs(),415,310);
 textAlign(LEFT);
 text("Sewer Farming = " + sewers, 420, 30); 
 text("Framerate: " + speed, 15, 30);
 if(statsMode == true){
  text("Analyze Stand/Spec: " + select[x],20,620);
  if(running == false){text("Press the UP and DOWN arrow keys to select. Press ENTER to confirm.",20,640);}
  if(running == true){
    if (Statistics.interval(select[x]).contains("more")){
     text(Statistics.interval(select[x]),20,660);
   } else {
    text("We are 95% confident that the interval from " + Statistics.interval(select[x]) + " contains the true mean time needed to obtain " + select[x] + ".",20,640);
    if(select[x].equals("Kars")){
      text(Statistics.getKarsSize() + " total Kars samples.",20,660);
    } else if(select[x].equals("Oreo")){
      text(Statistics.getOreoSize() + " total Oreo samples.",20,660);
    } else if(select[x].equals("Manga")){
      text(Statistics.getMangaSize() + " total Manga samples.",20,660);
    } else if(select[x].equals("STW")){
      text(Statistics.getStwSize() + " total Shadow The World samples.",20,660);
    } else if(select[x].equals("MiG")){
      text(Statistics.getMigSize() + " total Made in Galaxy samples.",20,660);
    }
   }
  }
  if(Statistics.getKarsSize() == 100 && select[x].equals("Kars")){
      running = false;
      text("We are 95% confident that the interval from " + Statistics.interval(select[x]) + " contains the true mean time needed to obtain " + select[x] + ".",20,660);
    } else if(Statistics.getOreoSize() == 100 && select[x].equals("Oreo")){
      running = false;
      text("We are 95% confident that the interval from " + Statistics.interval(select[x]) + " contains the true mean time needed to obtain " + select[x] + ".",20,660);
    } else if(Statistics.getMangaSize() == 100 && select[x].equals("Manga")){
      running = false;
      text("We are 95% confident that the interval from " + Statistics.interval(select[x]) + " contains the true mean time needed to obtain " + select[x] + ".",20,660);
    } else if(Statistics.getStwSize() == 100 && select[x].equals("STW")){
      running = false;
      text("We are 95% confident that the interval from " + Statistics.interval(select[x]) + " contains the true mean time needed to obtain " + select[x] + ".",20,660);
    } else if(Statistics.getMigSize() == 100 && select[x].equals("MiG")){
      running = false;
      text("We are 95% confident that the interval from " + Statistics.interval(select[x]) + " contains the true mean time needed to obtain " + select[x] + ".",20,660);
    }
 }
}

public String arrowRoll(){
  String stand;
  int x = (int)(Math.random()*100);
  if( x >= 47){
    stand = ArrowStands[(int)(Math.random()*5)];
  }
  else if( x >= 14){
    stand = ArrowStands[(int)(Math.random()*2+5)];
  }
  else if( x >= 7){
    stand = ArrowStands[(int)(Math.random()*5+7)];
  }
  else if( x >= 3){
    stand = ArrowStands[(int)(Math.random()*6+12)];
  }
  else if( x >= 1){
    stand = ArrowStands[(int)(Math.random()*5+18)];
  }
  else{
    stand = ArrowStands[(int)(Math.random()*7+23)];
  }
  return stand;
}

public class Server{
  private int frogs, masks, spheres, arrows, rokas, lire, trowels, dirtPiles, Kars, Oreos, Mangas, cams, diaries, STWs, MiGs;
  private double time;
  private String stand;
  public Server(){
  time = 0;
  frogs = 0;
  masks = 0;
  spheres = 0;
  arrows = 0;
  rokas = 0;
  lire = 0;
  trowels = 0;
  dirtPiles = 5;
  Kars = 0;
  Oreos = 0;
  Mangas = 0;
  stand = "Standless";
  cams = 0;
  diaries = 0;
  STWs = 0;
  MiGs = 0;
  }
  public void spawn(){
    time+= 0.25;
    if (time%2 == 0){
      rokas++;
    } else if (time%2 == 1){
        arrows++;
    }
    if (time%10 == 0){
      if((int)(Math.random()*5) == 0){
        frogs++;
        text("Frog spawned!",300,350);
        MyLogs.display("Frog spawned!");
      }
    }
    if (time%60 == 0){
      masks++;
      text("Vampire Mask dropped from DIO!",300,350);
      MyLogs.display("Vampire Mask dropped from DIO!");
      if((int)(Math.random()*10) >=3){
        diaries++;
        text("Diary dropped from DIO!",300,370);
        MyLogs.display("Diary dropped from DIO!");
      }
      if((int)(Math.random()*10) == 0){
        cams++;
        text("Camera dropped from DIO!",300,390);
        MyLogs.display("Camera dropped from DIO!");
      }
    }
    if (time%0.75 == 0){
      lire+=150;
    }
    if (time%3 == 0){
      dirtPiles = 5;
    }
  }
  public void reset(){
    time = 0;
    frogs = 0;
    masks = 0;
    spheres = 0;
    arrows = 0;
    rokas = 0;
    lire = 0;
    trowels = 0;
    dirtPiles = 5;
    Kars = 0;
    Oreos = 0;
    Mangas = 0;
    stand = "Standless";
    cams = 0;
    diaries = 0;
    STWs = 0;
    MiGs = 0;
  }
  
  public void setTime(double t){time = t;}
  public double getTime(){return time;}
  public void setFrogs(int f){frogs = f;}
  public int getFrogs(){return frogs;}
  public void setMasks(int m){masks = m;}
  public int getMasks(){return masks;}
  public void setSpheres(int s){spheres = s;}
  public int getSpheres(){return spheres;}
  public void setArrows(int a){arrows = a;}
  public int getArrows(){return arrows;}
  public void setRokas(int r){rokas = r;}
  public int getRokas(){return rokas;}
  public void setLire(int l){lire = l;}
  public int getLire(){return lire;}
  public void setTrowels(int s){trowels = s;}
  public int getTrowels(){return trowels;}
  public void setDirtPiles(int d){dirtPiles = d;}
  public int getDirtPiles(){return dirtPiles;}
  public void setKars(int k){Kars = k;}
  public int getKars(){return Kars;}
  public void setOreos(int o){Oreos = o;}
  public int getOreos(){return Oreos;}
  public void setMangas(int M){Mangas = M;}
  public int getMangas(){return Mangas;}
  public void setStand(String powa){stand = powa;}
  public String getStand(){return stand;}
  public void setCams(int c){cams = c;}
  public int getCams(){return cams;}
  public void setDiaries(int di){diaries = di;}
  public int getDiaries(){return diaries;}
  public void setSTWs(int S){STWs = S;}
  public int getSTWs(){return STWs;}
  public void setMiGs(int Mi){MiGs = Mi;}
  public int getMiGs(){return MiGs;}
}

public void keyPressed(){
  if(key == 's' && statsMode == false){
    if(sewers == true){sewers = false;}
    else {sewers = true;}
  } else if(key == 's' && statsMode == true){
    if(sewers == true && running == false){sewers = false;}
    else if (running == false){sewers = true;}
  }

  if(key == ' ' && statsMode == false){
    if(running == false){running = true;}
    else {running = false;}
  }

  if (key == 'i' && statsMode == false){
    if (speed != 1){
      speed += 5;
    } else {
      speed += 4;
    }
  }

  if (key == 'k' && statsMode == false){
    if (speed != 5 && speed != 1){
      speed -= 5;
    } else {
      speed = 1;
    }
  }

  if (key == 'h' && statsMode == false){
    if(speed != 1000){
      speed = 1000;
    } else {
      speed = 5;
    }
  }

  if (key =='p' && running == false && statsMode == false){
    statsMode = true;
    MyPrivateServer.reset();
  } else if (key == 'p' && statsMode == true && running == false){
    statsMode = false;
    MyPrivateServer.reset();
  }

  if(statsMode == true){
    if (keyCode == UP && x != 4){
      x++;
      MyPrivateServer.reset();
    }
    else if (keyCode == UP){
      x = 0;
      MyPrivateServer.reset();
    }
    if (keyCode == DOWN && x != 0){
      x--;
      MyPrivateServer.reset();
    }
    else if (keyCode == DOWN){
      x = 4;
      MyPrivateServer.reset();
    }
  }
  if ((key == ENTER && statsMode == true && running == false) && ((Statistics.getKarsSize() != 100 && select[x].equals("Kars")) || (Statistics.getOreoSize() != 100 && select[x].equals("Oreo")) || (Statistics.getMangaSize() != 100 && select[x].equals("Manga")) || (Statistics.getStwSize() != 100 && select[x].equals("STW")) || (Statistics.getMigSize() != 100 && select[x].equals("MiG")))){
    running = true;
  } else if (key == ENTER){
    running = false;
  }

}

public void sewerFarm(){
  if (MyPrivateServer.getTime()%2 == 0){
    if((int)(Math.random()*100) >= 3){
      MyPrivateServer.setLire(MyPrivateServer.getLire()+450);
    }
    else {
      MyPrivateServer.setMasks(MyPrivateServer.getMasks()+1);
    }
    if ((int)(Math.random()*100) < 25){
      minionDrop();
      minionDrop();
    } else {
      minionDrop();
    }
    minionDrop();
  }
}

public void minionDrop(){
  int x =  (int)(Math.random()*100);
  if(x >= 25){
  }
  else if (x >= 5){
    MyPrivateServer.setLire(MyPrivateServer.getLire()+150);
  } else {
  }
}

public void buy(){
  if (MyPrivateServer.getLire()>=3500){
    MyPrivateServer.setLire(MyPrivateServer.getLire()-3500);
    MyPrivateServer.setTrowels(MyPrivateServer.getTrowels() + 1);
  }
}

public void trowelFarm(){
  buy();
  String item = dig();
  if (item.equals("Banknote")){
    MyPrivateServer.setLire(MyPrivateServer.getLire()+150);
  }
  if (item.equals("Rokakaka")){
    MyPrivateServer.setRokas(MyPrivateServer.getRokas()+1);
  }
  if (item.equals("Arrow")){
    MyPrivateServer.setArrows(MyPrivateServer.getArrows()+1);
  }
  if (item.equals("Vampire Mask")){
    MyPrivateServer.setMasks(MyPrivateServer.getMasks()+1);
  }
  if(item.equals("DIO's Diary")){
    MyPrivateServer.setDiaries(MyPrivateServer.getDiaries()+1);
  }
  if (item.equals("Monochromatic Sphere")){
    MyPrivateServer.setSpheres(MyPrivateServer.getSpheres()+1);
  }
  textAlign(CENTER);
  if(!item.equals("null")){
    text(item + " Obtained!",300,430);
    MyLogs.display(item + " Obtained!");
  }
}

public String dig(){
  int x = (int)(Math.random()*100000);
  String item = "null";
  if (digs == 0 && MyPrivateServer.getTrowels() != 0){
    MyPrivateServer.setTrowels(MyPrivateServer.getTrowels() - 1);
    digs = 3;
  }
  if (digs > 0 && MyPrivateServer.getDirtPiles() > 0){
    digs--;
    MyPrivateServer.setDirtPiles(MyPrivateServer.getDirtPiles() - 1);
    if(x >= 62500){
      item = TrowelDig[1];
    }
    else if(x >= 37500){
      item = TrowelDig[0];
    }
    else if(x >= 3750){
      item = TrowelDig[(int)(Math.random()*2+2)];
    }
    else if(x >= 1875){
      item = TrowelDig[4];
    }
    else if(x >= 375){
      item = TrowelDig[(int)(Math.random()*2+5)];
    } else {
      item = TrowelDig[7];
    }
  }
   return item; 
}

public void arrowFarm(){
  String stand;
  if ((MyPrivateServer.getStand().equals("Standless")) && MyPrivateServer.getArrows() > 0){
    stand = arrowRoll();
    MyPrivateServer.setArrows(MyPrivateServer.getArrows()-1);
    MyPrivateServer.setStand(stand);
    text(stand + " Obtained!",300,450);
    MyLogs.display(stand + " Obtained!");
  }
  if ((!MyPrivateServer.getStand().equals("Doppio's King Crimson")) && (!MyPrivateServer.getStand().equals("Whitesnake")) && (!MyPrivateServer.getStand().equals("The World")) && (MyPrivateServer.getRokas() > 0)){
    MyPrivateServer.setRokas(MyPrivateServer.getRokas()-1);
    text("Stand Roka'd!",300,450);
    MyLogs.display("Stand Roka'd!");
    MyPrivateServer.setStand("Standless");
  }
}

public void rareRoll(){
  if((MyPrivateServer.getStand().equals("Doppio's King Crimson")) && MyPrivateServer.getFrogs() >= 2){
    MyPrivateServer.setFrogs(MyPrivateServer.getFrogs()-1);
    MyPrivateServer.setStand("Two-Arm Doppio's King Crimson");
    text("Doppio's King Crimson upgraded to Two-Arm Doppio's King Crimson!",300,470);
    MyLogs.display("Doppio's King Crimson upgraded to Two-Arm Doppio's King Crimson!");
    MyPrivateServer.setFrogs(MyPrivateServer.getFrogs()-1);
    if ((int)(Math.random()*100) >= 1){
       MyPrivateServer.setStand("Full-Body King Crimson");
       text("Two-Arm Doppio's King Crimson upgraded to Full-Body King Crimson!",300,490);
       MyLogs.display("Two-Arm Doppio's King Crimson upgraded to Full-Body King Crimson!");
    } else {
       MyPrivateServer.setStand("Manga King Crimson");
       MyPrivateServer.setMangas(MyPrivateServer.getMangas()+1);
       text("Two-Arm Doppio's King Crimson upgraded to Manga King Crimson!",300,510);
       MyLogs.display("Two-Arm Doppio's King Crimson upgraded to Manga King Crimson!");
       if (select[x] == "Manga"){
        Statistics.setMangaSample(MyPrivateServer.getTime());
        MyPrivateServer.reset();
       }
    }
    if ((MyPrivateServer.getSpheres() > 0) && (MyPrivateServer.getStand().equals("Full-Body King Crimson"))){
      MyPrivateServer.setSpheres(MyPrivateServer.getSpheres()-1);
      MyPrivateServer.setStand("Monochromatic King Crimson");
      MyPrivateServer.setOreos(MyPrivateServer.getOreos()+1);
      text("Full-Body King Crimson upgraded to Monochromatic King Crimson!",300,510);
      MyLogs.display("Full-Body King Crimson upgraded to Monochromatic King Crimson!");
      if (select[x] == "Oreo"){
        Statistics.setOreoSample(MyPrivateServer.getTime());
        MyPrivateServer.reset();
       }
    }
  } else if((MyPrivateServer.getStand().equals("Doppio's King Crimson")) && (MyPrivateServer.getRokas() > 0)){
    MyPrivateServer.setRokas(MyPrivateServer.getRokas()-1);
    text("Stand Roka'd!",300,450);
    MyLogs.display("Stand Roka'd!");
    MyPrivateServer.setStand("Standless");
  }
  
  if((!MyPrivateServer.getStand().equals("Whitesnake")) && (!MyPrivateServer.getStand().equals("The World")) && (MyPrivateServer.getMasks() >=2)){
     MyPrivateServer.setMasks(MyPrivateServer.getMasks()-1);
     MyPrivateServer.setStand("Vampire");
     text("Vampire Obtained!",300,470);
     MyLogs.display("Vampire Obtained!");
     MyPrivateServer.setMasks(MyPrivateServer.getMasks()-1);
     if((int)(Math.random()*17) >= 1){
       MyPrivateServer.setStand("Santana");
       text("Upgraded Vampire to Santana!",300,490);
       MyLogs.display("Upgraded Vampire to Santana!");
     } else {
       MyPrivateServer.setStand("Kars");
       MyPrivateServer.setKars(MyPrivateServer.getKars()+1);
       text("Upgraded Vampire to Kars!",300,510);
       MyLogs.display("Upgraded Vampire to Kars!");
       if (select[x] == "Kars"){
        Statistics.setKarsSample(MyPrivateServer.getTime());
        MyPrivateServer.reset();
       }
     }
  }
  if((MyPrivateServer.getStand().equals("Whitesnake")) && (MyPrivateServer.getDiaries() >= 2)){
     MyPrivateServer.setDiaries(MyPrivateServer.getDiaries()-1);
     MyPrivateServer.setStand("C-Moon");
     text("Upgraded Whitesnake to C-Moon!",300,470);
     MyLogs.display("Upgraded Whitesnake to C-Moon!");
     MyPrivateServer.setDiaries(MyPrivateServer.getDiaries()-1);
     if ((int)(Math.random()*100) >= 1){
       MyPrivateServer.setStand("Made in Heaven");
       text("C-Moon upgraded to Made in Heaven!",300,490);
       MyLogs.display("C-Moon upgraded to Made in Heaven!");
     } else {
       MyPrivateServer.setStand("Made in Galaxy");
       MyPrivateServer.setMiGs(MyPrivateServer.getMiGs()+1);
       text("C-Moon upgraded to Made in Galaxy!",300,490);
       MyLogs.display("C-Moon upgraded to Made in Galaxy!");
       if (select[x] == "MiG"){
        Statistics.setMigSample(MyPrivateServer.getTime());
        MyPrivateServer.reset();
       }
     }
  } else if((MyPrivateServer.getStand().equals("Whitesnake")) && (MyPrivateServer.getRokas() > 0)){
    MyPrivateServer.setRokas(MyPrivateServer.getRokas()-1);
    text("Stand Roka'd!",300,450);
    MyLogs.display("Stand Roka'd!");
    MyPrivateServer.setStand("Standless");
  }
  
  if((MyPrivateServer.getStand().equals("The World")) && (MyPrivateServer.getMasks() >= 1) && (MyPrivateServer.getCams() >= 1)){
    MyPrivateServer.setMasks(MyPrivateServer.getMasks()-1);
    MyPrivateServer.setStand("Vampiric The World");
    text("Upgraded The World to Vampiric The World!",300,470);
    MyLogs.display("Upgraded The World to Vampiric The World!");
    MyPrivateServer.setCams(MyPrivateServer.getCams()-1);
    MyPrivateServer.setStand("Shadow The World");
    MyPrivateServer.setSTWs(MyPrivateServer.getSTWs()+1);
    text("Upgraded Vampiric The World to Shadow The World!",300,490);
    MyLogs.display("Upgraded Vampiric The World to Shadow The World!");
    if (select[x] == "STW"){
        Statistics.setStwSample(MyPrivateServer.getTime());
        MyPrivateServer.reset();
       }
  } else if((MyPrivateServer.getStand().equals("The World")) && (MyPrivateServer.getRokas() > 0) && (MyPrivateServer.getCams() == 0)){
    MyPrivateServer.setRokas(MyPrivateServer.getRokas()-1);
    text("Stand Roka'd!",300,450);
    MyLogs.display("Stand Roka'd!");
    MyPrivateServer.setStand("Standless");
  }
}

public class Logs{
  private String[] log;
  public Logs(){
  log = new String[28];
  log[0] = " ";
  log[1] = " ";
  log[2] = " ";
  log[3] = " ";
  log[4] = " ";
  log[5] = " ";
  log[6] = " ";
  log[7] = " ";
  log[8] = " ";
  log[9] = " ";
  log[10] = " ";
  log[11] = " ";
  log[12] = " ";
  log[13] = " ";
  log[14] = " ";
  log[15] = " ";
  log[16] = " ";
  log[17] = " ";
  log[18] = " ";
  log[19] = " ";
  log[20] = " ";
  log[21] = " ";
  log[22] = " ";
  log[23] = " ";
  log[24] = " ";
  log[25] = " ";
  log[26] = " ";
  log[27] = " ";
  }
  public void show(){
  textAlign(CENTER);
  text(log[0],900,580);
  text(log[1],900,560);
  text(log[2],900,540);
  text(log[3],900,520);
  text(log[4],900,500);
  text(log[5],900,480);
  text(log[6],900,460);
  text(log[7],900,440);
  text(log[8],900,420);
  text(log[9],900,400);
  text(log[10],900,380);
  text(log[11],900,360);
  text(log[12],900,340);
  text(log[13],900,320);
  text(log[14],900,300);
  text(log[15],900,280);
  text(log[16],900,260);
  text(log[17],900,240);
  text(log[18],900,220);
  text(log[19],900,200);
  text(log[20],900,180);
  text(log[21],900,160);
  text(log[22],900,140);
  text(log[23],900,120);
  text(log[24],900,100);
  text(log[25],900,80);
  text(log[26],900,60);
  text(log[27],900,40);
  }
  public void display(String s){
    log[27] = log[26];
    log[26] = log[25];
    log[25] = log[24];
    log[24] = log[23];
    log[23] = log[22];
    log[22] = log[21];
    log[21] = log[20];
    log[20] = log[19];
    log[19] = log[18];
    log[18] = log[17];
    log[17] = log[16];
    log[16] = log[15];
    log[15] = log[14];
    log[14] = log[13];
    log[13] = log[12];
    log[12] = log[11];
    log[11] = log[10];
    log[10] = log[9];
    log[9] = log[8];
    log[8] = log[7];
    log[7] = log[6];
    log[6] = log[5];
    log[5] = log[4];
    log[4] = log[3];
    log[3] = log[2];
    log[2] = log[1];
    log[1] = log[0];
    log[0] = s;
  }
}

public class ConfidenceInterval{
  private ArrayList<Double> karsSample, oreoSample, mangaSample, stwSample, migSample;
  public ConfidenceInterval(){
    karsSample = new ArrayList<Double>();
    oreoSample = new ArrayList<Double>();
    mangaSample = new ArrayList<Double>();
    stwSample = new ArrayList<Double>();
    migSample = new ArrayList<Double>();
  }
  public String interval(String s){
    double[] list;
    String interval = "";
    double mean;
    double stDev;
    int add = 0;
    if(s.equals("Kars") && karsSample.size()>=30){
      list = new double[karsSample.size()];
      for(int i=0; i<karsSample.size();i++){
        add += karsSample.get(i);
        list[i]=karsSample.get(i);
      }
      mean = add/karsSample.size();
      stDev = sdDev(list);
      interval = mean-tDist[karsSample.size()-30]*stDev/sqrt(karsSample.size()) + " to " + mean+tDist[karsSample.size()-30]*stDev/sqrt(karsSample.size());
    } else if(s.equals("Kars")){
      interval = 30-karsSample.size() + " more Kars samples needed.";
    }
    if(s.equals("Oreo") && oreoSample.size()>=30){
      list = new double[oreoSample.size()];
      for(int i=0; i<oreoSample.size();i++){
        add += oreoSample.get(i);
        list[i]=oreoSample.get(i);
      }
      mean = add/oreoSample.size();
      stDev = sdDev(list);
      interval = mean-tDist[oreoSample.size()-30]*stDev/sqrt(oreoSample.size()) + " to " + mean+tDist[oreoSample.size()-30]*stDev/sqrt(oreoSample.size());
    } else if(s.equals("Oreo")){
      interval = 30-oreoSample.size() + " more Oreo samples needed.";
    }
    if(s.equals("Manga") && mangaSample.size()>=30){
      list = new double[mangaSample.size()];
      for(int i=0; i<mangaSample.size();i++){
        add += mangaSample.get(i);
        list[i]=mangaSample.get(i);
      }
      mean = add/mangaSample.size();
      stDev = sdDev(list);
      interval = mean-tDist[mangaSample.size()-30]*stDev/sqrt(mangaSample.size()) + " to " + mean+tDist[mangaSample.size()-30]*stDev/sqrt(mangaSample.size());
    } else if(s.equals("Manga")){
      interval = 30-mangaSample.size() + " more Manga samples needed.";
    }
    if(s.equals("STW") && stwSample.size()>=30){
      list = new double[stwSample.size()];
      for(int i=0; i<stwSample.size();i++){
        add += stwSample.get(i);
        list[i]=stwSample.get(i);
      }
      mean = add/stwSample.size();
      stDev = sdDev(list);
      interval = mean-tDist[stwSample.size()-30]*stDev/sqrt(stwSample.size()) + " to " + mean+tDist[stwSample.size()-30]*stDev/sqrt(stwSample.size());
    } else if(s.equals("STW")){
      interval = 30-stwSample.size() + " more Shadow The World samples needed.";
    }
    if(s.equals("MiG") && migSample.size()>=30){
      list = new double[migSample.size()];
      for(int i=0; i<migSample.size();i++){
        add += migSample.get(i);
        list[i]=migSample.get(i);
      }
      mean = add/migSample.size();
      stDev = sdDev(list);
      interval = mean-tDist[migSample.size()-30]*stDev/sqrt(migSample.size()) + " to " + mean+tDist[migSample.size()-30]*stDev/sqrt(migSample.size());
    } else if(s.equals("MiG")){
      interval = 30-migSample.size() + " more Made in Galaxy samples needed.";
    }
    return interval;
  }
  public void setKarsSample(double k){karsSample.add(k);}
  public int getKarsSize(){return karsSample.size();}
  public void setOreoSample(double o){oreoSample.add(o);}
  public int getOreoSize(){return oreoSample.size();}
  public void setMangaSample(double m){mangaSample.add(m);}
  public int getMangaSize(){return mangaSample.size();}
  public void setStwSample(double s){stwSample.add(s);}
  public int getStwSize(){return stwSample.size();}
  public void setMigSample(double M){migSample.add(M);}
  public int getMigSize(){return migSample.size();}
}

public double sdDev(double[] list){
  double add = 0;
  double mean;
  double[] part = new double[list.length];
  double stDev;
  for(int i=0;i<list.length;i++){
    add+=list[i];
  }
  mean = add/list.length;
  for(int i=0;i<list.length;i++){
    part[i] = Math.pow((list[i]-mean),2);
  }
  add = 0;
  for(int i=0;i<list.length;i++){
    add+=part[i];
  }
  stDev = sqrt((float)(add/list.length));
  return stDev;
}