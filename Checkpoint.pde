class Checkpoint{
  
  PVector location;

  
  Checkpoint(float xPos, float yPos){
    location= new PVector(xPos, yPos);
  }
  
  void update(){
    rect(location.x, location.y, 30, 150);
  }
  
  void checkpass(Car player){
    if(player.getSize()/2 + player.getX() > location.x + width/2 &&
    player.getSize()/2 + player.getY() < location.y + height/2){
      
    }
  }
}
