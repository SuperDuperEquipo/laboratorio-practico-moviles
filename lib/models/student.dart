class Student {
  final String name;
  final String studentId;

  final bool initialPresent;

  bool isPresent;

  Student({
    required this.name,
    required this.studentId,
    required this.initialPresent,
  }) : isPresent = initialPresent;

  void reset() {
    isPresent = initialPresent;
  }
}
