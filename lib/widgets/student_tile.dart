 import 'package:flutter/material.dart';

class StudentTile extends StatelessWidget {
  final String name;
  final String studentId;
  final bool isPresent;
  final ValueChanged<bool> onChanged;

  const StudentTile({
    super.key,
    required this.name,
    required this.studentId,
    required this.isPresent,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: ListTile(
        title: Text(
          name,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text('Carné: $studentId'),
        trailing: Switch(
          value: isPresent,
          onChanged: onChanged,
        ),
      ),
    );
  }
}