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
    inside = trackOutside;
    inside.scale(.5);
    location = new PVector(0, 0);
    velocity = new PVector(0, 10);
    turnRate = 1;
    rotation = 0;
  }
  
  void render(){
    outside.setFill(color(0, 0, 0));
    inside.setFill(128);
    shape(outside, location.x, location.y);
    shape(inside, location.x, location.y);
    rectMode(CENTER);
  }
  
  void update(String direction){
     handleTurns(direction);
     render();
     location.add(velocity);
  }
  //Handles turning depending on quadrant. this was hard and made me regret this choice
  void handleTurns(String direction){
    if (direction == "Left"){
      rotation = rotation + 10;
      rotate(radians(rotation)); 
      velocity.rotate(radians(rotation));
    }
    if (direction == "Right"){
      rotation = rotation + 10;
      rotate(radians(rotation));
      velocity.rotate(radians(rotation));
    }
    else{
      rotate(radians(rotation));
      velocity.rotate(radians(rotation));
    }
  }
}
