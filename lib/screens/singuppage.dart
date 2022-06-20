import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_management_system/widget/themes/colors.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  InputDecoration getInputDecoration({
    required String hintText,
    Widget? prefixIcon,
    Widget? suffixIcon,
  }) {
    return InputDecoration(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            10.r,
          ),
          borderSide: const BorderSide(color: Colors.transparent)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          10.r,
        ),
        borderSide: const BorderSide(
          color: Colors.transparent,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          10.r,
        ),
        borderSide: const BorderSide(
          color: Colors.transparent,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 16,
      ),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      hintText: hintText,
      filled: true,
      fillColor: ThemeColor.lightGrayColor,
    );
  }

  var Items = ['A', 'B', 'C'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 152.h,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: SvgPicture.asset(
                      'assets/svg/left_header.svg',
                    ),
                  ),
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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 31.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SIGNUP',
                    style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w700,
                      color: ThemeColor.loginCode,
                    ),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: getInputDecoration(
                      prefixIcon: const Icon(
                        Icons.fingerprint,
                      ),
                      hintText: '13302-87467233-9',
                    ),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: getInputDecoration(
                      hintText: 'Full Name',
                      prefixIcon: const Icon(
                        Icons.person,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: getInputDecoration(
                      hintText: 'short Name',
                      prefixIcon: const Icon(
                        Icons.person,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: getInputDecoration(
                      hintText: 'Phone number',
                      prefixIcon: const Icon(
                        Icons.person,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                    decoration: getInputDecoration(
                      hintText: 'Password',
                      prefixIcon: const Icon(
                        Icons.lock,
                      ),
                      suffixIcon: const Icon(
                        Icons.remove_red_eye,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                    decoration: getInputDecoration(
                      hintText: 'Confirm Password',
                      prefixIcon: const Icon(
                        Icons.lock,
                      ),
                      suffixIcon: const Icon(
                        Icons.remove_red_eye,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                      height: 55.h,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: ThemeColor.loginCode,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10.sp,
                            ),
                            side: const BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'SIGNUP',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w800,
                          color: ThemeColor.loginCode,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
