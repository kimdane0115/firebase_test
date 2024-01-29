

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

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
  Future<void> getMember(@Path("teamId") String teamId);

  @PATCH('city1/{teamId}/member/{memberId}')
  Future<void> patchMemberId(@Path("teamId") String teamId,
      @Path("memberId") String memberId, @Body() String request);

  @POST('/sign-in/by-email')
  Future<void> signInByEmail(@Body() String request);
}