//Global Variables
color green=#00FF00, brown=#954C48, waterColor=#b9dbe1, resetButtonColor=#FFFFFF, buttonFill; //Not night mode friendly colors
PImage pic2;
float imageX2, imageY2, imageWidth2, imageHeight2, imageLargerDimension2, imageSmallerDimension2, imageWidthRatio2=0.0, imageHeightRatio2=0.0;
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
  xCenter = width/2;
  yCenter = height/2;
  println ("width:", width, "\t height:", height, "\t displayWidth:", displayWidth, "\t\t displayHeight:", displayHeight);
  populationVariables();
  //
  //Dimensions found by right click image / get info
  //Algorithm: Find the larger dimension for aspect ratio (comparison of two numbers
  //
  int picWidth1 = 1000;
  int picHeight1 = 317;
  //
  if ( picWidth1 >= picHeight1 ) {
    //True if Landscape or Square
    imageLargerDimension1 = picWidth1;
    imageSmallerDimension1 = picHeight1;
    widthLarger1 = true;
  } else {
    //False if Portrait
    imageLargerDimension1 = picHeight1;
    imageSmallerDimension1 = picWidth1;
    heightLarger1 = true;
  } //End Image Dimension Comparison
  //Note: println also verifies decimal places, complier will truncate
  println("imageSmallerDimension1:", imageSmallerDimension1, "\t imageLargerDimension1:", imageLargerDimension1,
    "\t widthLarger1:", widthLarger1, " \t heightLarger1:", heightLarger1); //Verify variables details
  //
  imageX1 = xCenter-smallerDimension*1/6;
  imageY1 = yCenter+smallerDimension*1/5;
  imageWidth1 = smallerDimension*1/3; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on 2 sides
  imageHeight1 = smallerDimension*1/10;
  //
  //Image 2
  //
  int picWidth2 = 1202;
  int picHeight2 = 342;
  //
  if ( picWidth2 >= picHeight2 ) {
    //True if Landscape or Square
    imageLargerDimension2 = picWidth2;
    imageSmallerDimension2 = picHeight2;
    widthLarger2 = true;
  } else {
    //False if Portrait
    imageLargerDimension2 = picHeight2;
    imageSmallerDimension2 = picWidth2;
    heightLarger2 = true;
  } //End Image Dimension Comparison
  //Note: println also verifies decimal places, complier will truncate
  println("imageSmallerDimension2:", imageSmallerDimension2, "\t imageLargerDimension2:", imageLargerDimension2,
    "\t widthLarger2:", widthLarger2, " \t heightLarger2:", heightLarger2); //Verify variables details
  //
  imageX2 = xCenter-smallerDimension*1/4;
  imageY2 = yCenter-smallerDimension*1/3.3;
  imageWidth2 = smallerDimension*1/2; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on 2 sides
  imageHeight2 = smallerDimension*1/10;
  //
  //nightMode setup
  //
  println("1 to backgroundColorRandom "); 
  backgroundColorRandom();
  //
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  println(xFace, xFace+widthDiameterFace, yFace, yFace+heightDiameterFace);
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
  image(pic1, imageX1, imageY1, imageWidth1, imageHeight1);
  pic2= loadImage("../Images Used/pngkey.com-eye-brow-png-9873410.png");
  image(pic2, imageX2, imageY2, imageWidth2, imageHeight2);
  //
  rect(quitX, quitY, quitButtonWidth, quitButtonHeight);
  //
  if (mouseX>stopX && mouseX<stopX+smallerDimension*1/5 && mouseY>stopY && mouseY<stopY+smallerDimension*1/10) {
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
  stopText();
  startText();
  fill(lightred);
  //
  //
  //
  ellipse(xLeftEye, yLeftEye, eyeWidth, eyeHeight);
  ellipse(xRightEye, yRightEye, eyeWidth, eyeHeight);
  fill(brown);
  //
  ellipse(xLeftIris, yLeftIris, irisDiameter, irisDiameter);
  ellipse(xRightIris, yRightIris, irisDiameter, irisDiameter);
  fill(black);
  //
  ellipse(xLeftPupil, yLeftPupil, pupilDiameter, pupilDiameter);
  ellipse(xRightPupil, yRightPupil, pupilDiameter, pupilDiameter);
  fill(resetWhite);
  //
  ellipse(xLeftEyeLight, yLeftEyeLight, eyelightDiameter, eyelightDiameter);
  ellipse(xRightEyeLight, yRightEyeLight, eyelightDiameter, eyelightDiameter);
  ellipse(xLeftLight, yLeftLight, lightDiameter, lightDiameter);
  ellipse(xRightLight, yRightLight, lightDiameter, lightDiameter);
  stroke(waterColor);
  strokeWeight(5);
  //
  line (xLeftTears, yLeftTears, xLeftEndTears, yLeftEndTears);
  line (xRightTears, yRightTears, xRightEndTears, yRightEndTears);
  fill(resetWhite);
  stroke(1);
  //
  triangle(xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril);
  strokeCap(SQUARE); //ROUND (default), PROJECT
  strokeWeight(thack);
  //
  line (xLeftMoustache, yLeftMoustache, xRightMoustache, yRightMoustache);
  strokeWeight(1);
  //
  dotRandom();
  
  noStroke();
  measleDiameter = random(smallerDimension* 1/random(25, 75));
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);
  stroke(1); //reset Default
  fill(resetWhite);
  //
}//End draw
//
void keyPressed() {
  if (key=='q' || key=='Q') exit();
  if (key=='e' || key=='E') loop();
  if (key=='s' || key=='S') noLoop();
}//End keyPressed
//
void mousePressed() {
  //Technically, there are 4 ways to code a mouse button press
  //
  if ( mouseButton == LEFT ) {
    println("2 to backgroundColorRandom "); 
    
    // first Click don't set background Color
    if (firstClick) {
      firstClick=false;
    } else {
      backgroundColorRandom();
    }
    
    
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
    if (mouseX> quitX && mouseX< quitX+quitButtonWidth && mouseY> quitY && mouseY< quitY+quitButtonHeight) exit();
    if (mouseX>stopX && mouseX<stopX+smallerDimension*1/5 && mouseY>stopY && mouseY<stopY+smallerDimension*1/10) noLoop();
    dotRandom();
  }
  //
  if (mouseX>0 && mouseX<width-smallerDimension*1/2 && mouseY>0 && mouseY<height) {
    if (noLoop=true) {
      loop=false;
      loop();
    } else {
      noLoop=false;
      noLoop();
    }
  }//End Left Mouse button
  //
  if ( mouseButton == RIGHT ) {
    //
    println("3 to backgroundColorRandom "); 
    
    // first Click don't set background Color
    if (firstClick) {
      firstClick=false;
    } else {
      backgroundColorRandom();
    }
    
    
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
    dotRandom();
    //
  }//End Right Mouse Button
  
  

  //
  //Note: Mouse WHEEL is also available
  //if ( mouseButton == WHEEL ) {}//End Mouse WHEEL
  //
  /* For any button
   if ( nightMode == false ) { //NightMode Switch
   nightMode = true;
   } else {
   nightMode = false;
   } //End nightMode switch
   //
   backgroundColor = ( nightMode==true ) ? color( random(255), random(255), 0 ) : color( random(255), random(255), random(255) ) ; //ternary operator, similar to IF-Else
   background( backgroundColor );
   ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
   */
  //
}//End mousePressed

