

import 'package:firebase_test/feature/2.home/data/models/record_model.dart';
import 'package:firebase_test/feature/2.home/domain/repository/home_repository.dart';

import '../data_sources/firebase/home_api_service.dart';
import '../models/common_request.dart';
import '../models/data_request.dart';
import '../models/member_model.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeApiService _homeApiService;

  HomeRepositoryImpl(this._homeApiService);
  
  @override
  Future<void> getTeam(String teamId) async {
    var res = await _homeApiService.getTeam(teamId);
    // throw UnimplementedError();
  }

  @override
  Future<void> getMember(String teamId) async {
    var res = await _homeApiService.getMember(teamId);
    // throw UnimplementedError();
  }
  
  @override
  Future<void> getUserData(String userId) {
    // TODO: implement getUserData
    throw UnimplementedError();
  }
  
  @override
  Future<void> signInByEmail(String request) {
    // TODO: implement signInByEmail
    throw UnimplementedError();
  }
  
  @override
  Future<void> patchMemberId(String teamId, String memberId, DataRequest<MemberModel> request) async {
    // var res = await _homeApiService.patchMemberId(teamId, memberId, request);
    // throw UnimplementedError();
  }
  
  @override
  Future<void> patchMemberIdCommon(String teamId, String memberId, CommonRequest<MemberModel> request) async {
    var res = await _homeApiService.patchMemberIdCommon(teamId, memberId, request);
    // throw UnimplementedError();
  }

  @override
  Future<void> patchMemberRecordYear(String teamId, String memberId,
      String year, CommonRequest<RecordModel> request) async {
    var res = await _homeApiService.patchMemberRecordYear(
        teamId, memberId, year, request);
    // throw UnimplementedError();
  }
  

  // @override
  // Future<DataResponse<SignModel>> signInByEmail(SignRequest request) async {
  //   var res = await _signInApiService.signInByEmail(request);
  //   return res;
  //   // throw UnimplementedError();
  // }

  // @override
  // Future<void> signInBySns() {
  //   // TODO: implement signInBySns
  //   throw UnimplementedError();
  // }

  // @override
  // Future<void> signOut() {
  //   // TODO: implement signOut
  //   throw UnimplementedError();
  // }

}