
import 'package:flutter_test/flutter_test.dart';

import 'package:meals2/main.dart';

void main() {
  testWidgets('App opens on the categories tab', (WidgetTester tester) async {
    await tester.pumpWidget(const App());

    expect(find.text('Categories'), findsNWidgets(2));
    expect(find.text('Italian'), findsOneWidget);
  });
}
