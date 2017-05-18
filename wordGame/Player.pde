class Player {
  float size;
  Player() {
    size = height/4;
  } 
  float a;
  void display(float x, float y) {
    a+=.01;
    fill(200);
    stroke(60);
    strokeWeight(3);
    ellipse(x, y, size, size);
    for (int i = 0; i<26; i++) {
      fill(0);
      textAlign(CENTER, CENTER);
      float cx = x+cos(TAU/26*i+a+PI/2+TAU/26/2)*(size*.9)/2;
      float cy = y+sin(TAU/26*i+a+PI/2+TAU/26/2)*(size*.9)/2;
      text(char(90-i), cx, cy);
    }
    float newsize = 0.8;
    float dif = PI/20;
    line(x+cos(PI/2+dif)*size/2, y+sin(PI/2+dif)*size/2, x+cos(PI/2+dif)*size/2*newsize, y+sin(PI/2+dif)*size/2*newsize);
    dif = -dif;
    line(x+cos(PI/2+dif)*size/2, y+sin(PI/2+dif)*size/2, x+cos(PI/2+dif)*size/2*newsize, y+sin(PI/2+dif)*size/2*newsize);
    noFill();
    ellipse(x,y,size*newsize-3,size*newsize-3);
  }
  char getLetter() {
    return char(int(map(a%TAU, 0, TAU, 65, 91)));
  }
}