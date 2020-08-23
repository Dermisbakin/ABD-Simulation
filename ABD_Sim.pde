String[] ArrowStands = new String[30];
Server MyPrivateServer = new Server();
String[] TrowelDig = new String[8];
int digs = 0;
boolean sewers = true;
boolean running = false;

void setup(){
 size(400,400); 
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
   frameRate(6000);
   textSize(15);
   fill(255);
}

public void draw(){
 background(0);
 if (running == false){noLoop();}
 textAlign(LEFT);
 text("ABD Farming Sim. 1.0",120,50);
 MyPrivateServer.spawn();
 if (sewers == true){sewerFarm();}
 trowelFarm();
 arrowFarm();
 rareRoll();
  textAlign(LEFT);
 text("Server Time: " + MyPrivateServer.getTime(),130,80);
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
 text("Money: " + MyPrivateServer.getLire(),250,110);
  textAlign(LEFT);
 text("Trowels: " + MyPrivateServer.getTrowels(),250,130);
  textAlign(LEFT);
 text("Dirt Piles: " + MyPrivateServer.getDirtPiles(),250,150);
  textAlign(LEFT);
 text("Kars Obtained: " + MyPrivateServer.getKars(),15,250);
  textAlign(LEFT);
 text("Oreos Obtained: " + MyPrivateServer.getOreos(),120,270);
  textAlign(LEFT);
 text("Mangas Obtained: " + MyPrivateServer.getMangas(),240,250);
  textAlign(CENTER);
 text("Current Stand/Spec: " + MyPrivateServer.getStand(),200,380);
 textAlign(LEFT);
 text("STWs Obtained: " + MyPrivateServer.getSTWs(),15,290);
 textAlign(LEFT);
 text("MiGs Obtained: " + MyPrivateServer.getMiGs(),240,290);
 textAlign(LEFT);
 text("Sewer Farming = " + sewers, 230, 30); 
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
      }
    }
    if (time%60 == 0){
      masks++;
      if((int)(Math.random()*10) >=3){
        diaries++;
      }
      if((int)(Math.random()*10) == 0){
        cams++;
      }
    }
    if (time%0.75 == 0){
      lire+=150;
    }
    if (time%3 == 0){
      dirtPiles = 5;
    }
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
  if(key == 's'){
    if(sewers == true){sewers = false;}
    else {sewers = true;}
  }
  if(key == ' '){
    if(running == false){
    running = true;
    loop();
  } else {
    running = false;
    }
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
  text(item + " Obtained!",200,330);
  if(!item.equals("null")){
    System.out.println(item + " Obtained!");
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
    text(stand + " Obtained!",200,350);
    System.out.println(stand + " Obtained!");
  }
  if ((!MyPrivateServer.getStand().equals("Doppio's King Crimson")) && (!MyPrivateServer.getStand().equals("Whitesnake")) && (!MyPrivateServer.getStand().equals("The World")) && (MyPrivateServer.getRokas() > 0)){
    MyPrivateServer.setRokas(MyPrivateServer.getRokas()-1);
    text("Stand Roka'd!",200,350);
    MyPrivateServer.setStand("Standless");
  }
}

