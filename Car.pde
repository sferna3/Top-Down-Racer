class Car{
  
 PShape car, body, wheels; 
 PVector location;
 PVector velocity;
 PVector turnRate;
 int carSize;
 float rotation;
 
 Car(float xStart, float yStart){
   location = new PVector(xStart, yStart);
   velocity = new PVector(-5, 0);
   turnRate = new PVector(5, 0);
   carSize = 20;
   rotation = 5;
 }
 
 
 void render(){
   car = createShape(RECT, location.x, location.y, carSize, carSize);
   shape(car);
 }
 
 void update(String direction){
   render();
   switch(direction){
     case "Left":
       velocity.rotate(radians(-6));
     case "Right":
       velocity.rotate(radians(3));
   }
   location.add(velocity);
 }
 
 void handleStates(String state){
     switch(state){
      case "boost":
        velocity.setMag(10);
        break;     
      case "hazard":
        velocity.setMag(2.5);
        break;
      case "offTrack":
        velocity.setMag(1.75);
        break;
      case "onTrack":
        velocity.setMag(5);
        break;
      case "inCenter":
        location.sub(velocity);
        state = "onTrack";
        break;
    }   
 }
 int getSize(){
   return carSize; 
 }
 
 float getX(){
   return location.x; 
 }
 
 float getY(){
   return location.y; 
 }
 
 PVector getVelocity(){
   return velocity; 
 }
 
 PVector getLocation(){
   return location; 
 }
 
 void setLocation(PVector newLoc){
   location = newLoc;
 }
 
 void setMag(float newMag){
   velocity = velocity.setMag(newMag); 
 }
}
