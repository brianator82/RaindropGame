class Raindrop {
  PVector loc, vel, g;
  int diam;
  color c;

  Raindrop(int tdiam, float x, int y) {
    diam=tdiam;
    loc= new PVector(x, y);
    c= color(0, random(50, 60), random(225, 255));
    vel= PVector.random2D();
    vel.mult(2);
    g = new PVector(0,.4);
  }
  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam*1.5);
  }
  void fall(){
    vel.add(g);
    loc.add(vel);
  }
  void reset(){
    loc.x= random(width);
    loc.y= 0;
    vel = PVector.random2D();
    vel.add(g);
    loc.add(vel);
  }
  void isInContactwith(){
    
}