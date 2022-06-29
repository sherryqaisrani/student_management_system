import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_management_system/screens/personal.dart';
import 'package:student_management_system/utils/colors.dart';

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
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Student Management System",
          theme: ThemeData(
            primarySwatch: Colors.blue,
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  10.r,
                ),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  10.r,
                ),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              filled: true,
              fillColor: AppColors.aLightPlaceHolderColor,
              contentPadding: EdgeInsets.symmetric(
                vertical: 15.h,
              ),
            ),
            textTheme: Typography.englishLike2018.apply(
              fontSizeFactor: 1.sp,
            ),
          ),
          home: child,
        );
      },
      child: PersonalInfo(),
    );
  }
}
