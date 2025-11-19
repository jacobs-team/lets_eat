import 'dart:async';
import 'package:dio/dio.dart';
import 'package:lets_eat/environment_config.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class RestClient {
  RestClient([Dio? dio])
    : _dio =
          dio ??
                Dio(
                  BaseOptions(
                    baseUrl: 'https://maps.googleapis.com',
                  ),
                )
            ..interceptors.add(PrettyDioLogger());

  final Dio _dio;

  Future<Response<dynamic>> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    CancelToken? cancelToken,
  }) async {
    final requestOptions = _DefaultApiOptions();
    if (headers != null) {
      requestOptions.headers?.addAll(headers);
    }
    return _dio.get(
      path,
      queryParameters: queryParameters,
      options: requestOptions,
      cancelToken: cancelToken,
    );
  }

  Future<Response<dynamic>> post(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParams,
    CancelToken? cancelToken,
    Duration? sendTimeout,
    Duration? receiveTimeout,
  }) async {
    final requestOptions = _DefaultApiOptions();
    if (headers != null) {
      requestOptions.headers?.addAll(headers);
    }
    if (sendTimeout != null) {
      requestOptions.sendTimeout = sendTimeout;
    }
    if (receiveTimeout != null) {
      requestOptions.receiveTimeout = receiveTimeout;
    }
    return _dio.post(path, data: data, options: requestOptions, queryParameters: queryParams, cancelToken: cancelToken);
  }
}

class _DefaultApiOptions extends Options {
  _DefaultApiOptions() {
    super.headers = <String, dynamic>{
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'key': EnvironmentConfig.mapsApiKey,
    };
  }
}
