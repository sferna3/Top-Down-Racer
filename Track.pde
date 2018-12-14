class Track{
  int trackWidth;
  int mapSize;
  PShape outside;
  PShape inside;
  PVector location;
  PVector velocity;
  float rotation;
  
  
  Track(PShape trackOutside, PShape trackInside){
    trackWidth = 100;
    mapSize = 1000;
    outside = trackOutside;
    inside = trackInside;
    location = new PVector(0, 0);
    velocity = new PVector(0, 10);
    rotation = 0;
  }
  
  void render(){
    shapeMode(CENTER);
    outside.setFill(color(0, 0, 0));
    inside.setFill(128);
    shape(inside, location.x, location.y);
    shape(outside, location.x, location.y);
  }
  
  void update(String direction){ 
    //handleTurns(direction);
    shape(outside, location.x, location.y);  
    shape(inside, location.x, location.y);
  }
  
  boolean onTrack(Car player){
    if (!inCenter(player) && (sq(player.getX() - location.x)/sq(500) + 
    (sq(player.getY() - location.y)/sq(400)) <= 1)){
      println("ontrack");
      return true; 
    }
    else{
      return false; 
    }
  }
  //source: https://math.stackexchange.com/questions/76457/check-if-a-point-is-within-an-ellipse
  //I wanted to use variables for track size, but doing that kept giving me infinity as an output somehow
  boolean inCenter(Car player){
    if(sq(player.getX() - location.x)/(sq(325)) + 
    sq(player.getY() - location.y)/(sq(250)) <= 1){
      println("inCenter");
      return true; 
    }
    else{
      return false; 
    }
  }
  
  boolean offTrack(Car player){
    if (!inCenter(player) && !onTrack(player)){ //<>//
      println("offTrack");
      return true; 
    }
    else{
      return false; 
    } 
  }
  
}
