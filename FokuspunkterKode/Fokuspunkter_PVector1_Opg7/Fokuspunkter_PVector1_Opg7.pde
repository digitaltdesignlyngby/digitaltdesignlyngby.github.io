//BOLD DER FALDER

//startværdier
PVector acc   = new PVector(0.0  ,  0.05);
PVector vel   = new PVector(0    ,  0);
PVector pos   = new PVector(10   ,  0);

void setup(){
  size(1000,500);
}

void draw(){
    clear(); 
  
  //vores physics-engine
    vel.add(acc);
    pos.add(vel);
    
  //reflektion på gulvet
    //if(pos.y>250) {pos.y = 250;  vel.y*=-0.8;}
  
  //tegning af positionen!
    circle(pos.x,pos.y,10);
}
