Player player;
ArrayList<Letter> letters = new ArrayList<Letter>();
Block[] blocks = new Block[4];
void setup() {
  fullScreen();
  player = new Player();
  for(int i = 0; i<blocks.length; i++){
    blocks[i] = new Block();
  }
  noCursor();
}
void draw() {
  background(255);
  player.display(mouseX, mouseY);
  for (int i = 0; i < letters.size(); i++) {
    Letter let = letters.get(i);
    let.display();
  }
  for(int i = 0; i<blocks.length; i++){
    blocks[i].display();
  }
}
void keyReleased() {
 for(int i = 0; i<blocks.length; i++){
    blocks[i] = new Block();
  }}

void mousePressed() {
  letters.add(new Letter(player.getLetter(),mouseX,mouseY+player.size/2));
}