float alpha = 0;   
float stepSize = 20;
String s= "F-F-F-F";
String fChange="F-F+F+FF-F-F+F";
float angleChange=PI/2;  //90 degrees
iteration = 2;
int curr=0;  //used to show where
             //in the string draw

float posX, posY;

void setup(){
  size(700,700);
  background(255);
  posX=200;
  posY=200;
  frameRate(20);
  for(int i=0;i<iteration;i++){
     nextGeneration(s);
  }

}
void drawF(){
  float posXPrime = posX + stepSize*cos(alpha);
  float posYPrime = posY + stepSize*sin(alpha);
  line(posX,posY,posXPrime, posYPrime);
  posX=posXPrime;
  posY=posYPrime;
}
void drawPlus(){
  alpha = alpha - angleChange;
}
void drawMinus(){
  alpha = alpha + angleChange;
}
//apply production rule to modify the string
void nextGeneration(String original){
  String tmp="";
  for(int i=0; i<original.length(); i++){
    if(original.charAt(i)=="F"){
      tmp=tmp+fChange;
    }
    else{
      tmp=tmp+original.charAt(i);
    }
  }
  s=tmp;
}
void draw(){
  int count =0;
  while(curr < s.length() && count < 1){
    if (s.charAt(curr)=="F"){
      drawF();
    }
    else if (s.charAt(curr)=="+"){
      drawPlus();
    }
    else if (s.charAt(curr)=="-"){
      drawMinus();
    }
    curr++;
    count++;
  }
  if(curr >=s.length()){
    noLoop();
  }
}