import 'package:flutter/material.dart';

import 'data/students_data.dart';
import 'models/student.dart';
import 'widgets/attendance_header.dart';
import 'widgets/global_actions.dart';
import 'widgets/student_tile.dart';

void main() {
  runApp(const AttendanceApp());
}

class AttendanceApp extends StatelessWidget {
  const AttendanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asistencia',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const AttendanceScreen(groupName: 'Grupo 2'),
    );
  }
}

class AttendanceScreen extends StatefulWidget {
  final String groupName;

  const AttendanceScreen({super.key, required this.groupName});

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  final List<Student> _students = buildInitialStudents();

  int get _presentCount => _students.where((s) => s.isPresent).length;

  void _setPresence(int index, bool value) {
    setState(() {
      _students[index].isPresent = value;
    });
  }

  void _markAllPresent() {
    setState(() {
      _students.markAllPresent();
    });
  }

  void _resetAll() {
    setState(() {
      _students.resetAll();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AttendanceHeader(
              groupName: widget.groupName,
              presentCount: _presentCount,
              total: _students.length,
            ),
            GlobalActions(
              onMarkAllPresent: _markAllPresent,
              onReset: _resetAll,
            ),
            const Divider(height: 1),
            Expanded(
              child: ListView.builder(
                itemCount: _students.length,
                itemBuilder: (context, index) {
                  final student = _students[index];
                  return StudentTile(
                    name: student.name,
                    studentId: student.studentId,
                    isPresent: student.isPresent,
                    onChanged: (value) => _setPresence(index, value),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
