boolean Sw=false;
float ballX=0;
float ballSpeed=2;

PImage ballP,seaP;
void setup(){
  size(453,350);
  seaP=loadImage("sea.jpeg");
  ballP=loadImage("ball.png");
}
void draw(){
  imageMode(CENTER);
  image(seaP,width/2,height/2,width,height);
  
  if(Sw){
    image(ballP,ballX,height/2,100,100);
    ballX+=ballSpeed;
    if(ballSpeed>0&&ballX>width+50)
      ballSpeed*=-1;
    if(ballSpeed<0&&ballX<-50)
      ballSpeed*=-1;
  }
}
void keyPressed(){
  if(key==' '){
    Sw=true;
  }
}