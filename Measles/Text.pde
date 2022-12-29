//Global Variables
String title = "Measles Assignment";
String quitText = "Exit (E)";
String stopText = "Pause (P)";
String startText = "Press S or Left Click To Start \n Press Right Click To Reset \n Press P To Pause";
float TitleX, TitleY, TitleW, TitleH, TitleR;
PFont TitleF;
float QuitTX, QuitTY, QuitTW, QuitTH;
PFont QuitF;
float StartTX, StartTY, StartTW, StartTH;
PFont StartF;
//
void titleText() {
  //Population
  TitleX = width*1.4/5;
  TitleY = height*1/50;
  TitleW = width*2.1/5;
  TitleH = height*1/12;
  TitleR = 10;
  //
  TitleF = createFont("Chalkboard-Bold-48", 281); 
  //
  rect(TitleX, TitleY, TitleW, TitleH, TitleR);
  //
  fill(Black); 
  textAlign( CENTER, CENTER );
  int titleSize = 40; 
  textFont(TitleF, titleSize);
  text(title, TitleX, TitleY, TitleW, TitleH);
  fill(White);
}//End titleText
//
void quitText() {
  //Population
  QuitTX = MiddleX - SmallD/1.49;
  QuitTY = MiddleY - SmallD/1.97;
  QuitTW = SmallD*1/5;
  QuitTH = SmallD*1/10;
  QuitF = createFont("Chalkboard-Bold-48", 603);
  int QuitS = 35;
  //
  fill(Black);
  textAlign(CENTER, CENTER);
  textFont(QuitF, QuitS);
  text(quitText, QuitTX, QuitTY, QuitTW, QuitTH);
}//End quitText
//
void startText() {
  //Population
  StartTX = MiddleX-SmallD*1/4;
  StartTY = MiddleY + SmallD*1/2.6;
  StartTW = SmallD*1/2;
  StartTH = SmallD*1/10;
  StartF = createFont("Chalkboard-Bold-48", 600);
  int StartS = 15;
  //
  textAlign(CENTER, CENTER);
  textFont(StartF, StartS);
  text(startText, StartTX, StartTY, StartTW, StartTH);
}//End startText
//
