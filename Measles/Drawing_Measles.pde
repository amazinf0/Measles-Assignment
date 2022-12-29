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
//End Measles