void dotRandom() {
  xMeasle = random(xCenter-faceRadius, xCenter+faceRadius);
  yMeasle = random(yCenter-faceRadius, yCenter+faceRadius); //if zero is first, then default
  if (xMeasle>xCenter) {
    xlength= xMeasle-xCenter;
  } else {
    xlength=xCenter-xMeasle;
  }
  if (yMeasle>yCenter) {
    ylength= yMeasle-yCenter;
  } else {
    ylength=yCenter-yMeasle;
  }
  radiusTest = sqrt(sq(xlength)+sq(ylength));
  if (faceRadius<radiusTest) {
    //fill(green);
    fill(backgroundColor);
    println("dotRandom - backgroundColor: " + backgroundColor); 
  } else {
    fill(lightred);
  }
}
void backgroundColorRandom() {
    backgroundColor = ( nightMode==true ) ? color( random(255), random(255), 0 ) : color( random(255), random(255), random(255) ) ; //ternary operator, similar to IF-Else
    //backgroundColor = color( 255, 255, 0 );
    background( backgroundColor );
    println("backgroundColorRandom - backgroundColor: " + backgroundColor); 
}
//
//End MAIN Program

/* Population
//Global Variables
color resetWhite=#FFFFFF, lightred=#F55E72, black=#000000; //similar to int declaration
color backgroundColor;
PImage pic1;
float imageX1, imageY1, imageWidth1, imageHeight1, imageLargerDimension1, imageSmallerDimension1, imageWidthRatio1=0.0, imageHeightRatio1=0.0;
float picWidthAdjusted1, picHeightAdjusted1;
float xFace, yFace, widthDiameterFace, heightDiameterFace, faceRadius, smallerDimension, xCenter, yCenter;
float xLeftEye, yLeftEye, xRightEye, yRightEye, eyeWidth, eyeHeight;
float xLeftIris, yLeftIris, xRightIris, yRightIris, irisDiameter;
float xLeftPupil, yLeftPupil, xRightPupil, yRightPupil, pupilDiameter;
float xLeftEyeLight, yLeftEyeLight, xRightEyeLight, yRightEyeLight, eyelightDiameter;
float xLeftLight, yLeftLight, xRightLight, yRightLight, lightDiameter;
float xLeftTears, yLeftTears, xLeftEndTears, yLeftEndTears;
float xRightTears, yRightTears, xRightEndTears, yRightEndTears;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;
float xLeftMoustache, yLeftMoustache, xRightMoustache, yRightMoustache;
int thack=15;
float xMeasle, yMeasle, measleDiameter;
Boolean widthLarger1=false, heightLarger1=false;
//
void populationVariables () {
  //Population
  xCenter = width/2;
  float yCenter = height/2;
  xFace = xCenter;
  yFace = yCenter;
  if ( width >= height ) {
    smallerDimension = height;
  } else {
    smallerDimension = width;
  }//End dimension choice
  widthDiameterFace = smallerDimension*1/1.3;
  heightDiameterFace = smallerDimension*1/1.3;
  //
  xLeftEye = xCenter-smallerDimension*1/6.5;
  yLeftEye = yCenter-smallerDimension*1/6;
  xRightEye = xCenter+smallerDimension*1/6.5;
  yRightEye = yLeftEye;
  eyeWidth = smallerDimension*1/6;
  eyeHeight = smallerDimension*1/12;
  //
  xLeftIris = xCenter-smallerDimension*1/6.4;
  yLeftIris = yCenter-smallerDimension*1/6;
  xRightIris = xCenter+smallerDimension*1/6.4;
  yRightIris = yLeftIris;
  irisDiameter = smallerDimension*1/12;
  //
  xLeftPupil = xCenter-smallerDimension*1/6.4;
  yLeftPupil = yCenter-smallerDimension*1/6;
  xRightPupil = xCenter+smallerDimension*1/6.4;
  yRightPupil = yLeftPupil;
  pupilDiameter = smallerDimension*1/25;
  //
  xLeftEyeLight = xCenter-smallerDimension*1/5.7;
  yLeftEyeLight = yCenter-smallerDimension*1/5.5;
  xRightEyeLight = xCenter+smallerDimension*1/5.7;
  yRightEyeLight = yLeftEyeLight;
  eyelightDiameter = smallerDimension*1/50;
  //
  xLeftLight = xCenter-smallerDimension*1/7;
  yLeftLight = yCenter-smallerDimension*1/6.7;
  xRightLight = xCenter+smallerDimension*1/7.3;
  yRightLight = yLeftLight;
  lightDiameter = smallerDimension*1/80;
  //
  xLeftTears = xLeftEyeLight;
  yLeftTears = yCenter-smallerDimension*1/8;
  xLeftEndTears = xLeftEyeLight;
  yLeftEndTears = yCenter+smallerDimension*1/8;
  //
  xRightTears = xRightEyeLight;
  yRightTears = yCenter-smallerDimension*1/8;
  xRightEndTears = xRightEyeLight;
  yRightEndTears = yCenter+smallerDimension*1/8;
  //
  xNoseBridge = xCenter;
  yNoseBridge = yCenter-smallerDimension*1/5;
  xLeftNostril = xCenter-smallerDimension*1/10;
  yLeftNostril = yCenter+smallerDimension*1/8;
  xRightNostril = xCenter+smallerDimension*1/10;
  yRightNostril = yLeftNostril;
  //
  xLeftMoustache = xLeftEye+smallerDimension*1/10;
  yLeftMoustache = yCenter+smallerDimension*1/6;
  xRightMoustache = xRightEye-smallerDimension*1/10;
  yRightMoustache = yLeftMoustache;
  //
  faceRadius = smallerDimension*1/2.6;
  //
  //Quit Button
  quitX = xCenter - smallerDimension/1.5;
  quitY = yCenter - smallerDimension/2;
  quitButtonWidth = smallerDimension*1/5;
  quitButtonHeight = smallerDimension*1/10;
  //
  //Stop Button
  stopX = xCenter + smallerDimension*1/2.12;
  stopY = yCenter - smallerDimension/2;
  stopButtonWidth = smallerDimension*1/5;
  stopButtonHeight = smallerDimension*1/10;
}

*/

