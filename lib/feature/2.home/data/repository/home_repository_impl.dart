

import 'package:firebase_test/feature/2.home/domain/repository/home_repository.dart';

import '../data_sources/firebase/home_api_service.dart';
import '../models/data_request.dart';

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
  Future<void> patchMemberId(String teamId, String memberId, DataRequest request) async {
    var res = await _homeApiService.patchMemberId(teamId, memberId, request);
    // throw UnimplementedError();
  }
  
  @override
  Future<void> patchMemberIdString(String teamId, String memberId, String request) async {
    var res = await _homeApiService.patchMemberIdString(teamId, memberId, request);
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