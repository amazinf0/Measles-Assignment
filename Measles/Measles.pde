//Global Variables
color green=#00FF00, brown=#954C48, waterColor=#b9dbe1, resetButtonColor=#FFFFFF, buttonFill; //Not night mode friendly colors
PImage pic2;
float imageX2, imageY2, imageWidth2, imageHeight2, imageLargerDimension2, imageSmallD2, imageWidthRatio2=0.0, imageHeightRatio2=0.0;
float quitX, quitY, quitButtonWidth, quitButtonHeight;
float stopX, stopY, stopButtonWidth, stopButtonHeight;
float restartX, restartY, restartButtonWidth, restartButtonHeight;
float xlength;
float ylength;
float radiusTest;
int centeringButtonWidth = width*1/4;
int centeringButtonHeight = height*1/4;
int h = hour();
Boolean noLoop=false, loop=false;
Boolean nightMode=false;
Boolean widthLarger2=false, heightLarger2=false;
Boolean firstClick=true;
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
  println("imageSmallD2:", imageSmallD2, "\t imageLargerDimension2:", imageLargerDimension2,
    "\t widthLarger2:", widthLarger2, " \t heightLarger2:", heightLarger2); 
  //
  imageX2 = MiddleX-SmallD*1/4;
  imageY2 = MiddleY-SmallD*1/3.3;
  imageWidth2 = SmallD*1/2; 
  imageHeight2 = SmallD*1/10;
  //
  //nightMode setup
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
  //Hover-over
  if (mouseX> quitX && mouseX< quitX+quitButtonWidth && mouseY> quitY && mouseY< quitY+quitButtonHeight) {
    buttonFill = green;
  } else {
    buttonFill = red;
  }//End Hover-over
  fill(buttonFill); //2-colors to start , remember nightMode adds choice
  //
  pic1= loadImage("../Images Used/kindpng_7571372.png");
  image(pic1, imgX, imgY, imgW, imgH);
  pic2= loadImage("../Images Used/pngkey.com-eye-brow-png-9873410.png");
  image(pic2, imageX2, imageY2, imageWidth2, imageHeight2);
  //
  rect(quitX, quitY, quitButtonWidth, quitButtonHeight);
  //
  if (mouseX>stopX && mouseX<stopX+SmallD*1/5 && mouseY>stopY && mouseY<stopY+SmallD*1/10) {
    buttonFill = green;
  } else {
    buttonFill = red;
  }
  fill(buttonFill);
  rect(stopX, stopY, stopButtonWidth, stopButtonHeight);
  fill(resetButtonColor);
  //
  titleText();
  quitText();
  startText();
  fill(#FFFFFF);
  //
  ellipse(EyeLX, EyeLY, EyeW, EyeH);
  ellipse(EyeRX, EyeRY, EyeW, EyeH);
  fill(brown);
  //
  ellipse(IrisLX, IrisLY, IrisD, IrisD);
  ellipse(IrisRX, IrisRY, IrisD, IrisD);
  fill(black);
  //
  ellipse(PupilLX, PupilLY, PupilD, PupilD);
  ellipse(PupilRX, PupilRY, PupilD, PupilD);
  fill(resetWhite);
  //
  ellipse(EyeLXLight, EyeLYLight, EyeEyeRLD, EyeEyeRLD);
  ellipse(EyeRXLight, EyeRYLight, EyeEyeRLD, EyeEyeRLD);
  stroke(waterColor);
  strokeWeight(5);
  //
  fill(resetWhite);
  stroke(1);
  //
  triangle(NoseLX, NoseLY, NoseTLX, NoseTLY, NoseTRX, NoseTRY);
  strokeCap(SQUARE); //ROUND (default), PROJECT
  strokeWeight(thack);
  //
  strokeWeight(1);
  //
  dotRandom();
  
  noStroke();
  measleDiameter = random(SmallD* 1/random(25, 75));
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);
  stroke(1); //reset Default
  fill(resetWhite);
  //
}//End draw
//End MAIN Program
