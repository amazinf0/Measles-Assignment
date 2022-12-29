void backgroundColorRandom() {
    backgroundColor = ( nightMode==true ) ? color( random(255), random(255), 0 ) : color( random(255), random(255), random(255) ) ; 
    background( backgroundColor );
}
//End Background Random Color
