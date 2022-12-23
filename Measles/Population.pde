
//Global Variables
color resetWhite=#FFFFFF, lightred=#F55E72, black=#000000; //similar to int declaration
color backgroundColor;
PImage pic1;
float imgX, imgY, imgW, imgH, imgLD, imgSD, imgWR=0.0, imgHR=0.0;
float picWA, picHA;
float HeadX, HeadY, HeadWD, HeadHD, HeadRadius, SmallD, MiddleX, MiddleY;
float EyeLX, EyeLY, EyeRX, EyeRY, EyeW, EyeH;
float IrisLX, IrisLY, IrisRX, IrisRY, IrisD;
float PupilLX, PupilLY, PupilRX, PupilRY, PupilD;
float EyeLXLight, EyeLYLight, EyeRXLight, EyeRYLight, EyeLightDiameter;
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
  MiddleX = width/2;
  float MiddleY = height/2;
  HeadX = MiddleX;
  HeadY = MiddleY;
  if ( width >= height ) {
    SmallD = height;
  } else {
    SmallD = width;
  }//End dimension choice
  HeadWD = SmallD*1/1.3;
  HeadHD = SmallD*1/1.3;
  //
  EyeLX = MiddleX-SmallD*1/6.5;
  EyeLY = MiddleY-SmallD*1/6;
  EyeRX = MiddleX+SmallD*1/6.5;
  EyeRY = EyeLY;
  EyeW = SmallD*1/6;
  EyeH = SmallD*1/12;
  //
  IrisLX = MiddleX-SmallD*1/6.4;
  IrisLY = MiddleY-SmallD*1/6;
  IrisRX = MiddleX+SmallD*1/6.4;
  IrisRY = IrisLY;
  IrisD = SmallD*1/12;
  //
  PupilLX = MiddleX-SmallD*1/6.4;
  PupilLY = MiddleY-SmallD*1/6;
  PupilRX = MiddleX+SmallD*1/6.4;
  PupilRY = PupilLY;
  PupilD = SmallD*1/25;
  //
  EyeLXLight = MiddleX-SmallD*1/5.7;
  EyeLYLight = MiddleY-SmallD*1/5.5;
  EyeRXLight = MiddleX+SmallD*1/5.7;
  EyeRYLight = EyeLYLight;
  EyeLightDiameter = SmallD*1/50;
  //
  xLeftLight = MiddleX-SmallD*1/7;
  yLeftLight = MiddleY-SmallD*1/6.7;
  xRightLight = MiddleX+SmallD*1/7.3;
  yRightLight = yLeftLight;
  lightDiameter = SmallD*1/80;
  //
  xLeftTears = EyeLXLight;
  yLeftTears = MiddleY-SmallD*1/8;
  xLeftEndTears = EyeLXLight;
  yLeftEndTears = MiddleY+SmallD*1/8;
  //
  xRightTears = EyeRXLight;
  yRightTears = MiddleY-SmallD*1/8;
  xRightEndTears = EyeRXLight;
  yRightEndTears = MiddleY+SmallD*1/8;
  //
  xNoseBridge = MiddleX;
  yNoseBridge = MiddleY-SmallD*1/5;
  xLeftNostril = MiddleX-SmallD*1/10;
  yLeftNostril = MiddleY+SmallD*1/8;
  xRightNostril = MiddleX+SmallD*1/10;
  yRightNostril = yLeftNostril;
  //
  xLeftMoustache = EyeLX+SmallD*1/10;
  yLeftMoustache = MiddleY+SmallD*1/6;
  xRightMoustache = EyeRX-SmallD*1/10;
  yRightMoustache = yLeftMoustache;
  //
  HeadRadius = SmallD*1/2.6;
  //
  //Quit Button
  quitX = MiddleX - SmallD/1.5;
  quitY = MiddleY - SmallD/2;
  quitButtonWidth = SmallD*1/5;
  quitButtonHeight = SmallD*1/10;
  //
  //Stop Button
  stopX = MiddleX + SmallD*1/2.12;
  stopY = MiddleY - SmallD/2;
  stopButtonWidth = SmallD*1/5;
  stopButtonHeight = SmallD*1/10;
}
