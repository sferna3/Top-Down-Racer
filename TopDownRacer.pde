//Sean Fernandes Final Project
//Top Down Racer
//Steer your car with 'a' and 'd'. Complete laps as quickly as possible
//Avoid red hazard areas, but go after blue boost pads
// Driving into the grass will slow you down, while driving into the center will stop you.


Car player;
Track track;
Boost boost;
String direction;
String state;
ArrayList <TrackFeature> features;
color backgroundColor;


void setup(){
  size(1200, 900);
  translate(width/2, height/2);
  backgroundColor = color(100, 255, 100);
  background(backgroundColor);
  player = new Car(0, -300);
  track = new Track(createShape(ELLIPSE, 0, 0, 1000 , 800),
  createShape(ELLIPSE, 0, 0, 650 , 500));
  track.render();
  direction = "";
  rectMode(CENTER);
  features = new ArrayList <TrackFeature>();
  boost = new Boost(0, 0);
  state = "";
}

void draw(){
  background(backgroundColor);
  translate(width/2, height/2);
  track.update(direction);
  boost.update(player);
  //for(int i = 0; i < features.size(); i++){
  //  features.get(i).update(player); 
  //}
  player.update(direction);
  direction = "";
  manageStates();
  player.handleStates(state);
  }
  
  
  
  
  void manageStates(){
    if (keyPressed){
      if(key == 'a'){
        direction = "Left";
      }
      if(key == 'd'){
        direction = "Right"; 
      }
    }
    for(int i = 0; i < features.size(); i++){
      TrackFeature tempFeature = features.get(i);
      if(tempFeature.testCollision(player)){
        if(tempFeature.getMag() == 10){
          state = "boost"; 
        }
        else if(tempFeature.getMag() == 2.5){
          state = "hazard"; 
        }
      }
    }
    
    if(track.inCenter(player)){
      state = "inCenter"; 
    }
    else if(track.offTrack(player)){
      state = "offTrack"; 
    }
    else if(track.onTrack(player)){
      state = "onTrack"; 
    }
  }
  
  //generates track features within track. This unfortunately only works with a circular map
  void createFeatures(){
    
  }
