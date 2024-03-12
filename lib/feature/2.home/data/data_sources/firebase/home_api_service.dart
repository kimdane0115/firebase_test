

import 'package:dio/dio.dart';
import 'package:firebase_test/feature/2.home/data/models/data_response.dart';
import 'package:firebase_test/feature/2.home/data/models/firebase_data_response.dart';
import 'package:firebase_test/feature/2.home/data/models/record_model.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/common_request.dart';
import '../../models/data_request.dart';
import '../../models/member_model.dart';

part 'home_api_service.g.dart';

//https://firestore.googleapis.com/v1/projects/YOUR_PROJECT_ID/databases/(default)/documents/cities/LA
@RestApi(baseUrl: 'https://firestore.googleapis.com/v1/projects/myteam-b79d1/databases/(default)/documents/')
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET("/users/{userId}")
  Future<void> getUserData(@Path("userId") String userId);

  @GET("city1/{teamId}")
  Future<void> getTeam(@Path("teamId") String teamId);

  @GET("city1/{teamId}/member")
  Future<DataResponse<FirebaseDataResponse<MemberModel>>> getMember(@Path("teamId") String teamId);

  @PATCH('city1/{teamId}/member/{memberId}')
  Future<void> patchMemberId(@Path("teamId") String teamId,
      @Path("memberId") String memberId, @Body() DataRequest<MemberModel> request);

  @PATCH('city1/{teamId}/member/{memberId}')
  Future<void> patchMemberIdCommon(@Path("teamId") String teamId,
      @Path("memberId") String memberId, @Body() CommonRequest<MemberModel> request);

  @PATCH('city1/{teamId}/member/{memberId}/record_year/{year}')
  Future<void> patchMemberRecordYear(
      @Path("teamId") String teamId,
      @Path("memberId") String memberId,
      @Path("year") String year,
      @Body() CommonRequest<RecordModel> request);

  @PATCH('city1/{teamId}/member/{memberId}/record_month/{month}')
  Future<void> patchMemberRecordMonth(
      @Path("teamId") String teamId,
      @Path("memberId") String memberId,
      @Path("month") String year,
      @Body() CommonRequest<RecordModel> request);

  @PATCH('city1/{teamId}/member/{memberId}/record_day/{day}')
  Future<void> patchMemberRecordDay(
      @Path("teamId") String teamId,
      @Path("memberId") String memberId,
      @Path("day") String year,
      @Body() CommonRequest<RecordModel> request);

  // @POST('/sign-in/by-email')
  // Future<void> signInByEmail(@Body() String request);
}