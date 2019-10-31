import 'package:busca_lena/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Login has title', (tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('Busca Leña'), findsOneWidget);
  });
}
