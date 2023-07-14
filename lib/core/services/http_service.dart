import 'dart:io';

import 'package:david_hyll/core/utils/dependency_injection.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

enum Method { POST, GET, PUT, DELETE, PATCH }


final logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 5,
      lineLength: 50,
      colors: true,
      printEmojis: true,
      printTime: true,
    ));


@lazySingleton
class HttpService{

  late Dio _dio;
  var BASE_URL = 'https://api.hyll.com/api/';


  static header() => {
    "Content-Type": "application/json",
    "Accept": "application/json"
  };





  Future<HttpService> init() async {
    _dio = getIt<Dio>();
    _dio.options.baseUrl = BASE_URL;
    _dio.options.headers = header();
    // initInterceptors();
    return this;
  }

  void initInterceptors() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (requestOptions, handler) {
          logger.i(
              "REQUEST[${requestOptions.method}] => PATH: ${requestOptions.path}"
                  "=> REQUEST VALUES: ${requestOptions.queryParameters} => HEADERS: ${requestOptions.headers}");

          return handler.next(requestOptions);
        },
        onResponse: (response, handler) {
          logger
              .i("RESPONSE[${response.statusCode}] => DATA: ${response.data}");
          return handler.next(response);
        },
        onError: (err, handler) {
          logger.i("Error[${err.response?.statusCode}]");
          return handler.next(err);
        },
      ),
    );
  }

  Future<dynamic> request(
      {required String url,
        required Method method,
        Map<String, dynamic>? params, Options? options}) async {
    Response response;

    try {
      if (method == Method.POST) {
        response = await _dio.post(url, data: params, options: options);
      } else if (method == Method.DELETE) {
        response = await _dio.delete(url, options: options);
      } else if (method == Method.PATCH) {
        response = await _dio.patch(url,options: options);
      }  else if (method == Method.PUT) {
        response = await _dio.put(url, data: params, options: options);
      } else {
        response = await _dio.get(url, queryParameters: params, options: options);
      }

      if (response.statusCode == 200 || response.statusCode == 201) {
        return response;
      } else if (response.statusCode == 401) {
        throw Exception("Unauthorized");
      } else if (response.statusCode == 500) {
        throw Exception("Server Error");
      } else if (response.statusCode == 403) {
        throw Exception("Forbidden");
      } else {
        throw Exception("Something went wrong");
      }
    } on SocketException catch (e) {
      logger.e(e);
      throw Exception("Not Internet Connection");
    } on FormatException catch (e) {
      logger.e(e);
      throw Exception("Bad response format");
    } on DioError catch (e) {
      logger.e(e);
      throw Exception(e);
    } catch (e) {
      logger.e(e);
      throw Exception("Something went wrong");
    }
  }
}