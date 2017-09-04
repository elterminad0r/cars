class Car {
  int x, y, speed, up;
  float r, g, b, size, thetaRotate, thetaSize, off;
  Car() {
    this.x = (int)random(width);
    this.off = (int)random(1000);
    this.speed = 1;
    this.up = (int)random(400);
    this.r = random(2 * PI);
    this.g = random(2 * PI);
    this.b = random(2 * PI);
    this.thetaRotate = random(2 * PI);
    this.thetaSize = random(2 * PI);
  }
  void Move() {
    this.x += this.speed;
    this.thetaRotate += 0.01;
    this.thetaSize += 0.01;
    this.r += 0.05;
    this.g += 0.05;
    this.b += 0.05;
    
    if (this.x - 50 * sqrt(2) > width) {
      this.x = (int)(-50 * sqrt(2));
    }
  }
  void DrawCar() {
    this.y = (int)(sin((this.x + this.off) / 100) * 150 + 200 + this.up);
    this.size = sin(this.thetaSize) * 50;
    fill(radiansToColour(this.r), radiansToColour(this.b), radiansToColour(this.g));
    translate(this.x, this.y);
    rotate(this.thetaRotate);
    
    rect(0, 0, this.size, this.size, 10);
    
    rotate(-this.thetaRotate);
    translate(-this.x, -this.y);
  }
}


