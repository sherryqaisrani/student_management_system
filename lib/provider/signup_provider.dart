import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:student_management_system/error/remote_exception.dart';
import 'package:student_management_system/network/network_client.dart';
import 'package:student_management_system/screens/otp.dart';
import 'package:student_management_system/utils/routes.dart';

class SignupProvider extends ChangeNotifier {
  NetworkClient networkClient = NetworkClient();
  bool isLoading = false;

  Future<void> submitedForm(
    BuildContext context,
    final idController,
    final fullNameController,
    final shortNameController,
    final phoneNumberController,
    final passwordController,
    final confirmPasswordController,
  ) async {
    String response = 'Error';
    try {
      print('eeeeeeeee');
      isLoading = true;
      final res = networkClient.post(
        '/signup',
        {
          'id': idController.text.trim(),
          'name': fullNameController.text.trim(),
          'short_name': shortNameController.text.trim(),
          'contact_no': phoneNumberController.text.trim(),
          'password': passwordController.text.trim(),
          'password_confirmation': confirmPasswordController.text.trim(),
        },
      );

      // Map<String, dynamic> mp = jsonDecode(res.toString());
      Map<String, dynamic> mp = jsonDecode(res.toString());

      if (mp['success']) {
        idController.clear();
        fullNameController.clear();
        shortNameController.clear();
        phoneNumberController.clear();
        passwordController.clear();
        confirmPasswordController.clear();
        isLoading = false;
        response = 'success';
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OtpPage(),
          ),
        );
      }
    } on RemoteException catch (e) {
      response = e.toString();
    }
  }
}
