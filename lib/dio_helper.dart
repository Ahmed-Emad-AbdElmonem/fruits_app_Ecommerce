import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://student.valuxapps.com/api/',
        receiveDataWhenStatusError: true,
        /* headers: {
          'Authorization': token,
         // 'Accept': 'application/json',
          //'Content-Type': 'application/json',
        },*/
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
    String? token,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Authorization': token ?? '',
    };
    return await dio.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
    String? token,
    String lang = 'ar',
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Authorization': token,
      "lang": lang,
    };
    return await dio.post(
      url,
      data: data,
      queryParameters: query,
    );
  }
}
