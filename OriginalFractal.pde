public void setup(){
  size(800,1600);
  background(0);
}
public void draw(){
  myFractal(400, 400, 400);
}
public void myFractal(int x, int y, int r){
  if (r<=20)
    ellipse(x, y, r, r);
  else {
    myFractal(x,y-(r/2), r/2);
    myFractal(x, y+(r-2), r/2);
    myFractal(x-(r/2), y, r/2);
    myFractal(x+(r/2), y, r/2);
  }
}
