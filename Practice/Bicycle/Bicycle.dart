class Bicycle {
  int cadence;
  int gear;

  int _speed = 0;
  int _maxSpeed = 50;
  int get speed => _speed;

  Bicycle(this.cadence, this.gear, this._maxSpeed);

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void applyNitro(int increment) {
    if (_speed + increment < _maxSpeed)
      _speed += increment;
    else
      _speed = _maxSpeed;
  }

  @override
  String toString() => 'Bicycle: $_speed mph';
}

void main() {
  var bike = Bicycle(0, 1, 200);
  bike.applyNitro(50);
  print(bike);
  bike.applyBrake(25);
  print(bike);
}
