/* Simple Changes for emotional affect
- Key Board controls measles, not mouse ... MUUUHahahaha
*/
//Global Variables
int appWidth, appHeight, smallerDimension;
float faceX, faceY, faceDiameter;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDimater;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthOpen, mouthReset;
float measleX, measleY, measleDiameter;
float button1X, button1Y, button2X, button2Y, button3X, button3Y, buttonSide;
color purple=#2C08FF, yellow = #E9FF00, red=#FF0000, blackInk=#000000, resetColour=#FFFFFF;
color hoverOverColour=resetColour;
String start="Start", stop="STOP", quit="X", rowansHorror="Welcome to Rowan's Horror";
PFont buttonFont;
Boolean measlesON=true, splashScreen=false, oneMousePress=false;
//
void setup() {
  size( 600, 400 ); //fullScreen;
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight
  //Ternary Operator
  smallerDimension = (appWidth >= appHeight) ? appHeight : appWidth;
  println("Smaller Dimension is", smallerDimension); //Started as local variable
  //
  //Population
  faceX = appWidth*1/2;
  faceY = appHeight*1/2;
  faceDiameter = smallerDimension;
  backgroundX = faceX - faceDiameter*1/2;
  backgroundY = faceY - faceDiameter*1/2;
  backgroundWidth = faceDiameter;
  backgroundHeight = faceDiameter;
  leftEyeX = backgroundX+smallerDimension*1/4;
  leftEyeY = backgroundY+smallerDimension*1/4;
  eyeDimater = smallerDimension*1/11;
  rightEyeX = backgroundX+smallerDimension*3/4;
  rightEyeY = leftEyeY;
  noseX1 = faceX;
  noseY1 = rightEyeY;
  noseX2 = leftEyeX;
  noseY2 = faceY;
  noseX3 = rightEyeX;
  noseY3 = faceY;
  mouthX1 = noseX2;
  mouthY1 = backgroundY+smallerDimension*3/4;
  mouthX2 = noseX3;
  mouthY2 = mouthY1;
  mouthOpen = smallerDimension*1/4;
  mouthReset = smallerDimension/smallerDimension; //1=reset
  buttonFont = createFont("Harrington", 55);
  //
  //DIVs
  fill(blackInk);
  rect( backgroundX, backgroundY, backgroundWidth, backgroundHeight ); //Circle ONLY
  buttonSide = smallerDimension/2-sqrt(sq(smallerDimension/2)/2);
  button1X = backgroundX;
  button1Y = backgroundY;
  button2X = backgroundX+faceDiameter-buttonSide;
  button2Y = button1Y;
  button3X = button2X;
  button3Y = backgroundY+faceDiameter-buttonSide;
} //End setup
//
void draw() {
  if ( splashScreen==false ) mealsesProgram();
  if ( splashScreen==true ) {
    if ( oneMousePress==false ) {
      background(0);
      oneMousePress=true;
    }
    fill(red);
    textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
    //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
    int size = 50;
    textFont(buttonFont, size);
    text( rowansHorror, backgroundX, backgroundY, backgroundWidth, backgroundHeight );
    //
  }
} //End draw
//
void keyPressed() {
  if ( key==' ' ) measlesON=true; //START, SPACE-Bar
  if ( keyCode==BACKSPACE ) measlesON=false; //STOP //Not Needed key==CODED &&
  //How does measles "erase" when the button is pressed
  if ( keyCode==ESC ) exit(); //QUIT //key==CODED &&
} //End keyPressed
//
void mousePressed() {
  splashScreen=true;
  //
  if ( mouseX>button1X && mouseX<button1X+buttonSide && mouseY>button1Y && mouseY<button1Y+buttonSide ) measlesON=true; //START
  if ( mouseX>button2X && mouseX<button2X+buttonSide && mouseY>button2Y && mouseY<button2Y+buttonSide ) measlesON=false; //STOP
  if ( mouseX>button3X && mouseX<button3X+buttonSide && mouseY>button3Y && mouseY<button3Y+buttonSide ) exit(); //QUIT
} //End mousePressed
//
//End MAIN Program
