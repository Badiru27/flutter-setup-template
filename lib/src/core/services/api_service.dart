import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:meuve_v2/src/core/constants/app_api_endpoints.dart';
import 'package:meuve_v2/src/core/error/exceptions.dart';

abstract class ApiService {
  //? For making get request to the endpoint
  Future<dynamic> get({
    required Uri url,
    Map<String, dynamic> queryParameters,
    Map<String, dynamic>? headers,
  });

  //? For making post request to the endpoint
  Future<dynamic> post({
    required Uri url,
    required Map<String, dynamic> body,
    Map<String, String> headers,
    Map<String, dynamic>? queryParameters,
  });

  //? For making patch request to the endpoint
  Future<dynamic> patch({
    required Uri url,
    required Map<String, dynamic> body,
    required Map<String, String> headers,
  });

  //? For making delete request to the endpoint
  Future<dynamic> delete({
    required Uri url,
    Map<String, dynamic>? queryParameters,
    Map<String, String> headers,
  });

  //? For making put request to the endpoint
  Future<dynamic> put({
    required Uri url,
    required Map<String, dynamic> body,
    Map<String, String>? headers,
  });
}

class ApiServiceImpl implements ApiService {
  ApiServiceImpl(this._dio) {
    _dio.options.baseUrl = AppApiEndpoint.baseUri.toString();
    _dio.options.sendTimeout = AppApiEndpoint.sendTimeout;
    _dio.options.receiveTimeout = AppApiEndpoint.receiveTimeout;

    _log.i('Api constructed and DIO setup register');
  }
  final _log = Logger();
  final Dio _dio;

  static final provider = Provider<ApiService>((ref) {
    return ApiServiceImpl(Dio());
  });

  @override
  Future<dynamic> get({
    required Uri url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    _log.i(
      'Making Get Request to $url with the following data \n$queryParameters',
    );
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        url.toString(),
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
      _log.i('Response from $url \n${response.data}');
      return response.data;
    } on DioException catch (error) {
      _log.e('Error from $url', error.toString());
      throw ServerException(
        errorMessage: error.message,
      );
    }
  }

  @override
  Future<dynamic> post({
    required Uri url,
    required Map<String, dynamic> body,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    _log.i('Making Post Request to $url with the following data \n$body');
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        url.toString(),
        data: body,
        options: Options(headers: headers),
        queryParameters: queryParameters,
      );
      _log.i('Response from $url \n${response.data}');
      return response.data;
    } on DioException catch (error) {
      _log.e('Error from $url', error.toString());
      throw ServerException(
        errorMessage: error.message,
      );
    }
  }

  @override
  Future<dynamic> put({
    required Uri url,
    required Map<String, dynamic> body,
    Map<String, String>? headers,
  }) async {
    _log.i('Making Put Request to $url with the following data \n$body');
    try {
      final response = await _dio.put<Map<String, dynamic>>(
        url.toString(),
        data: body,
        options: Options(
          headers: headers,
        ),
      );

      _log.i('Response from $url \n${response.data}');
      return response.data;
    } on DioException catch (error) {
      _log.e('Error from $url', error.toString());
      throw ServerException(
        errorMessage: error.message,
      );
    }
  }

  @override
  Future<dynamic> delete({
    required Uri url,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    _log.i('Making Delete Request to $url.');
    try {
      final response = await _dio.delete<Map<String, dynamic>>(
        url.toString(),
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
        ),
      );
      _log.i('Response from $url \n${response.data}');
      return response.data;
    } on DioException catch (error) {
      _log.e('Error from $url', error.toString());
      throw ServerException(
        errorMessage: error.message,
      );
    }
  }

  @override
  Future<dynamic> patch({
    required Uri url,
    required Map<String, dynamic> body,
    required Map<String, String> headers,
  }) async {
    _log.i('Making Delete Request to $url.');
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        url.toString(),
        queryParameters: body,
        options: Options(
          headers: headers,
        ),
      );
      _log.i('Response from $url \n${response.data}');
      return response.data;
    } on DioException catch (error) {
      _log.e('Error from $url', error.toString());
      throw ServerException(
        errorMessage: error.message,
      );
    }
  }
}