/* Text
//Global Variables
color red=#FF0022, resetDefaultInk=#FFFFFF; // not nightMode friendly
String title = "Measles Simulator";
String quitText = "Quit (Q)";
String stopText = "Stop (S)";
String startText = "Press E/Tap Left Side to start, \n Right Click to reset";
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
  int titleSize = 50; //Change this number until it fits
  textFont(titleFont, titleSize);
  text(title, titleX, titleY, titleWidth, titleHeight);
  fill(resetDefaultInk);
}//End titleText
//
void quitText() {
  //Population
  quitTextX = xCenter - smallerDimension/1.49;
  quitTextY = yCenter - smallerDimension/1.97;
  quitTextWidth = smallerDimension*1/5;
  quitTextHeight = smallerDimension*1/10;
  quitTextFont = createFont("TimesNewRomanPSMT", 603);
  int quitTextSize = 35;
  //
  textAlign(CENTER, CENTER);
  textFont(quitTextFont, quitTextSize);
  text(quitText, quitTextX, quitTextY, quitTextWidth, quitTextHeight);
}//End quitText
//
void stopText() {
  //Population
  stopTextX = xCenter + smallerDimension*1/2.12;
  stopTextY = quitTextY;
  stopTextWidth = smallerDimension*1/5;
  stopTextHeight = smallerDimension*1/10;
  stopTextFont = createFont("TimesNewRomanPSMT", 603);
  int stopTextSize = 35;
  //
  textAlign(CENTER, CENTER);
  textFont(stopTextFont, stopTextSize);
  text(stopText, stopTextX, stopTextY, stopTextWidth, stopTextHeight);
}//End stopText
//
void startText() {
  //Population
  startTextX = xCenter-smallerDimension*1/4;
  startTextY = yCenter + smallerDimension*1/2.5;
  startTextWidth = smallerDimension*1/2;
  startTextHeight = smallerDimension*1/10;
  startTextFont = createFont("TimesNewRomanPS-BoldItalicMT", 600);
  int startTextSize = 25;
  //
  textAlign(CENTER, CENTER);
  textFont(startTextFont, startTextSize);
  text(startText, startTextX, startTextY, startTextWidth, startTextHeight);
}//End startText
//
*/
