void main() {
  final bert = Student(firstName: 'Bert', lastName: 'Fady', grade: 95);
  print(bert);
  final ernie = Student(firstName: 'Ernie', lastName: 'Fady', grade: 85);
  print(ernie);
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
