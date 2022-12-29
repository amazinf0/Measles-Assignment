void backgroundColorRandom() {
    backgroundColor = ( nightMode==true ) ? color( random(255), random(255), 0 ) : color( random(255), random(255), random(255) ) ; //ternary operator, similar to IF-Else
    //backgroundColor = color( 255, 255, 0 );
    background( backgroundColor );
    println("backgroundColorRandom - backgroundColor: " + backgroundColor); 
}
//End Background Random Color
