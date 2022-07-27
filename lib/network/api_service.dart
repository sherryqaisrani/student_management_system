import 'package:dio/dio.dart';
import 'package:student_management_system/network/network_client.dart';

class ApiService {
  final NetworkClient networkClient;

  ApiService({required this.networkClient});

  Future<Response> getCountries() async {
    return networkClient.get('/countries');
  }

  Future<Response> postSignupForm(Map<String, dynamic> params) {
    return networkClient.post('/signup', params);
  }
}
