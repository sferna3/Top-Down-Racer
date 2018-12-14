class Boost extends TrackFeature{
  PVector location;
  PShape boost;
  
  Boost(float xLoc, float yLoc){
    location = new PVector(xLoc, yLoc);
    newMag = 10;
  }
  
  void render(){
   boost = createShape(RECT, location.x, location.y, 20, 20);
   boost.setFill(color(0, 255, 0));
   shape(boost);
  }
  
  
  void update(Car player){
  render();
    if(testCollision(player)){
      //player.setVelocity(player.getVelocity().mult(multiplier));
      //delay(1000);
      //player.setVelocity(player.getVelocity().mult(0.5));
    }
  }
}
