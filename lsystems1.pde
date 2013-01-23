/* http://www.biologie.uni-hamburg.de/b-online/e28_3/lsys.html*/

float angle = 0;
float stepSize = 50;
String s= "F+F+F+F";
float angleChange=PI/2;  //90 degrees

float posX, posY;

void setup(){
  size(500,500);
  posX=100;
  posY=100;
}
void drawF(){
  float posXPrime = posX+stepSize*cos(angle);
  float posYPrime = posY+stepSize*sin(angle);
  line(posX,posY,posXPrime, posYPrime);
  posX=posXPrime;
  posY=posYPrime;
}
void drawPlus(){
  angle= angle+angleChange;
}
void draw(){
  for(int i=0;i<s.length();i++){
    if (s.charAt(i)=='F'){
      drawF();
    }
    else if (s.charAt(i)=='+'){
      drawPlus();
    }
  }
  noLoop();
}