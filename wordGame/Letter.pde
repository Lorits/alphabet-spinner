class Letter{
  PVector pos;
  PVector vel;
  char letter;
  
  Letter(char let, float x, float y){
    letter = let;
    pos = new PVector(x,y);
    vel = new PVector(random(-1,1),random(4,8));
  }
  void display(){
    pos.add(vel);
    text(letter,pos.x,pos.y);
  }
}