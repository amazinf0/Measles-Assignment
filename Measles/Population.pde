//Global Variables
color backgroundColor;
PImage pic1;
float picWA, picHA;
float EyeLX, EyeLY, EyeRX, EyeRY, EyeW, EyeH;
float imgX, imgY, imgW, imgH, imgLD, imgSD, imgWR=0.0, imgHR=0.0;
float NoseLX, NoseLY, NoseTLX, NoseTLY, NoseTRX, NoseTRY;
float IrisLX, IrisLY, IrisRX, IrisRY, IrisD;
float MeasleX, MeasleY, MeasleD;
float EyeLXLight, EyeLYLight, EyeRXLight, EyeRYLight, EyeEyeRLD;
float PupilLX, PupilLY, PupilRX, PupilRY, PupilD;
float HeadX, HeadY, HeadWD, HeadHD, HeadRadius, SmallD, MiddleX, MiddleY;
int thack=15;
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
  }//Dimension
  HeadWD = SmallD*1/1.32;
  HeadHD = SmallD*1/1.32;
  HeadRadius = SmallD*1/2.6;
  //
  IrisLX = MiddleX-SmallD*1/6.4;
  IrisLY = MiddleY-SmallD*1/6;
  IrisRX = MiddleX+SmallD*1/6.4;
  IrisRY = IrisLY;
  IrisD = SmallD*1/12;
  //
  EyeLXLight = MiddleX-SmallD*1/7;
  EyeLYLight = MiddleY-SmallD*1/6.5;
  EyeRXLight = MiddleX+SmallD*1/5.8;
  EyeRYLight = EyeLYLight;
  EyeEyeRLD = SmallD*1/50;
  //
  quitX = MiddleX - SmallD/1.5;
  quitY = MiddleY - SmallD/2;
  QuitW = SmallD*1/5;
  QuitH = SmallD*1/10;
  //
  EyeLX = MiddleX-SmallD*1/6.6;
  EyeLY = MiddleY-SmallD*1/6;
  EyeRX = MiddleX+SmallD*1/6.6;
  EyeRY = EyeLY;
  EyeW = SmallD*1/6;
  EyeH = SmallD*1/12;
  //
  NoseLX = MiddleX;
  NoseLY = MiddleY-SmallD*1/5;
  NoseTLX = MiddleX-SmallD*1/10;
  NoseTLY = MiddleY+SmallD*0.5/8;
  NoseTRX = MiddleX+SmallD*1/10;
  NoseTRY = NoseTLY;
  //
  PupilLX = MiddleX-SmallD*1/6.4;
  PupilLY = MiddleY-SmallD*1/6;
  PupilRX = MiddleX+SmallD*1/6.4;
  PupilRY = PupilLY;
  PupilD = SmallD*0.9/25;
  //
}
