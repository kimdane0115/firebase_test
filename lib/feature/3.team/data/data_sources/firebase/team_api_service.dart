

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'team_api_service.g.dart';

//https://firestore.googleapis.com/v1/projects/YOUR_PROJECT_ID/databases/(default)/documents/cities/LA
@RestApi(baseUrl: 'https://firestore.googleapis.com/v1/projects/myteam-b79d1/databases/(default)/documents/')
abstract class TeamApiService {
  factory TeamApiService(Dio dio) = _TeamApiService;

  @GET("city1/{teamId}")
  Future<void> getTeam(@Path("teamId") String teamId);

  // @POST('/sign-in/by-email')
  // Future<void> signInByEmail(@Body() String request);
}