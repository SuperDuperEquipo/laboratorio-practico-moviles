import '../models/student.dart';

List<Student> buildInitialStudents() {
  return [
    Student(name: 'Andrea López', studentId: '20240001', initialPresent: true),
    Student(
      name: 'Carlos Menjívar',
      studentId: '20240002',
      initialPresent: false,
    ),
    Student(
      name: 'Sofía Hernández',
      studentId: '20240003',
      initialPresent: false,
    ),
    Student(name: 'José Alas', studentId: '20240004', initialPresent: true),
    Student(name: 'María Ayala', studentId: '20240005', initialPresent: true),
    Student(
      name: 'Luis Quintanilla',
      studentId: '20240006',
      initialPresent: false,
    ),
    Student(
      name: 'Gabriela Pineda',
      studentId: '20240007',
      initialPresent: true,
    ),
    Student(name: 'Diego Rivas', studentId: '20240008', initialPresent: false),
    Student(
      name: 'Fernanda Cerón',
      studentId: '20240009',
      initialPresent: true,
    ),
    Student(
      name: 'Óscar Escobar',
      studentId: '20240010',
      initialPresent: false,
    ),
    Student(
      name: 'Valeria Portillo',
      studentId: '20240011',
      initialPresent: true,
    ),
    Student(
      name: 'Ricardo Guardado',
      studentId: '20240012',
      initialPresent: false,
    ),
  ];
}

extension GroupActions on List<Student> {
  void resetAll() {
    for (final student in this) {
      student.reset();
    }
  }

  void markAllPresent() {
    for (final student in this) {
      student.isPresent = true;
    }
  }
}
