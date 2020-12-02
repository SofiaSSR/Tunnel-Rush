int Counter = 0;
class Player {
  //Atributos
  int[] c = {int(random(255)), int(random(255)), int(random(255))};
  float radius;
  float angle;
  int count;

  //Constructor
  Player(float r, float t) {
    Counter++;
    radius = r;//r no es playerRadius? extra
    angle = t;
    count = Counter;
  }

  //Métodos
  void drawP() {
    if (count == 1) {
      if (keyPressed && key == CODED) {
        if (keyCode == LEFT) {
          angle++;
        } else if (keyCode == RIGHT) {
          angle--;
        }
      }
    } else if (count == 2) {
      if (keyPressed) {
        if (key == 'a') {
          angle++;
        } else if (key == 'd') {
          angle--;
        }
      }
    }
    translate(width/2, height/2, 300);
    fill(c[0], c[1], c[2]);
    stroke(c[0], c[1], c[2]);
    circle(cos(radians(angle))*radius, sin(radians(angle))*radius, 10);
    if(radians(angle)%TWO_PI == 0)
      angle = 0;
  }

}
