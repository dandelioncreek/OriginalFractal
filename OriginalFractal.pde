public void setup(){
  size(600,900);
  background(0);
}
public void draw(){
  myFractal(300, 300, 300);
}
public void myFractal(int x, int y, int r){
  if (r<=5)
    ellipse(x, y, r, r);
  else {
    myFractal(x,y-(r/2), r/2);
    myFractal(x, y+(r-2), r/2);
    myFractal(x-(r/2), y, r/2);
    myFractal(x+(r/2), y, r/2);
  }
}
