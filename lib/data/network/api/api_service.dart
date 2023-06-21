import 'dart:developer';
import 'package:dio/dio.dart' as dio;
import 'package:dio/dio.dart';

class ApiService {
  static String baseUrl = 'http://renthouse-api.infinityalgostation.com';
  // static String baseUrl = 'http://10.0.2.2:5000';
  static final _dio = dio.Dio();
  static String msg = 'কিছু ভুল হয়েছে';

  ApiService();

  static Future<dynamic> getApi(
      {required String path, Map<String, dynamic>? body}) async {
    log('getApi: ${baseUrl + path}');
    try {
      final response = await _dio.get(
        baseUrl + path,
        queryParameters: body,
        options: dioOption(),
      );
      log(response.data.toString());
      if (response.statusCode == 200) {
        return Future.value(response.data);
      } else {
        return Future.error(response.statusMessage.toString());
      }
    } on dio.DioException catch (e) {
      log(e.toString());
      String errorMessage = getError(e);
      return Future.error(errorMessage);
    } catch (e) {
      log(e.toString());
      return Future.error(msg);
    }
  }

  static Future<dynamic> postApi(
      {required String path, Map<String, dynamic>? body, dynamic data}) async {
    log('postApi: ${baseUrl + path}');
    try {
      log('post api called');

      final response = await _dio.post(
        baseUrl + path,
        queryParameters: body,
        data: data,
        options: dioOption(),
      );
      log(response.statusCode.toString());
      if (response.statusCode == 200) {
        log(response.data.toString());
        return Future.value(response.data);
      } else {
        log(response.statusMessage.toString());
        return Future.error(response.statusMessage.toString());
      }
    } on dio.DioException catch (e) {
      log(e.toString());
      String errorMessage = getError(e);
      return Future.error(errorMessage);
    } catch (e) {
      log(e.toString());
      return Future.error(msg);
    }
  }

  static Future<dynamic> putApi(
      {required String path, Map<String, dynamic>? body, dynamic data}) async {
    log('postApi: ${baseUrl + path}');
    try {
      log('post api called');
      final response = await _dio.put(
        baseUrl + path,
        queryParameters: body,
        data: data,
        options: dioOption(),
      );
      log(response.statusCode.toString());
      if (response.statusCode == 200) {
        log(response.data.toString());
        return Future.value(response.data);
      } else {
        log(response.statusMessage.toString());
        return Future.error(response.statusMessage.toString());
      }
    } on dio.DioException catch (e) {
      log(e.toString());
      String errorMessage = getError(e);
      return Future.error(errorMessage);
    } catch (e) {
      log(e.toString());
      return Future.error(msg);
    }
  }

  static Future<dynamic> deleteApi(
      {required String path, Map<String, dynamic>? body, dynamic data}) async {
    log('postApi: ${baseUrl + path}');
    try {
      log('post api called');
      final response = await _dio.delete(
        baseUrl + path,
        queryParameters: body,
        data: data,
        options: dioOption(),
      );
      log(response.statusCode.toString());
      if (response.statusCode == 200) {
        log(response.data.toString());
        return Future.value(response.data);
      } else {
        log(response.statusMessage.toString());
        return Future.error(response.statusMessage.toString());
      }
    } on dio.DioException catch (e) {
      log(e.toString());
      String errorMessage = getError(e);
      return Future.error(errorMessage);
    } catch (e) {
      log(e.toString());
      return Future.error(msg);
    }
  }

  static Options dioOption() {
    return dio.Options(
      sendTimeout: const Duration(minutes: 1),
      receiveTimeout: const Duration(minutes: 1),
    );
  }

  static String getError(DioException error) {
    log(error.toString());
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        msg = 'ইন্টারনেট সংযোগ দুর্বল';
        break;
      case DioExceptionType.sendTimeout:
        msg = 'ইন্টারনেট সংযোগ দুর্বল';
        break;
      case DioExceptionType.receiveTimeout:
        msg = 'ইন্টারনেট সংযোগ দুর্বল';
        break;
      case DioExceptionType.badCertificate:
        msg = 'কিছু ভুল হয়েছে';
        break;
      case DioExceptionType.badResponse:
        msg = 'কিছু ভুল হয়েছে';
        break;
      case DioExceptionType.cancel:
        msg = 'অনুরোধ বাতিল করা হয়েছে';
        break;
      case DioExceptionType.connectionError:
        msg = 'ইন্টারনেট সংযোগ ব্যর্থ হয়েছে';
        break;
      case DioExceptionType.unknown:
        msg = 'কিছু ভুল হয়েছে';
        break;
      default:
        msg = 'কিছু ভুল হয়েছে';
    }
    return msg;
  }
}
