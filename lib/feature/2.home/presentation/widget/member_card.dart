import '../../../../core/constants/index.dart';
import '../../domain/entities/member.dart';
class MemberCard extends ConsumerStatefulWidget {
  final Member model;
  const MemberCard({super.key, required this.model});

  @override
  ConsumerState<MemberCard> createState() => _MemberCardState();
}

class _MemberCardState extends ConsumerState<MemberCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Container(
            color: Colors.blue,
            width: 50,
            height: 50,
          ),
          const SizedBox(width: 30,),
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.model.memberNumber.toString()),
              Text(widget.model.memberName),
              Text(widget.model.phone)
            ],
          ),
        ],
      )
    );
  }
}