int leftWing[][] = {{50, 100}, {350, 100}, {150, 170}, {400, 150}, {120, 220}, {380, 250}};
int rightWing[][] = {{950, 100}, {650, 100}, {850, 170}, {600, 150}, {880, 220}, {620, 250}};

int body[][] = {{400, 150}, {380, 250}, {470, 290}, {500, 330}, {530, 290}, {620, 250}, {600, 150}};

int head[][] = {{450, 150}, {455, 90}, {545, 90}, {550, 150}};

int leftEar[][] = {{455, 90}, {455, 70}, {470, 90}};
int rightEar[][] = {{545, 90}, {545, 70}, {530, 90}};

int leftEye[][] = {{465, 110}, {480, 105}, {495, 110}, {480, 115}};
int rightEye[][] = {{535, 110}, {520, 105}, {505, 110}, {520, 115}};

int col[] = {26, 26, 26, 38, 51, 64};

int cnt = 0;

void draw_left_wing(){
  beginShape(TRIANGLE_STRIP);
    for(int i = 0; i < 6; ++i){
        noStroke();
        fill(col[i]);
        vertex(leftWing[i][0], leftWing[i][1]);
        if(i > 0) fill(col[i-1]);
    }
  endShape();
}

void draw_right_wing(){
  beginShape(TRIANGLE_STRIP);
    for(int i = 0; i < 6; ++i){
        noStroke();
        fill(col[i]);
        vertex(rightWing[i][0], rightWing[i][1]);
        if(i > 0) fill(col[i-1]);
    }
  endShape();
}

void draw_body(){
  fill(38);
  beginShape(POLYGON);
  for(int i = 0; i < 7; ++i){
    vertex(body[i][0], body[i][1]);
  }
  endShape();
}

void draw_head(){
  fill(31);
  quad(head[0][0], head[0][1], head[1][0], head[1][1], head[2][0], head[2][1], head[3][0], head[3][1]);
}

void draw_left_ear(){
  fill(31);
  triangle(leftEar[0][0], leftEar[0][1], leftEar[1][0], leftEar[1][1], leftEar[2][0], leftEar[2][1]);
}

void draw_right_ear(){
  fill(31);
  triangle(rightEar[0][0], rightEar[0][1], rightEar[1][0], rightEar[1][1], rightEar[2][0], rightEar[2][1]);
}

void draw_left_eye(){
  fill(191);
  quad(leftEye[0][0], leftEye[0][1], leftEye[1][0], leftEye[1][1], leftEye[2][0], leftEye[2][1], leftEye[3][0], leftEye[3][1]);
}

void draw_right_eye(){
  fill(191);
  quad(rightEye[0][0], rightEye[0][1], rightEye[1][0], rightEye[1][1], rightEye[2][0], rightEye[2][1], rightEye[3][0], rightEye[3][1]);
}

void draw_left_wing2(){
  beginShape(TRIANGLE_STRIP);
    for(int i = 0; i < 6; ++i){
        noStroke();
        fill(col[i]);
        if(i == 1) vertex(leftWing[i][0] - 10, leftWing[i][1] + 5);
        else if(i % 2 == 0) vertex(leftWing[i][0] + 30, leftWing[i][1] + 15);
        else vertex(leftWing[i][0], leftWing[i][1]);
        if(i > 0) fill(col[i-1]);
    }
  endShape();
}

void draw_right_wing2(){
  beginShape(TRIANGLE_STRIP);
    for(int i = 0; i < 6; ++i){
        noStroke();
        fill(col[i]);
        if(i == 1) vertex(rightWing[i][0] + 10, rightWing[i][1] + 5);
        else if(i % 2 == 0) vertex(rightWing[i][0] - 30, rightWing[i][1] + 15);
        else vertex(rightWing[i][0], rightWing[i][1]);
        if(i > 0) fill(col[i-1]);
    }
  endShape();
}

void setup(){
  size(1000, 400, P2D);
  smooth();
}

void draw(){
  background(170);
  draw_body();
  draw_head();
  draw_left_ear();
  draw_right_ear();
  draw_left_eye();
  draw_right_eye();
  if(cnt % 2 == 0){
    draw_left_wing();
    draw_right_wing();
  }
  else{
    draw_left_wing2();
    draw_right_wing2();
  }
  ++cnt;
  delay(200);
}
