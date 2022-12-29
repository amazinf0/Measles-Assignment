//Global Variables
color red=#FF0022, resetDefaultInk=#FFFFFF; // not nightMode friendly
String title = "Measles Assignment";
String quitText = "Exit (E)";
String stopText = "Pause (P)";
String startText = "Press S or Left Click To Start \n Press Right Click To Reset \n Press P To Pause";
float titleX, titleY, titleWidth, titleHeight, titleRadii;
PFont titleFont;
float quitTextX, quitTextY, quitTextWidth, quitTextHeight;
PFont quitTextFont;
float stopTextX, stopTextY, stopTextWidth, stopTextHeight;
PFont stopTextFont;
float startTextX, startTextY, startTextWidth, startTextHeight;
PFont startTextFont;
//
void titleText() {
  //Population
  titleX = width*1.4/5;
  titleY = height*1/50;
  titleWidth = width*2.1/5;
  titleHeight = height*1/12;
  titleRadii = 10;
  //
  //Single Executed Code
  //Fonts rom OS (Operating System)
  //String[] fontList = PFont.list(); //To list all fonts available on OS
  //printArray(fontList); //For Listing all possible fonts to choose from, then createFont
  titleFont = createFont("Impact", 281); //Verify the font exists in Processing.JAVA
  // Tools / Create Font / Find font in list to verify / DO NOT PRESS "OK" (BUG)
  //
  //Layout our text space and typographical features
  rect(titleX, titleY, titleWidth, titleHeight, titleRadii);
  //
  //Repeated Executed Code
  fill(red); //Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER ); //Align X*Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  int titleSize = 40; //Change this number until it fits
  textFont(titleFont, titleSize);
  text(title, titleX, titleY, titleWidth, titleHeight);
  fill(resetDefaultInk);
}//End titleText
//
void quitText() {
  //Population
  quitTextX = MiddleX - SmallD/1.49;
  quitTextY = MiddleY - SmallD/1.97;
  quitTextWidth = SmallD*1/5;
  quitTextHeight = SmallD*1/10;
  quitTextFont = createFont("TimesNewRomanPSMT", 603);
  int quitTextSize = 35;
  //
  textAlign(CENTER, CENTER);
  textFont(quitTextFont, quitTextSize);
  text(quitText, quitTextX, quitTextY, quitTextWidth, quitTextHeight);
}//End quitText
//
void startText() {
  //Population
  startTextX = MiddleX-SmallD*1/4;
  startTextY = MiddleY + SmallD*1/2.6;
  startTextWidth = SmallD*1/2;
  startTextHeight = SmallD*1/10;
  startTextFont = createFont("TimesNewRomanPS-BoldItalicMT", 600);
  int startTextSize = 18;
  //
  textAlign(CENTER, CENTER);
  textFont(startTextFont, startTextSize);
  text(startText, startTextX, startTextY, startTextWidth, startTextHeight);
}//End startText
//
