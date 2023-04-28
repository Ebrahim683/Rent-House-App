import 'dart:developer';

import 'package:dio/dio.dart' as dio;
import 'package:dio/dio.dart';

class ApiService {
  // static String baseUrl = 'http://renthouse-api.infinityalgostation.com';
  static String baseUrl = 'http://10.0.2.2:5000';
  static final _dio = dio.Dio();
  ApiService();
  static Future<dynamic> getApi(
      {required String path, Map<String, dynamic>? body}) async {
    log('getApi: ${baseUrl + path}');
    try {
      log('get api called');
      final response = await _dio.get(baseUrl + path, queryParameters: body);
      log(response.data.toString());
      if (response.statusCode == 200) {
        return Future.value(response.data);
      } else {
        return Future.error(response.statusMessage.toString());
      }
    } on dio.DioError catch (e) {
      String errorMessage = getError(e);
      return Future.error(errorMessage);
    } catch (e) {
      return Future.error('Something went wrong');
    }
  }

  static Future<dynamic> postApi(
      {required String path, Map<String, dynamic>? body, dynamic data}) async {
    log('postApi: ${baseUrl + path}');
    try {
      log('post api called');
      final response =
          await _dio.post(baseUrl + path, queryParameters: body, data: data);
      log(response.statusCode.toString());
      if (response.statusCode == 200) {
        log(response.data.toString());
        return Future.value(response.data);
      } else {
        log(response.statusMessage.toString());
        return Future.error(response.statusMessage.toString());
      }
    } on dio.DioError catch (e) {
      String errorMessage = getError(e);
      return Future.error(errorMessage);
    } catch (e) {
      return Future.error('Something went wrong');
    }
  }

  static Future<dynamic> putApi(
      {required String path, Map<String, dynamic>? body, dynamic data}) async {
    log('postApi: ${baseUrl + path}');
    try {
      log('post api called');
      final response =
          await _dio.put(baseUrl + path, queryParameters: body, data: data);
      log(response.statusCode.toString());
      if (response.statusCode == 200) {
        log(response.data.toString());
        return Future.value(response.data);
      } else {
        log(response.statusMessage.toString());
        return Future.error(response.statusMessage.toString());
      }
    } on dio.DioError catch (e) {
      String errorMessage = getError(e);
      return Future.error(errorMessage);
    } catch (e) {
      return Future.error('Something went wrong');
    }
  }

  static Future<dynamic> deleteApi(
      {required String path, Map<String, dynamic>? body, dynamic data}) async {
    log('postApi: ${baseUrl + path}');
    try {
      log('post api called');
      final response =
          await _dio.delete(baseUrl + path, queryParameters: body, data: data);
      log(response.statusCode.toString());
      if (response.statusCode == 200) {
        log(response.data.toString());
        return Future.value(response.data);
      } else {
        log(response.statusMessage.toString());
        return Future.error(response.statusMessage.toString());
      }
    } on dio.DioError catch (e) {
      String errorMessage = getError(e);
      return Future.error(errorMessage);
    } catch (e) {
      return Future.error('Something went wrong');
    }
  }

  static String getError(DioError error) {
    switch (error.type) {
      case DioErrorType.connectionTimeout:
        // return 'Connection time out';
        return 'ইন্টারনেট সংযোগ ব্যর্থ হয়েছে';

      case DioErrorType.sendTimeout:
        // return 'Bad connection try again';
        return 'ইন্টারনেট সংযোগ দুর্বল';

      case DioErrorType.receiveTimeout:
        // return 'Bad connection try again';
        return 'ইন্টারনেট সংযোগ দুর্বল';

      case DioErrorType.badCertificate:
        return 'Bad certificate';

      case DioErrorType.badResponse:
        // return 'Bad connection try again';
        return 'ইন্টারনেট সংযোগ দুর্বল';

      case DioErrorType.cancel:
        // return 'Request canceled';
        return 'অনুরোধ বাতিল করা হয়েছে';

      case DioErrorType.connectionError:
        // return 'Bad connection try again';
        return 'ইন্টারনেট সংযোগ দুর্বল';

      case DioErrorType.unknown:
        // return 'Something went wrong';
        return 'কিছু ভুল হয়েছে';
    }
  }
}
