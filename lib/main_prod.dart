import 'package:firebase_core/firebase_core.dart';

import 'core/constants/index.dart';
import 'flavors.dart';

import 'main.dart' as runner;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  F.appFlavor = Flavor.prod;
  await runner.main();
}
