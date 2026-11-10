import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:kartu_profil_digital/main.dart';
import 'package:kartu_profil_digital/services/pref_service.dart';

void main() {
  testWidgets('Project list smoke test', (WidgetTester tester) async {
    SharedPreferences.setMockInitialValues({});
    final prefs = await PrefService.init();

    await tester.pumpWidget(MyApp(prefs: prefs));

    expect(find.text('Proyek Saya'), findsOneWidget);
  });
}
