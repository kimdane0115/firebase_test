import 'package:firebase_test/feature/2.home/data/models/data_request.dart';
import 'package:firebase_test/feature/2.home/data/models/member_model.dart';
import 'package:firebase_test/feature/2.home/presentation/provider/home_provider.dart';

import '../../../../core/constants/index.dart';
import '../../../../flavors.dart';


const String bodyStr = '''{
    "name": "",
    "fields": {
        "member_name": {
            "stringValue": "zidane16"
        },
        "member_number": {
            "stringValue": "16"
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
    // Map<String, dynamic> fields = {};
    // fields['member_name'] = {"stringValue": "zidane12"};
    // fields['member_number'] = {"stringValue": "12"};
    // fields['member_id'] = {"stringValue": "1"};
    // fields['phone'] = {"stringValue": "010-1234-4321"};

    MemberModel data = MemberModel(
      memberName: {"stringValue": "zidane16"},
      memberNumber: {"stringValue": "16"},
      memberId: {"stringValue": "6"},
      phone: {"stringValue": "010-1234-4321"},
    );

    DataRequest model = DataRequest(
      // name: "",
      fields: data,
      // createTime: '2024-01-25T07:15:58.443669Z',
      // updateTime: '2024-01-25T07:15:58.443669Z',
    );
    // await ref.read(homeRepositoryProvider).getTeam('best');
    // await ref.read(homeRepositoryProvider).getMember('best');
    await ref.read(homeRepositoryProvider).patchMemberId("borussia", "zidane16", model);
    print('>>>> ${jsonEncode(model)}');
    // await ref.read(homeRepositoryProvider).patchMemberIdString("best", "zidane17", jsonEncode(model));
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
