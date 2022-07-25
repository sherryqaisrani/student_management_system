import 'package:flutter/material.dart';
import 'package:student_management_system/screens/academic_page.dart';
import 'package:student_management_system/screens/applied_course.dart';
import 'package:student_management_system/screens/change_password.dart';
import 'package:student_management_system/screens/edit_qualification.dart';
import 'package:student_management_system/screens/forgot_password.dart';
import 'package:student_management_system/screens/home_page.dart';
import 'package:student_management_system/screens/loginpage2.dart';
import 'package:student_management_system/screens/otp.dart';
import 'package:student_management_system/screens/personal.dart';
import 'package:student_management_system/screens/qualification.dart';
import 'package:student_management_system/screens/singuppage.dart';

import '../error/remote_exception.dart';

class RouteGenerator {
  static const String splash = '/';
  static const String login = 'login';
  static const String signup = 'signup';
  static const String homePage = 'homePage';
  static const String forgetPassword = 'forgetPassowrd';
  static const String changePassword = 'changePassword';
  static const String editQualification = 'editQualification';
  static const String appliedCourse = 'appliedCourse';
  static const String personalScreen = 'personalScreen';
  static const String qualification = 'qualification';
  static const String academicPage = 'academicPage';
  static const String otpPage = 'otpPage';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case login:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case signup:
        return MaterialPageRoute(builder: (_) => SignUpPage());
      case homePage:
        return MaterialPageRoute(builder: (_) => HomePage());
      case forgetPassword:
        return MaterialPageRoute(builder: (_) => ForgotPassword());
      case changePassword:
        return MaterialPageRoute(builder: (_) => ChangePassword());
      case editQualification:
        return MaterialPageRoute(builder: (_) => EditQualificationPage());
      case appliedCourse:
        return MaterialPageRoute(builder: (_) => AppliedCourse());
      case qualification:
        return MaterialPageRoute(builder: (_) => QualificationPage());
      case personalScreen:
        return MaterialPageRoute(builder: (_) => PersonalInfo());
      case academicPage:
        return MaterialPageRoute(builder: (_) => AcademicPage());
      case otpPage:
        return MaterialPageRoute(builder: (_) => OtpPage());
      default:
        throw RouteException('Route not found');
    }
  }
}
