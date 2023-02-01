import 'main_lib.dart';
import 'modules/books_app.dart';

void main() {
  runApp(
    ProviderScope(
      overrides: [],
      child: BookApp(),
    ),
  );
}
