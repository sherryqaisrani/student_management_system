import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:student_management_system/provider/country_provider.dart';
import 'package:student_management_system/provider/obsecure_password.dart';
import 'package:student_management_system/provider/signup_provider.dart';
import 'package:student_management_system/screens/academic_page.dart';
import 'package:student_management_system/screens/applied_course.dart';
import 'package:student_management_system/screens/change_password.dart';
import 'package:student_management_system/screens/forgot_password.dart';
import 'package:student_management_system/screens/home_page.dart';
import 'package:student_management_system/screens/loginpage2.dart';
import 'package:student_management_system/screens/otp.dart';
import 'package:student_management_system/screens/personal.dart';
import 'package:student_management_system/screens/edit_qualification.dart';
import 'package:student_management_system/screens/qualification.dart';
import 'package:student_management_system/screens/singuppage.dart';
import 'package:student_management_system/utils/colors.dart';
import 'package:student_management_system/utils/routes.dart';
import 'package:student_management_system/utils/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => ObsecurePassword(),
            ),
            ChangeNotifierProvider(
              create: (_) => SignupProvider(),
            ),
            ChangeNotifierProvider(create: (_) => CountryProvider()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Student Management System",
            themeMode: ThemeMode.system,
            darkTheme: dartkTheme,
            theme: lightTheme,
            initialRoute: RouteGenerator.personalScreen,
            onGenerateRoute: RouteGenerator.generateRoute,
          ),
        );
      },
    );
  }
}
