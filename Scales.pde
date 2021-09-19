void setup() {
  size(500,500);
  background(#74E03F);
  noLoop();
}
void draw() {
  for(int y = 0; y < 500; y=y+40){
    for(int x = 0; x < 500; x=x+20){
        scale(x,y);
        scale(x,y-60);
        scale(x,y+60);
    }
  }
}
void scale(int x, int y) {
   fill((int)(Math.random()*100),(int)(Math.random()*76)+180,(int)(Math.random()*100));
   beginShape();
   curveVertex(20+x,0+y);
   curveVertex(20+x,0+y);
   curveVertex(12.5+x,10+y);
   curveVertex(0+x,20+y);
   curveVertex(12.5+x,30+y);
   curveVertex(20+x,40+y);
   curveVertex(20+x,40+y);
   endShape(); 
   line(20+x,0+y,20+x,40+y);
}
