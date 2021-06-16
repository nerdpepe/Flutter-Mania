import 'Bicycle.dart';

void main() {
  var my_bike = new Bicycle(11, 5, 200);
  print(my_bike);

  // Will give error as the getter is not set
  // print(my_bike._maxSpeed);

  my_bike.applyNitro(100);
  print(my_bike);

  my_bike.applyNitro(50);
  print(my_bike);

  my_bike.applyNitro(100);
  print(my_bike);
}
