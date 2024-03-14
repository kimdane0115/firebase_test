import 'package:firebase_test/feature/2.home/data/models/data_request.dart';
import 'package:firebase_test/feature/2.home/data/models/member_model.dart';
import 'package:firebase_test/feature/2.home/data/models/record_model.dart';
import 'package:firebase_test/feature/2.home/presentation/provider/home_provider.dart';
import 'package:firebase_test/feature/2.home/presentation/provider/member_state_notifier.dart';
import 'package:firebase_test/feature/2.home/presentation/widget/member_card.dart';

import '../../../../core/constants/index.dart';
import '../../../../flavors.dart';
import '../../data/models/common_request.dart';
import '../../domain/entities/member.dart';


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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ref.read(memberStateNotifierProvider.notifier).getMember('fccall');
  }

  void _incrementCounter(WidgetRef ref) async {
    // Map<String, dynamic> fields = {};
    // fields['member_name'] = {"stringValue": "zidane12"};
    // fields['member_number'] = {"stringValue": "12"};
    // fields['member_id'] = {"stringValue": "1"};
    // fields['phone'] = {"stringValue": "010-1234-4321"};

    RecordModel record = RecordModel(
      game: {"stringValue": "1"},
      goal: {"stringValue": "5"},
      assist: {"stringValue": "1"},
      mom: {"stringValue": "6"},
    );

    MemberModel data = MemberModel(
      memberName: {"stringValue": "zidane21"},
      memberNumber: {"integerValue": '21'},
      memberId: {"stringValue": "21"},
      phone: {"stringValue": "010-1234-4321"},
    );

    DataRequest<MemberModel> model = DataRequest(data: data);
    // CommonRequest<MemberModel> commonModel = CommonRequest(name: "", fields: data);
    CommonRequest<MemberModel> commonModel = CommonRequest(fields: data);
    CommonRequest<RecordModel> recordModel = CommonRequest(fields: record);

    // DataRequest<MemberModel> model = DataRequest<MemberModel>(
    //   // name: "",
    //   fields: data,
    //   // createTime: '2024-01-25T07:15:58.443669Z',
    //   // updateTime: '2024-01-25T07:15:58.443669Z',
    // );
    // await ref.read(homeRepositoryProvider).getTeam('best');
    // await ref.read(homeRepositoryProvider).getMember('fccall');
    
    // 11111
    // ref.read(getMembersProvider)('fccall');
    // ref.read(addMemberProvider)("borussia", "zidane20", commonModel);

    // 22222
    ref.read(memberStateNotifierProvider.notifier).getMember('fccall');
    // ref.read(memberStateNotifierProvider.notifier).addMember("fccall", "zidane21", commonModel);

    // print('>>>> ${commonModel.toString()}');
    // print('>>>> ${model.toString()}');
    // print('>>>> ${jsonEncode(model.toString())}');
    // model.toJson((p0) {
    //   print('>>>> ${jsonEncode(p0)}');
    // });
    // print('>>> ${model.toJson((p0) => null)}');
    // await ref.read(homeRepositoryProvider).patchMemberId("borussia", "zidane18", model);
    // await ref.read(homeRepositoryProvider).patchMemberIdCommon("borussia", "zidane20", commonModel);
    // await ref.read(homeRepositoryProvider).patchMemberIdString("best", "zidane17", jsonEncode(model));
    // await ref.read(homeRepositoryProvider).patchMemberRecordYear("borussia", "zidane19", "2024", recordModel);
  }

  void addMember(WidgetRef ref) {
    MemberModel data = MemberModel(
      memberName: {"stringValue": "zidane24"},
      memberNumber: {"integerValue": '24'},
      memberId: {"stringValue": "24"},
      phone: {"stringValue": "010-1234-4321"},
    );
    CommonRequest<MemberModel> commonModel = CommonRequest(fields: data);
    ref.read(memberStateNotifierProvider.notifier).addMember("fccall", "zidane24", commonModel);
    ref.invalidate(memberStateNotifierProvider);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer(
        builder: (_, ref, __) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                '',
              ),
            ),
            body: home(ref),
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

  Widget home(WidgetRef ref) {
    final memberList = ref.watch(memberStateNotifierProvider);
    // for(Member item in memberList) {
    //   print('>>> last res : ${item.memberId}, ${item.memberName}, ${item.memberNumber}');
    // }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: memberList.length,
          itemBuilder: (context, index) {
            final member = memberList[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MemberCard(model: member),
                const SizedBox(height: 10,)
              ],
            );
          },
        ),
      ),
    );

    // return Column(
    //   children: [
    //     const Text('123123'),
    //     TextButton(
    //       onPressed:() {
    //         addMember(ref);
    //       },
    //       child: const Text('addMember'),
    //     ),
    //   ],
    // );
  }
}
