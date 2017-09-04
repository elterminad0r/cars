float radiansToColour(float x) {
    return (sin(x) + 1) * 180;
}

ArrayList<Car> cars;

void setup() {
  size(1500, 800);
  cars = new ArrayList<Car>();
  
  for (int i = 0; i < 100; i++) {
    cars.add(new Car());
  }
}

void draw() {
  background(0);
  for (Car c : cars) {
    c.Move();
    c.DrawCar();
  }
}
