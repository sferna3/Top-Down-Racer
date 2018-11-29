class Car{
  
 PShape car, body, wheels; 
 PVector location;
 PVector velocity;
 PVector turnRate;
 int carWidth, carHeight;
 
 Car(float xStart, float yStart){
   location = new PVector(xStart, yStart);
   velocity = new PVector(0, 0);
   turnRate = new PVector(5, 0);
   carWidth = 20;
   carHeight = 20;
 }
 
 
 void render(){
   car = createShape(RECT, location.x, location.y, carWidth, carHeight);
   shape(car);
 }
 
 void update(String direction){
   render();
   switch(direction){
     //TODO: Wheel animations
     case "Left":
     case "Right":
     case "Up":
     case "Down":
   }
   location.add(velocity);
 }
}
