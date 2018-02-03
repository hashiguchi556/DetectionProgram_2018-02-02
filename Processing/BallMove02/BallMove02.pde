boolean Sw=false;
final int ballNum=10;
float[] ballX=new float[ballNum];
float[] ballY=new float[ballNum];
float ballSpeed=2;

PImage ballP,seaP;
void setup() {
  
  seaP=loadImage("sea.jpeg");
  size(453, 350);
  ballP=loadImage("ball.png");
  for(int i=0;i<ballNum;i++){
    ballX[i]=random(0,width);
    ballY[i]=random(0,height);
  }
}
void draw() {
  background(164);
  imageMode(CENTER);
  image(seaP, width/2, height/2, width,height);
  if (Sw) {

    
    for (int i=0; i<ballNum; i++) {
      image(ballP, ballX[i], ballY[i], 100, 100);
      ballY[i]+=ballSpeed;
      if(ballY[i]>height+50){
        ballY[i]=-50;
        ballX[i]=random(0,width);
      }
    }
  }
}
void keyPressed() {
  if (key==' ') {
    Sw=true;
  }
}