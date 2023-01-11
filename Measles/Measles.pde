//Global Variables
color Green=#00FF00, Brown=#954C48, buttonFill, White=#FFFFFF, Red=#F55E72, Black=000000, red=#FF0022; //Not night mode friendly colors
PImage pic2;
float quitX, quitY, QuitW, QuitH;
float imgX2, imgY2, imgW2, imgH2, imgLD2, imgSD2, imgWR2=0.0, imgHR2=0.0;
float TestR;
float LengthX, LengthY;
int centeringButtonWidth = width*1/4;
int centeringButtonHeight = height*1/4;
int h = hour();
Boolean noLoop=false, loop=false;
Boolean widthLarger2=false, heightLarger2=false;
Boolean firstClick=true;
Boolean nightMode=false;
//
void setup() {
  //Display Geometry
  size(1000, 750); //Landscape
  //
  MiddleX = width/2;
  MiddleY = height/2;
  println ("width:", width, "\t height:", height, "\t displayWidth:", displayWidth, "\t\t displayHeight:", displayHeight);
  populationVariables();
  //
  Images();
  println("imgSD2:", imgSD2, "\t imgLD2:", imgLD2,
    "\t widthLarger2:", widthLarger2, " \t heightLarger2:", heightLarger2); 
  //
  imgX2 = MiddleX-SmallD*1/4;
  imgY2 = MiddleY-SmallD*1/3.3;
  imgW2 = SmallD*1/2; 
  imgH2 = SmallD*1/10;
  //
  println("1 to backgroundColorRandom "); 
  backgroundColorRandom();
  //
  ellipse(HeadX, HeadY, HeadWD, HeadHD);
  println(HeadX, HeadX+HeadWD, HeadY, HeadY+HeadHD);
  noLoop();
  //
}//End setup
//
void draw() {
  Cursors();
  //Hover-over
  if (mouseX> quitX && mouseX< quitX+QuitW && mouseY> quitY && mouseY< quitY+QuitH) {
    buttonFill = red;
  } else {
    buttonFill = Green;
  }//End Hover-over
  fill(buttonFill); //2-colors to start , remember nightMode adds choice
  //
  pic1= loadImage("../Images Used/cartoon.png");
  image(pic1, imgX, imgY, imgW, imgH);
  pic2= loadImage("../Images Used/eyebrows.png");
  image(pic2, imgX2, imgY2, imgW2, imgH2);
  //
  rect(quitX, quitY, QuitW, QuitH);
  //
  fill(buttonFill);
  fill(White);
  //
  titleText();
  quitText();
  startText();
  fill(#FFFFFF);
  //
  ellipse(EyeLX, EyeLY, EyeW, EyeH);
  ellipse(EyeRX, EyeRY, EyeW, EyeH);
  fill(Brown);
  //
  ellipse(IrisLX, IrisLY, IrisD, IrisD);
  ellipse(IrisRX, IrisRY, IrisD, IrisD);
  fill(Black);
  //
  ellipse(PupilLX, PupilLY, PupilD, PupilD);
  ellipse(PupilRX, PupilRY, PupilD, PupilD);
  fill(White);
  //
  ellipse(EyeLXLight, EyeLYLight, EyeEyeRLD, EyeEyeRLD);
  ellipse(EyeRXLight, EyeRYLight, EyeEyeRLD, EyeEyeRLD);
  stroke(Black);
  strokeWeight(5);
  //
  fill(White);
  stroke(1);
  //
  triangle(NoseLX, NoseLY, NoseTLX, NoseTLY, NoseTRX, NoseTRY);
  strokeCap(SQUARE); 
  strokeWeight(thack);
  //
  strokeWeight(1);
  //
  dotRandom();
  
  noStroke();
  MeasleD = random(SmallD* 1/random(25, 75));
  ellipse(MeasleX, MeasleY, MeasleD, MeasleD);
  stroke(1); 
  fill(White);
  //
}//End draw
//End MAIN Program