public void rareRoll(){
  if((MyPrivateServer.getStand().equals("Doppio's King Crimson")) && MyPrivateServer.getFrogs() >= 2){
    MyPrivateServer.setFrogs(MyPrivateServer.getFrogs()-1);
    MyPrivateServer.setStand("Two-Arm Doppio's King Crimson");
    text("Doppio's King Crimson upgraded to Two-Arm Doppio's King Crimson!",200,350);
    System.out.println("Doppio's King Crimson upgraded to Two-Arm Doppio's King Crimson!");
    MyPrivateServer.setFrogs(MyPrivateServer.getFrogs()-1);
    if ((int)(Math.random()*100) >= 1){
       MyPrivateServer.setStand("Full-Body King Crimson");
       text("Two-Arm Doppio's King Crimson upgraded to Full-Body King Crimson!",200,350);
      System.out.println("Two-Arm Doppio's King Crimson upgraded to Full-Body King Crimson!");
    } else {
       MyPrivateServer.setStand("Manga King Crimson");
       MyPrivateServer.setMangas(MyPrivateServer.getMangas()+1);
       text("Two-Arm Doppio's King Crimson upgraded to Manga King Crimson!",200,350);
      System.out.println("Two-Arm Doppio's King Crimson upgraded to Manga King Crimson!");
    }
    if ((MyPrivateServer.getSpheres() > 0) && (MyPrivateServer.getStand().equals("Full-Body King Crimson"))){
      MyPrivateServer.setSpheres(MyPrivateServer.getSpheres()-1);
      MyPrivateServer.setStand("Monochromatic King Crimson");
      MyPrivateServer.setOreos(MyPrivateServer.getOreos()+1);
      text("Full-Body King Crimson upgraded to Monochromatic King Crimson!",200,350);
      System.out.println("Full-Body King Crimson upgraded to Monochromatic King Crimson!");
    }
  } else if((MyPrivateServer.getStand().equals("Doppio's King Crimson")) && (MyPrivateServer.getRokas() > 0)){
    MyPrivateServer.setRokas(MyPrivateServer.getRokas()-1);
    text("Stand Roka'd!",200,350);
    MyPrivateServer.setStand("Standless");
  }
  
  if((!MyPrivateServer.getStand().equals("Whitesnake")) && (!MyPrivateServer.getStand().equals("The World")) && (MyPrivateServer.getMasks() >=2)){
     MyPrivateServer.setMasks(MyPrivateServer.getMasks()-1);
     MyPrivateServer.setStand("Vampire");
     text("Vampire Obtained!",200,350);
     System.out.println("Vampire Obtained!");
     MyPrivateServer.setMasks(MyPrivateServer.getMasks()-1);
     if((int)(Math.random()*17) >= 1){
       MyPrivateServer.setStand("Santana");
       text("Upgraded Vampire to Santana!",200,350);
       System.out.println("Upgraded Vampire to Santana!");
     } else {
       MyPrivateServer.setStand("Kars");
       MyPrivateServer.setKars(MyPrivateServer.getKars()+1);
       text("Upgraded Vampire to Kars!",200,350);
       System.out.println("Upgraded Vampire to Kars!");
     }
  }
  if((MyPrivateServer.getStand().equals("Whitesnake")) && (MyPrivateServer.getDiaries() >= 2)){
     MyPrivateServer.setDiaries(MyPrivateServer.getDiaries()-1);
     MyPrivateServer.setStand("C-Moon");
     text("Upgraded Whitesnake to C-Moon!",200,320);
     System.out.println("Upgraded Whitesnake to C-Moon!");
     MyPrivateServer.setDiaries(MyPrivateServer.getDiaries()-1);
     if ((int)(Math.random()*100) >= 1){
       MyPrivateServer.setStand("Made in Heaven");
       text("C-Moon upgraded to Made in Heaven!",200,350);
       System.out.println("C-Moon upgraded to Made in Heaven!");
     } else {
       MyPrivateServer.setStand("Made in Galaxy");
       MyPrivateServer.setMiGs(MyPrivateServer.getMiGs()+1);
       text("C-Moon upgraded to Made in Galaxy!",200,350);
       System.out.println("C-Moon upgraded to Made in Galaxy!");
     }
  } else if((MyPrivateServer.getStand().equals("Whitesnake")) && (MyPrivateServer.getRokas() > 0)){
    MyPrivateServer.setRokas(MyPrivateServer.getRokas()-1);
    text("Stand Roka'd!",200,350);
    MyPrivateServer.setStand("Standless");
  }
  
  if((MyPrivateServer.getStand().equals("The World")) && (MyPrivateServer.getMasks() >= 1) && (MyPrivateServer.getCams() >= 1)){
    MyPrivateServer.setMasks(MyPrivateServer.getMasks()-1);
    MyPrivateServer.setStand("Vampiric The World");
    text("Upgraded The World to Vampiric The World!",200,350);
    System.out.println("Upgraded The World to Vampiric The World!");
    MyPrivateServer.setCams(MyPrivateServer.getCams()-1);
    MyPrivateServer.setStand("Shadow The World");
    MyPrivateServer.setSTWs(MyPrivateServer.getSTWs()+1);
    text("Upgraded Vampiric The World to Shadow The World!",200,350);
    System.out.println("Upgraded Vampiric The World to Shadow The World!");
  } else if((MyPrivateServer.getStand().equals("The World")) && (MyPrivateServer.getRokas() > 0) && (MyPrivateServer.getCams() == 0)){
    MyPrivateServer.setRokas(MyPrivateServer.getRokas()-1);
    text("Stand Roka'd!",200,350);
    MyPrivateServer.setStand("Standless");
  }
}
