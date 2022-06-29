import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student_management_system/utils/colors.dart';

class LoginPage2 extends StatefulWidget {
  LoginPage2({Key? key}) : super(key: key);

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  InputDecoration inputDecoration(
      {required String hintText,
      required Widget prefixIcon,
      Widget? suffixIcon}) {
    return InputDecoration(
      contentPadding: EdgeInsets.symmetric(
        vertical: 16.h,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          12.r,
        ),
        borderSide: const BorderSide(
          color: Colors.transparent,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          12.r,
        ),
        borderSide: const BorderSide(
          color: Colors.transparent,
        ),
      ),
      hintText: hintText,
      hintStyle: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
      ),
      filled: true,
      fillColor: AppColors.lightGrayColor,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 173.h,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    child: SvgPicture.asset(
                      'assets/svg/header.svg',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 95.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'LOGIN',
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: inputDecoration(
                        hintText: '3302-17248621-2',
                        prefixIcon: const Icon(Icons.fingerprint)),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                    decoration: inputDecoration(
                      hintText: '*************',
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: const Icon(Icons.remove_red_eye),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10.r,
                            ),
                            side: const BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 18.h,
                          ),
                          backgroundColor: AppColors.primaryColor,
                        ),
                        onPressed: () {},
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w800,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
