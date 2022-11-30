//Global Variables
int appWidth, appHeight;
//
void setup() {
  //Display & Orientation
  size(600, 400);
  //fullScreen(); //displayWidth & displayHeight
  displayOrientation(); //need smaller dimension (ternary operator)
  appWidth = width;
  appHeight = height;
  //
  population();
  //Theme: i.e Face (will work in portrait and landscape)
  faceSetup();
  eyes(); //Student created
  nose(); //Student created
  mouth(); //Student created
  measlesDynamic(); //Teacher Lesson
  //Back Image with tint()
} //End setup
//
void draw() {
  //OS System Start Button
  //Splash Screen Level start button | Measles Reset Button
  //Theme: measles with different sizes and colours
} //End draw
//
void keyPressed() {
  //keyBoard Shortcuts
} //End keyPressed
//
void mousePressed() {
  //CAUTION: all buttons have Hover Over
  //OS System Start Button
  //Splash Screen Start Button
  //Quit Button
  //Night Mode (includes day mode)
} //End mousePressed
//
//End MAIN Program
