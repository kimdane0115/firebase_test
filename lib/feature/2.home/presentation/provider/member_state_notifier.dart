import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/common_request.dart';
import '../../data/models/member_model.dart';
import '../../domain/entities/member.dart';
import '../../domain/usecases/add_member.dart';
import '../../domain/usecases/get_members.dart';
import 'home_provider.dart';
// part 'member_state_notifier.g.dart';

final memberStateNotifierProvider = StateNotifierProvider<MemberListStateNotifier, List<Member>>((ref) {
  final getMembers = ref.read(getMembersProvider);
  final addMember = ref.read(addMemberProvider);
  return MemberListStateNotifier(getMembers, addMember);
});

class MemberListStateNotifier extends StateNotifier<List<Member>> {

  final GetMembers _getMembers;
  final AddMember _addMember;

  MemberListStateNotifier(this._getMembers, this._addMember): super([]);

  Future<void> getMember(String teamId) async {
    // final tripsOrFailure = await _getTrips();
    // tripsOrFailure.fold((error) => state = [], (trips) => state = trips);
    final res = await _getMembers(teamId);
    state = res;
  }

  Future<void> addMember(String teamId, String memberId, CommonRequest<MemberModel> request) async {
    await _addMember(teamId, memberId, request);
    //state = [...state, trip];
  }
}