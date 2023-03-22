void main() {
  final bert = Student(firstName: 'Bert', lastName: 'Fady', grade: 95);
  print(bert);
  final ernie = Student(firstName: 'Ernie', lastName: 'Fady', grade: 85);
  print(ernie);

  final sphere = Sphere(radius: 12);
  print('Volume: ${sphere.volume}');
  print('Area: ${sphere.area}');
}

/// Challenge 1: Bert and Ernie
///
/// Create a `Student` class with final `firstName` and `lastName`
/// `String` properties and a variable `grade` as an `int` property.
/// Add a constructor to the class that initializes all the properties.
/// Add a method to the class that nicely formats a `Student` for printing.
/// Use the class to create students `bert` and `ernie` with grades of 95 and
/// 85, respectively.
class Student {
  final String firstName;
  final String lastName;
  final int grade;

  const Student({
    required this.firstName,
    required this.lastName,
    required this.grade,
  });

  @override
  String toString() =>
      'Student(firstName: $firstName, lastName: $lastName, grade: $grade)';
}

/// Challenge 2: Spheres
///
/// Create a `Sphere` class with a `const` constructor that takes a positive
/// length `radius` as a named parameter. Add getters for the the volume and
/// surface area but none for the radius. Don't use the `dart:math` package
/// but store your own version of `pi` as a `static` constant. Use your class
/// to find the volume and surface area of a sphere with a radius of 12.
class Sphere {
  static const pi = 22 / 7;

  final double _radius;

  const Sphere({required double radius})
      : assert(radius > 0),
        _radius = radius;

  double get volume => 4 / 3 * pi * _radius * _radius * _radius;

  double get area => 4 * pi * _radius * _radius;
}
