//This was a nightmare

class oldTrack{
  int trackWidth;
  int mapSize;
  PShape outside;
  PVector location;
  PVector velocity;
  float rotation;
  
  
  oldTrack (PShape trackOutside){
    trackWidth = 100;
    mapSize = 1000;
    outside = trackOutside;
    location = new PVector(0, 0);
    velocity = new PVector(0, 10);
    rotation = 0;
  }
  
  void render(){
    shapeMode(CENTER);
    outside.setFill(color(0, 0, 0));
    shape(outside, location.x, location.y);
  }
  
  void update(String direction){ 
    handleTurns(direction);
    render();
    //line exists for debugging
    line(0, 0, location.x, location.y);
    location.add(velocity);
  }
  //Rotates track to give illusion of car turning. It's taken a lot of trial and error to get this far
  //List of problems (in order of badness):
  //Objects don't rotate around center of screen
  //"Track" renders from top left corner instead of center of square
  //Rotating creates weird second ghost image
  //Rotating not as smooth as I want it to be
  
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
