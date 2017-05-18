class Block{
  PVector pos;
  float len;
  float hgt;
  char[] chars = new char[3];
 Block(){
   float border = .1;
   len = width*.1;
   hgt = height*.1;
   pos = new PVector(random(width*border,width-width*border),(random(height*border,height-height*border)));
  for(int i = 0; i<chars.length; i++){
    chars[i] = char(90-floor(random(26)));
  }
 }
 void display(){
   fill(200,50,50);
   rect(pos.x,pos.y,len,hgt,5);
   fill(255);
   for(int i = 0; i<chars.length; i++){
    text(chars[i],pos.x+len/chars.length*i+len/chars.length/2,pos.y+hgt/2); 
   }
 }
}