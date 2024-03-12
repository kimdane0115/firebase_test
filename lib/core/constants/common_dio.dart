import 'package:dio/dio.dart';

class CommonDio {

  static final CommonDio instance = CommonDio._internal();
  factory CommonDio()=>instance;
  CommonDio._internal();
  
  Dio getDio() {
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
    return dio;
  }
}