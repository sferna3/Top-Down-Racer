class Track{
  int trackWidth;
  int mapSize;
  PShape outside;
  PShape inside;
  PVector location;
  PVector velocity;
  float maxSpeed;
  float turnRate;
  float rotation;
  
  
  Track(PShape trackOutside){
    trackWidth = 100;
    mapSize = 1000;
    outside = trackOutside;
    location = new PVector(0, 0);
    velocity = new PVector(0, 10);
    turnRate = 1;
    rotation = 0;
  }
  
  void render(){
    rectMode(CENTER);
    outside.setFill(color(0, 0, 0));
    shape(outside, location.x, location.y);
  }
  
  void update(String direction){ 
    rectMode(CENTER);
    handleTurns(direction);
    render();
    line(0, 0, location.x, location.y);
    location.add(velocity);
  }
  //Rotates track to give illusion of car turning.
  //Rotating left is weird and I have absolutely no idea why
  //Objects don't rotate around center of screen
  void handleTurns(String direction){
    if (direction == "Left"){
      translate(width/2, height/2);
      rotation = rotation + 5;
      rotate(radians(rotation));
      velocity.rotate(radians(-5));
    }
    if (direction == "Right"){
      translate(width/2, height/2);
      rotation = rotation - 5;
      rotate(radians(rotation));
      velocity.rotate(radians(5));
    }
    else{
    rotate(radians(rotation));
    }
  }
}
