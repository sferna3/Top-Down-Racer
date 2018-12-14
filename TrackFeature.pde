class TrackFeature{
  PVector location  = new PVector(0,0);
  float newMag;
  TrackFeature(){
  }
  
  void setMag(Car player){
    player.setMag(newMag);
  }
  
  boolean testCollision(Car player){
     if(abs(dist(player.getX(), player.getY(), location.x, location.y)) < player.getSize()/2){
       return true; 
     }
     else{
       return false; 
     }
  }
  
  void render(){
    
  }
  
  
  float getMag(){
    return newMag;
  }
  
}
