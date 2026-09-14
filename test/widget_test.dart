import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:laboratorio_practico_moviles/main.dart';

void main() {
  testWidgets('Muestra el contador inicial y responde a cambios de asistencia', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const AttendanceApp());

    expect(find.textContaining('/ 12'), findsOneWidget);

    final initialCount = int.parse(
      tester
          .widget<Text>(find.textContaining('/ 12'))
          .data!
          .split('Presentes: ')
          .last
          .split(' /')
          .first,
    );

    await tester.tap(find.byType(Switch).first);
    await tester.pump();

    final updatedCount = int.parse(
      tester
          .widget<Text>(find.textContaining('/ 12'))
          .data!
          .split('Presentes: ')
          .last
          .split(' /')
          .first,
    );

    expect(updatedCount, isNot(equals(initialCount)));
  });
}
