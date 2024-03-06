

import 'package:firebase_test/feature/2.home/data/models/data_request.dart';
import 'package:firebase_test/feature/2.home/data/models/record_model.dart';

import '../../data/models/common_request.dart';
import '../../data/models/member_model.dart';

abstract class HomeRepository {
  Future<void> getTeam(String teamId);
  Future<void> getMember(String teamId);
  Future<void> patchMemberId(String teamId, String memberId, DataRequest<MemberModel> request);
  Future<void> patchMemberIdCommon(String teamId, String memberId, CommonRequest<MemberModel> request);

  Future<void> patchMemberRecordYear(String teamId, String memberId, String year, CommonRequest<RecordModel> request);
  Future<void> getUserData(String userId);
  Future<void> signInByEmail(String request);
}