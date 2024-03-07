

import 'package:dio/dio.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_test/feature/2.home/domain/repository/home_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/data_sources/firebase/home_api_service.dart';
import '../../data/repository/home_repository_impl.dart';

part 'home_provider.g.dart';

// final homeApiServiceProvider = Provider<HomeApiService>((ref) {
//   // final Box<TripModel> tripBox = Hive.box('trips');
//   final dio = Dio();
//   dio.interceptors.add(
//     // onRequest -> 성공 -> onResponse
//     //                  -> 실패 -> onError -> 토큰 재발급 -> 다시 시작 -> onRequest -> 성공 -> onResponse -> .g serialize -> model return
//     QueuedInterceptorsWrapper(
//       // Request가 보내기 전에 실행됩니다.
//       // 예를 들어, 헤더를 설정하거나 요청을 변환할 수 있습니다.
//       onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
//         return handler.next(options);
//       },
//       // Response를 받은 후에 실행됩니다.
//       // 예를 들어, 상태 코드에 따라 오류 처리를 할 수 있습니다.
//       onResponse: (Response response, ResponseInterceptorHandler handler) {
//         print('>>>>>>> response : ${response.data}');
//         if (response.data!['success']) {
//           return handler.next(response);
//         } else {
//           final newError = DioException(
//             requestOptions: response.requestOptions,
//             response: response,
//             message: response.data!['message'], //표시할 메시지
//             error: response.data!['code'], // 사용자 정의 오류 메시지
//           );
//           // interceptor onError로 전달
//           return handler.reject(newError, true);
//         }
//       },
//       // Error가 발생했을 때 실행됩니다.
//       // 예를 들어, 네트워크 오류 처리를 할 수 있습니다.
//       onError: (DioException err, handler) async {
//         return handler.next(err);
//       },
//     ),
//   );
//   return HomeApiService(dio);
// });

// final homeRepositoryProvider = Provider<HomeRepository>((ref) {
//   final signInApiService = ref.read(homeApiServiceProvider);
//   return HomeRepositoryImpl(signInApiService);
// });

@Riverpod(keepAlive: true)
HomeApiService homeApiService(HomeApiServiceRef ref) {
  final dio = Dio();
  dio.options.contentType = Headers.jsonContentType;
  dio.interceptors.add(
    // onRequest -> 성공 -> onResponse
    //                  -> 실패 -> onError -> 토큰 재발급 -> 다시 시작 -> onRequest -> 성공 -> onResponse -> .g serialize -> model return
    QueuedInterceptorsWrapper(
      // Request가 보내기 전에 실행됩니다.
      // 예를 들어, 헤더를 설정하거나 요청을 변환할 수 있습니다.
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        return handler.next(options);
      },
      // Response를 받은 후에 실행됩니다.
      // 예를 들어, 상태 코드에 따라 오류 처리를 할 수 있습니다.
      onResponse: (Response response, ResponseInterceptorHandler handler) {
        // print('>>>>>>> response : ${response.data}');
        // print('>>>> ${response.statusCode}, ${response.statusMessage}');
        return handler.next(response);
        // if (response.data!['success']) {
        //   return handler.next(response);
        // } else {
        //   final newError = DioException(
        //     requestOptions: response.requestOptions,
        //     response: response,
        //     message: response.data!['message'], //표시할 메시지
        //     error: response.data!['code'], // 사용자 정의 오류 메시지
        //   );
        //   // interceptor onError로 전달
        //   return handler.reject(newError, true);
        // }
      },
      // Error가 발생했을 때 실행됩니다.
      // 예를 들어, 네트워크 오류 처리를 할 수 있습니다.
      onError: (DioException err, handler) async {
        return handler.next(err);
      },
    ),
  );
  return HomeApiService(dio);
}

@Riverpod(keepAlive: true)
HomeRepository homeRepository(HomeRepositoryRef ref) {
  final homeApiService = ref.read(homeApiServiceProvider);
  return HomeRepositoryImpl(homeApiService);
}