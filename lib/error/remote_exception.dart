import 'package:dio/dio.dart';

//Represent Exception from Server/Remote

class RemoteException implements Exception {
  DioError dioError;

  RemoteException({required this.dioError});
}

class LocalException implements Exception {
  String error;
  LocalException({required this.error});
}

class RouteException implements Exception {
  final String message;
  RouteException({required this.message});
}
