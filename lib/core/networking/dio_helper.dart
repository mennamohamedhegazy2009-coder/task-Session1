import 'package:dio/dio.dart';
import 'api_constants.dart';
class DioHelper {
  static Dio? dio;
  static init() {
    var baseUrl;
    dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
        headers: {'Content-Type': 'application/json'},
      ),
    );
  }
  static Future<Response> getData({
    required String endpoint,
    Map<String, dynamic>? queryParameters,
    String? token,
  }) async {
final res = await dio!.get(
      endpoint,
      queryParameters: 
      queryParameters);
       
    return res;
  }
}
