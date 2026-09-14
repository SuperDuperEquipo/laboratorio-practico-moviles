import 'package:flutter/material.dart';

class GlobalActions extends StatelessWidget {
  final VoidCallback onMarkAllPresent;
  final VoidCallback onReset;

  const GlobalActions({
    super.key,
    required this.onMarkAllPresent,
    required this.onReset,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                onMarkAllPresent();
              },
              child: const Text('Todos presentes'),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                onReset();
              },
              child: const Text('Restablecer'),
            ),
          ),
        ],
      ),
    );
  }
}
