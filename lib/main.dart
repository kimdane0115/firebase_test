import 'dart:async';
import 'app.dart';
import 'core/constants/index.dart';

FutureOr<void> main() async {
  runApp(const ProviderScope(child: App()));
}