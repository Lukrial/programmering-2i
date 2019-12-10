float x;
float y;
float easing = 0.3;
boolean eyesClosed;

void setup() {
  frameRate(30);
  size(500, 500);
}

void draw() {
  background(25);
  ellipse(250, 250, 200, 280);
  fill(255);
  if(eyesClosed){
    fill(255,224,189);
  }
  ellipse(200, 200, 70, 50);
  ellipse(300, 200, 70, 50);
  fill(255, 224, 189);

  float mousePositionX = mouseX;
  float moveMousePositionX=mousePositionX - x;
  x += moveMousePositionX*easing;

  float mousePositionY = mouseY;
  float moveMousePositionY=mousePositionY - y;
  y += moveMousePositionY*easing;

  ellipse(x, y, 20, 20);
}

void mouseReleased(){
  if (mouseX>150&&mouseY>175&&mouseX<350&&mouseY<225){
    eyesClosed=!eyesClosed;
  }
}
