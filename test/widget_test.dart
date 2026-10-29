import 'package:flutter_test/flutter_test.dart';

import 'package:recetasapp/main.dart';

void main() {
  testWidgets('La app muestra la pantalla de bienvenida', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Recetas App'), findsOneWidget);
  });
}
