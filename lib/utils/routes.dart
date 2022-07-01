import 'package:flutter/material.dart';
import 'package:student_management_system/error/remote_exception.dart';
import 'package:student_management_system/screens/loginpage2.dart';
import 'package:student_management_system/screens/singuppage.dart';

class RouteGenerator {
  static const String splash = '/';
  static const String login = 'login';
  static const String signup = 'signup';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case login:
        return MaterialPageRoute(builder: (_) => LoginPage2());
      case signup:
        return MaterialPageRoute(builder: (_) => SignUpPage());

      default:
        throw RouteException('Route not found');
    }
  }
}
