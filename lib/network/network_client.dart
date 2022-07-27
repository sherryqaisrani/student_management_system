import 'package:dio/dio.dart';
import 'package:student_management_system/error/remote_exception.dart';

class NetworkClient {
  Dio _dio = Dio();

  NetworkClient({String? baseUrl}) {
    baseUrl ??= 'https://hrm.talhasultan.dev/api';
    BaseOptions baseOptions = BaseOptions(
      receiveTimeout: 200000,
      connectTimeout: 300000,
      baseUrl: baseUrl,
      maxRedirects: 2,
    );
    _dio = Dio(baseOptions);
    _dio.interceptors.add(LogInterceptor(
        requestBody: false,
        request: false,
        error: true,
        requestHeader: false,
        responseBody: true,
        responseHeader: false));

    //For Http Get Request
  }
  Future<Response> get(String url,
      {Map<String, dynamic>? params, String? token}) async {
    Response response;
    try {
      Map<String, dynamic> map = {"Accept": "application/json"};
      if (token != null) {
        map.addAll({"Authorization": "Bearer $token"});
      }
      response = await _dio.get(url,
          queryParameters: params, options: Options(headers: map));
    } on DioError catch (exception) {
      throw RemoteException(dioError: exception);
    }
    return response;
  }

  //For Http Post Reques
  // Future<Response> post(String url, Map<String, dynamic>? params,
  //     {String? token}) async {
  //   Response response;
  //   try {
  //     Map<String, dynamic> map = {"Accept": "application/json"};
  //     if (token != null) {
  //       map.addAll({"Authorization": "Bearer $token"});
  //     }
  //     response = await _dio.post(url,
  //         queryParameters: params,
  //         options: Options(
  //             headers: map,
  //             responseType: ResponseType.json,
  //             validateStatus: (_) => true));
  //   } on DioError catch (exception) {
  //     throw RemoteException(dioError: exception);
  //   }
  //   return response;
  // }

  Future<Response> post(String url, Map<String, dynamic> params,
      {String? token}) async {
    Response response;
    try {
      Map<String, dynamic> map = {"Accept": "application/json"};
      if (token != null) {
        map.addAll({"Authorization": "Bearer $token"});
      }
      response = await _dio.post(url,
          data: params,
          options: Options(
            headers: map,
            responseType: ResponseType.json,
            validateStatus: (_) => true,
          ));
    } on DioError catch (exception) {
      throw RemoteException(dioError: exception);
    }
    return response;
  }

  //For Http Put Reques
  Future<Response> put(String url,
      {Map<String, dynamic>? params, String? token}) async {
    Response response;
    try {
      Map<String, dynamic> map = {"Accept": "application/json"};
      if (token != null) {
        map.addAll({"Authorization": "Bearer $token"});
      }
      response = await _dio.put(url,
          queryParameters: params,
          options: Options(
              headers: map,
              responseType: ResponseType.json,
              validateStatus: (_) => true));
    } on DioError catch (exception) {
      throw RemoteException(dioError: exception);
    }
    return response;
  }

  //For Http Download Request
  Future<Response> download(String url, String filePath,
      void Function(int, int)? onReceiveProgress) async {
    Response response;
    try {
      response = await _dio.download(url, filePath,
          onReceiveProgress: onReceiveProgress);
    } on DioError catch (exception) {
      throw RemoteException(dioError: exception);
    }
    return response;
  }

  //For Http FileUpload Reques
  Future<Response> fileUpload(String url, FormData params) async {
    Response response;
    try {
      response = await _dio.post(
          data: params, url, options: Options(responseType: ResponseType.json));
    } on DioError catch (exception) {
      throw RemoteException(dioError: exception);
    }
    return response;
  }
}
