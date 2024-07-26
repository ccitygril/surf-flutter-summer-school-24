import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  final String token;

  AuthInterceptor({required this.token});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Authorization'] = 'OAuth $token';
    super.onRequest(options, handler);
  }
}
