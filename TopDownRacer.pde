Car player;
Track track;
String direction;


void setup(){
  size(800, 600);
  background(128);
  player = new Car(0, 0);
  track = new Track(createShape(RECT, 0, 0, 200, 200));
  track.render();
  player.render();
  direction = "";
  rectMode(CENTER);
  
}

void draw(){
  background(128);
  translate(width/2, height/2);
  player.update(direction);
  track.update(direction);
  direction = "";
  
}

void keyPressed(){
  if(key == 'a'){
    direction = "Left"; 
  }
  if(key == 'd'){
    direction = "Right"; 
  }
}
