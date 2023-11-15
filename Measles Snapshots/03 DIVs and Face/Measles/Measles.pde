/* Measles To Do List
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
color purple=#2C08FF, yellow = #E9FF00, blackInk=#000000, resetColour=#FFFFFF;
color hoverOverColour=resetColour;
String start="Start", stop="STOP", quit="X";
PFont buttonFont;
Boolean measlesON=false;
//
void setup() {
  //Display
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
  rect( backgroundX, backgroundY, backgroundWidth, backgroundHeight ); //Circle ONLY
  ellipse( faceX, faceY, faceDiameter, faceDiameter );
  rect( leftEyeX-eyeDimater/2, leftEyeY-eyeDimater/2, eyeDimater, eyeDimater);
  rect( rightEyeX-eyeDimater/2, rightEyeY-eyeDimater/2, eyeDimater, eyeDimater );
  rect( noseX2, noseY1, noseX3-noseX2, noseY2-noseY1 );
  rect( mouthX1, mouthY1, mouthX2-mouthX1, mouthY2-mouthY1 );
  //
} //End setup
//
void draw() {
  //Text Code
  //Face Code
  /*
  rect( backgroundX, backgroundY, backgroundWidth, backgroundHeight ); //Circle ONLY
  ellipse( faceX, faceY, faceDiameter, faceDiameter );
  ellipse ( leftEyeX, leftEyeY, eyeDimater, eyeDimater ); //Left Eye
  rect( leftEyeX-eyeDimater/2, leftEyeY-eyeDimater/2, eyeDimater, eyeDimater);
  ellipse ( rightEyeX, rightEyeY, eyeDimater, eyeDimater ); //Right Eye
  rect( rightEyeX-eyeDimater/2, rightEyeY-eyeDimater/2, eyeDimater, eyeDimater );
  triangle( noseX1, noseY1, noseX2, noseY2, noseX3, noseY3 ); //Nose
  rect( noseX2, noseY1, noseX3-noseX2, noseY2-noseY1 );
  strokeWeight(mouthOpen);
  line( mouthX1, mouthY1, mouthX2, mouthY2 ); //mouth
  rect( mouthX1, mouthY1, mouthX2-mouthX1, mouthY2-mouthY1 );
  strokeWeight(mouthReset); //1=reset
  */
  //Measles Code
  //
} //End draw
//
void keyPressed() {
  //Key Board Short Cuts
} //End keyPressed
//
void mousePressed() {
  //Mouse Pressing to Mimic Key Board Short Cuts
  //CAUTION: a little more challending to program
} //End mousePressed
//
//End MAIN Program
