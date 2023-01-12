void dotRandom() {
  MeasleX = random(MiddleX-HeadRadius, MiddleX+HeadRadius);
  MeasleY = random(MiddleY-HeadRadius, MiddleY+HeadRadius); 
  if (MeasleX>MiddleX) {
    LengthX= MeasleX-MiddleX;
  } else {
    LengthX=MiddleX-MeasleX;
  }
  if (MeasleY>MiddleY) {
    LengthY= MeasleY-MiddleY;
  } else {
    LengthY=MiddleY-MeasleY;
  }
  TestR = sqrt(sq(LengthX)+sq(LengthY));
  if (HeadRadius<TestR) {
    fill(backgroundColor);
    println("Background Color: " + backgroundColor); 
  } else {
    fill(Red);
  }
}
//End Measles
