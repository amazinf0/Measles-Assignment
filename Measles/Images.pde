void Images(){
int picWidth1 = 300;
int picHeight1 = 500;
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
  println("imgSD:", imgSD, "\t imgLD:", imgLD,
    "\t widthLarger1:", widthLarger1, " \t heightLarger1:", heightLarger1); 
  //
  imgX = MiddleX-SmallD*1/6;
  imgY = MiddleY+SmallD*0.6/5;
  imgW = SmallD*1/3; 
  imgH = SmallD*2/10;
  //
  //Image 2
  //
  int picWidth2 = 1202;
  int picHeight2 = 342;
  //
  if ( picWidth2 >= picHeight2 ) {
    //True if Landscape or Square
    imgLD2 = picWidth2;
    imgSD2 = picHeight2;
    widthLarger2 = true;
  } else {
    //False if Portrait
    imgLD2 = picHeight2;
    imgSD2 = picWidth2;
    heightLarger2 = true;
  }
} //End Image Dimension Comparison
//End Image Dimensions
