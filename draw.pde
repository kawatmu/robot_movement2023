import processing .opengl.*;
MouseCamera mouseCamera;
void setup() {
  size(1000,1000,P3D);
  lights();
  mouseCamera = new MouseCamera(800.0, 0, 0, (height/2.0)/tan(PI*30.0/180.0), 0, 0, 0, 0, 1, 0); // MouseCameraの生成
  draw();
}

int gain = 15;
float θ1 = 0;
float θ2 = 0;
float θ3 = 0;
float θ1m = 0;
float θ2m = 0;
float θ3m = 0;
float θ4 = 0;
float θ5 = 0;
float x1 = -399;
float y1 = 200;
float z1 = 399;
float c3 = 0;
float s3 = 0;
float aA = 0;
float aM = 0;
float aB = 0;
float aN = 0;
int power = 1;
int time = 0;
int pattern1 = 0;
int pattern2 = 0;
int pattern3 = 1;
int flag1 = 0;
int flag2 = 0;
float rad = 0;

void draw() {
    variable();
    //rolling()
    println("θ1","θ2","θ3","x1","y1","z1","power","θ5");
    println(int(θ1),int(θ2),int(θ3),int(x1),int(y1),int(z1),power,θ5,millis());
    mouseCamera.update(); // MouseCameraのアップデート
    if (pattern1 == 1){
      background(200,200,200);
    }else if (pattern1 == 0){
      background(255);
    }
    //background(255);
    
    screwpj();
    screw();
    
    translate(0,50,0);
    box(200,100,200);
    translate(0,-50,0);
    
    translate(801,-801,401);
    rotateZ(radians(90));
    pillar(40,12,12);
    rotateZ(radians(-90));
    translate(80,400,0);
    box(200,900,100);
    translate(-80,-400,0);
    translate(-801,801,-401);
    
    translate(0,-200,0);
    rotateY(radians(θ1));
    pillar(400,50,50);
    translate(0,-200,0);
    rotateZ(radians(90));
    rotateY(radians(θ2));
    //sphere(50);
    pillar(50,50,50);
    translate(-200,0,0);
    //pillar(400,50,50);
    box(400,50,100);
    translate(-200,0,0);
    pillar(50,50,50);
    rotateY(radians(θ3));  
    translate(-200,0,0);
    box(400,50,100);
    translate(-200,0,0);
    sphere(50);
    rotateY(radians(90-θ2-θ3));
    rotateZ(radians(90-θ1));
    translate(-75,0,0);
    rotateZ(radians(90));
    //rotateY(radians(θ3));
    rotateY(radians(θ4));
    pillar(150,50,50);
    translate(0,50,42.5);
    rotateZ(radians(-90));
    pillar(25,15,15);
    //θ5 = ((power * (-1) * 400 + power * (millis()-time)/5)+400)/9;
    rotateY(radians(θ5));
    translate(-40,0,0);
    box(80,25,25);
    translate(-50,0,-7.5);
    box(20,25,40);
    translate(50,0,7.5);
    translate(40,0,0);
    rotateY(radians(-θ5));
    translate(0,0,-85);
    pillar(25,15,15);
    rotateY(radians(-θ5));
    translate(-40,0,0);
    box(80,25,25);
    translate(-50,0,7.5);
    box(20,25,40);
    translate(0,0,35);
    rotateZ(radians(90));
}




// マウス操作に応じたMouseCameraの関数を呼び出す
void mousePressed() {
    mouseCamera.mousePressed();
}
void mouseDragged() {
    mouseCamera.mouseDragged();
}
void mouseWheel(MouseEvent event) {
    mouseCamera.mouseWheel(event);
}
