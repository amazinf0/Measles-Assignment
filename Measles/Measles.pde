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
  //Dimensions found by right click image / get info
  //Algorithm: Find the larger dimension for aspect ratio (comparison of two numbers
  //
  int picWidth1 = 1000;
  int picHeight1 = 317;
  //
  if ( picWidth1 >= picHeight1 ) {
    //True if Landscape or Square
    imgLD = picWidth1;
    imgSD = picHeight1;
    widthLarger1 = true;
  } else {
    //False if Portrait
    imgLD = picHeight1;
    imgSD = picWidth1;
    heightLarger1 = true;
  } //End Image Dimension Comparison
  //Note: println also verifies decimal places, complier will truncate
  println("imgSD:", imgSD, "\t imgLD:", imgLD,
    "\t widthLarger1:", widthLarger1, " \t heightLarger1:", heightLarger1); //Verify variables details
  //
  imgX = MiddleX-SmallD*1/6;
  imgY = MiddleY+SmallD*1/5;
  imgW = SmallD*1/3; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on 2 sides
  imgH = SmallD*1/10;
  //
  //Image 2
  //
  int picWidth2 = 1202;
  int picHeight2 = 342;
  //
  if ( picWidth2 >= picHeight2 ) {
    //True if Landscape or Square
    imageLargerDimension2 = picWidth2;
    imageSmallD2 = picHeight2;
    widthLarger2 = true;
  } else {
    //False if Portrait
    imageLargerDimension2 = picHeight2;
    imageSmallD2 = picWidth2;
    heightLarger2 = true;
  } //End Image Dimension Comparison
  //Note: println also verifies decimal places, complier will truncate
  println("imageSmallD2:", imageSmallD2, "\t imageLargerDimension2:", imageLargerDimension2,
    "\t widthLarger2:", widthLarger2, " \t heightLarger2:", heightLarger2); //Verify variables details
  //
  imageX2 = MiddleX-SmallD*1/4;
  imageY2 = MiddleY-SmallD*1/3.3;
  imageWidth2 = SmallD*1/2; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on 2 sides
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
  stopText();
  startText();
  fill(lightred);
  //
  //
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
  ellipse(EyeRLLX, EyeRLLY, EyeRLD, EyeRLD);
  ellipse(EyeRLRX, EyeRLRY, EyeRLD, EyeRLD);
  stroke(waterColor);
  strokeWeight(5);
  //
  line (xLeftTears, yLeftTears, xLeftEndTears, yLeftEndTears);
  line (xRightTears, yRightTears, xRightEndTears, yRightEndTears);
  fill(resetWhite);
  stroke(1);
  //
  triangle(NoseLX, NoseLY, NoseTLX, NoseTLY, NoseTRX, NoseTRY);
  strokeCap(SQUARE); //ROUND (default), PROJECT
  strokeWeight(thack);
  //
  line (xLeftMoustache, yLeftMoustache, xRightMoustache, yRightMoustache);
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
    
    
    ellipse(HeadX, HeadY, HeadWD, HeadHD);
    if (mouseX> quitX && mouseX< quitX+quitButtonWidth && mouseY> quitY && mouseY< quitY+quitButtonHeight) exit();
    if (mouseX>stopX && mouseX<stopX+SmallD*1/5 && mouseY>stopY && mouseY<stopY+SmallD*1/10) noLoop();
    dotRandom();
  }
  //
  if (mouseX>0 && mouseX<width-SmallD*1/2 && mouseY>0 && mouseY<height) {
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
    
    
    ellipse(HeadX, HeadY, HeadWD, HeadHD);
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
   ellipse(HeadX, HeadY, HeadWD, HeadHD);
   */
  //
}//End mousePressed

void dotRandom() {
  xMeasle = random(MiddleX-HeadRadius, MiddleX+HeadRadius);
  yMeasle = random(MiddleY-HeadRadius, MiddleY+HeadRadius); //if zero is first, then default
  if (xMeasle>MiddleX) {
    xlength= xMeasle-MiddleX;
  } else {
    xlength=MiddleX-xMeasle;
  }
  if (yMeasle>MiddleY) {
    ylength= yMeasle-MiddleY;
  } else {
    ylength=MiddleY-yMeasle;
  }
  radiusTest = sqrt(sq(xlength)+sq(ylength));
  if (HeadRadius<radiusTest) {
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
