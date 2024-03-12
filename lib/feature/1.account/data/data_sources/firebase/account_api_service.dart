

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';


part 'account_api_service.g.dart';

//https://firestore.googleapis.com/v1/projects/YOUR_PROJECT_ID/databases/(default)/documents/cities/LA
@RestApi(baseUrl: 'https://firestore.googleapis.com/v1/projects/myteam-b79d1/databases/(default)/documents/')
abstract class AccountApiService {
  factory AccountApiService(Dio dio) = _AccountApiService;

  @POST('/sign-in/by-email')
  Future<void> findPassword(String request);
}