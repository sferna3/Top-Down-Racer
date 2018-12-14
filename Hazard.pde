class Hazard extends TrackFeature{
  
  PVector location;
  float multiplier;
  
  Hazard(float xLoc, float yLoc){
    location = new PVector(xLoc, yLoc);
    multiplier = .5;
  }
  
}
