import 'dart:math';

// Factory constructor
abstract class Shape {
  factory Shape(String type) {
    if (type == "circle") return Circle(2);
    if (type == "square") return Square(5);
    throw "Can't create $type";
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

/*
// a function to make and return objects

Shape shapeFactory(String type) {
  if (type == "circle") return Circle(2);
  if (type == "square") return Square(5);
  throw "Can't create $type";
}
*/

main() {
  //final circle = shapeFactory("circle");
  //final square = shapeFactory("square");
  final circle = Shape("circle");
  final square = Shape("square");
  //making use of factory constructor
  print(circle.area);
  print(square.area);
}
