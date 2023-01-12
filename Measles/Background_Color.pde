//Global Variables
int t = hour();

void backgroundColorRandom() {
  if (t >=20 || t<=7) {//To test nightmode, change the 20 to the time prior to the time it is now. ex. if its 3pm you switch 20 to something less than 15
    tint(125, 255);
     backgroundColor = color(/*random(100, 255), random(255), 0*/ #121212);
    println("nightMode ON");
    background( backgroundColor );
  } else {
    backgroundColor = color(random(100, 255), random(255), random(255));
    println("nightMode OFF");
    background( backgroundColor );
  }
}
