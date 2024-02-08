void keyPressed() {  //矢印キーでx,y変化
  //if (sqrt(x1*x1 + y1*y1 + (z1-400)*(z1-400)) < 800){
  if (pattern1 == 1){
    if (key == CODED) {
    if (keyCode == RIGHT) {
           x1 += gain;
    } else if (keyCode == LEFT) {
           x1 -= gain;
    }else if (keyCode == UP) {
           y1 += gain;
    }else if (keyCode == DOWN) {
           y1 -= gain;
    }
  }
  else if (key == 'w'){
           z1 += gain;
  }else if (key == 's'){
           z1 -= gain;
  }else if (key == 'e'){
           θ4 += gain;
  }else if (key == 'd'){
           θ4 -= gain;
  }else if (key == 'r'){
           θ5 -= gain;
  }else if (key == 'f'){
           θ5 += gain;
  }else if (key == 'a'){
           pattern1 = 0;
  }else if (key == 'q'){
           pattern1 = 1;
  }}else if (pattern1 == 0){
    if (key == 'a'){
           pattern1 = 0;
    }else if (key == 'q'){
           pattern1 = 1;
    }else if (key == '2'){
           pattern3 = 2;
    }else if (key == '1'){
           pattern3 = 1;
    }
  }
    
  if (key == CODED) {
  if (sqrt(x1*x1 + y1*y1 + (z1-400)*(z1-400)) > 800){
    if (x1 < 0){
      x1 += 15;
    }else if (x1 > 0){
      x1 -= 15;
    }else if (y1 < 0){
      y1 += 15;
    }else if (y1 > 0){
      y1 -= 15;
    }else if (z1 < 0){
      z1 += 15;
    }else if (z1 > 0){
      z1 -= 15;
    }
   }
  }
}
