void variable (){
    if (pattern1 == 1) {
      pattern2 = 0;
    } else if (pattern1 == 0) {
   if (pattern2 == 0){
     x1 = -399;
     y1 = 200;
     z1 = 399;  
     θ4 = 0;
     θ5 = 0;
     pattern2 = 1;
   }else if(pattern2 ==1){
   }
   if ((x1<400)&&(-400<x1)){
    if (pattern3 == 2){
      x1 = power * (-1) * 400 + (power * (millis()-time)/5)/2;
      z1 = (x1 + 400) * (x1 + 400) / 800;
    }else if (pattern3 == 1){
      x1 = power * (-1) * 400 + power * (millis()-time)/5;
      z1 = power * (-1) * 400 + power * (millis()-time)/5+400;
    }
   }else if (x1<=-400){
   power = 1;
   time = millis();
   if ((y1 < 500)&&(θ5 == 45)){
      y1 += 4;
   }else if((y1 == 500) && (θ5 != 0)){
      θ5 -= 3;
    }else if ((y1 > 200)&&(θ5 == 0)){
      //θ4 += 10;
       y1 -= 4;
    }else if (y1 == 200){
      x1 = -399;
    }
   }else if (400<=x1){
   power = -1;
   time = millis();
   if ((y1 < 440)&&(θ5 != 45)){
      //θ4 -= 10;
       y1 += 4;
    }else if ((y1 >=440)&&(y1<560)&&(θ5 != 45)){
      θ4 -= 6;
       y1 += 1;
    }else if ((y1 == 560)&&(θ5 != 45)){
      θ5 += 3;
    }else if ((θ5 == 45)&&(y1 >= 400)){
       y1 -= 4;
    }else if (y1 < 400){
       x1 = 399;
    }
   }
  }
  θ1m = atan2(y1,x1);
   c3 = (x1*x1 + y1*y1 +(z1 - 400)*(z1 - 400)-400*400-400*400)/(2*400*400);
  θ3m = atan2(c3,sqrt(1-c3*c3));
   aA = sqrt(x1*x1 + y1*y1);
   aM = 400 + 400*c3;
   aB = z1 - 400;
   s3 = sqrt(1-c3*c3);
   aN = 400*s3;
  θ2m = atan2(aN*aA + aM*aB, aM*aA - aN*aB);
  θ1 = θ1m*45/0.785;
  θ2 = 90-θ2m*45/0.785;
  θ3 = 180 - θ3m*45/0.785-90;
}

void screwpj(){
  if (θ5 == 0){
    flag1 = 1;
  }else if (θ5 == 45){
    flag1 = 0;
  }
}

void screw(){
  if (pattern1 == 0){
  if (flag1 == 1){
    translate(y1+210,-z1,x1);
    rotateZ(radians(-90));
    rotateY(radians(θ4));
    box(30,10,30);
    translate(0,75,0);
    pillar(150,10,10);
    translate(0,-75,0);
    rotateY(radians(-θ4));
    rotateZ(radians(90));
    translate(-y1-210,z1,-x1);
  }else if (flag1 == 0){
    translate(710,0,-400);
    rotateZ(radians(-90));
    box(30,10,30);
    translate(0,75,0);
    pillar(150,10,10);
    translate(0,-75,0);
    rotateZ(radians(90));
    translate(-710,0,400);
  }
 }
}

void rolling(){
  if (power == 1){
    while (θ4 != 360){
    θ4 += 5;
    y1 += 1;
    }
  }else if (power == -1){
    while ( θ4 != 0){
    θ4 -= 5;
    y1 =-1;
  }
 }
}
    
