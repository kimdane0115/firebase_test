import 'package:firebase_test/feature/2.home/presentation/provider/home_provider.dart';

import '../../../../core/constants/index.dart';
import '../../../../flavors.dart';


const String bodyStr = '''{
    "name": "",
    "fields": {
        "member_name": {
            "stringValue": "zidane15"
        },
        "member_number": {
            "stringValue": "15"
        },
        "member_id": {
            "stringValue": "2"
        },
        "phone": {
            "stringValue": "010-1234-4321"
        }
    },
    "createTime": "2024-01-25T07:15:58.443669Z",
    "updateTime": "2024-01-25T07:15:58.443669Z"
}''';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {

  void _incrementCounter(WidgetRef ref) async {
    // await ref.read(homeRepositoryProvider).getTeam('best');
    await ref.read(homeRepositoryProvider).getMember('best');
    await ref.read(homeRepositoryProvider).patchMemberId("best", "zidane15", bodyStr);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer(
        builder: (_, ref, __) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                F.title,
              ),
            ),
            body: home(),
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                // FirebaseStorage _storage = FirebaseStorage.instance;
                // Reference _ref = _storage.ref("test/text");
                // _ref.putString("헬로우 월드 !!");
          
                // Reference ref = FirebaseStorage.instance.ref().child('test/text');
                // final str = await ref.getData();
                // print('>>> str : $str');
                _incrementCounter(ref);
              },
            ),
          );
        }
      ),
    );
  }

  Widget home() {
    return const Text('home screen');
  }
}
