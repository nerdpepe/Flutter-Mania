class Bicycle {
  int cadence;
  int _speed = 0;
  int gear;
  int get speed => _speed;
  Bicycle(this.cadence, this.gear);
  
  void applyBrake(int decrement) {
    _speed -= decrement;
  }
  
  void applyNitro(int increment) {
    _speed += increment;
  }

  @override
  String toString() => 'Bicycle: $_speed mph';
}

void main() {
  var bike = Bicycle(0, 1);
  bike.applyNitro(50);
  print(bike);
  bike.applyBrake(25);
  print(bike);
}
