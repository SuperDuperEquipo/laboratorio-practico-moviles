import 'package:flutter/material.dart';

class AttendanceHeader extends StatelessWidget {
  final String groupName;
  final int presentCount;
  final int total;

  const AttendanceHeader({
    super.key,
    required this.groupName,
    required this.presentCount,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              groupName,
              style: Theme.of(context).textTheme.titleLarge,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            'Presentes: $presentCount / $total',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
