import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student_management_system/widget/themes/colors.dart';

class ChangePassword extends StatefulWidget {
  ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
                vertical: 58.h,
                horizontal: 20.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Reset Password',
                    style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w700,
                      color: ThemeColor.loginCode,
                    ),
                  ),
                  SizedBox(
                    height: 23.h,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: getInputDecoration(
                      hintText: 'Old Password',
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: getInputDecoration(
                      hintText: 'New Password',
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: getInputDecoration(
                      hintText: 'Confirm New Password',
                    ),
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: ThemeColor.loginCode,
                          padding: EdgeInsets.symmetric(
                            vertical: 16.h,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10.r,
                            ),
                            side: const BorderSide(
                              color: Colors.transparent,
                            ),
                          )),
                      onPressed: () {},
                      child: Text(
                        'CHANGE PASSWORD',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  InputDecoration getInputDecoration({required String hintText}) {
    return InputDecoration(
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
      fillColor: ThemeColor.grayColor,
      hintText: hintText,
      prefixIcon: const Icon(
        Icons.lock,
      ),
      suffixIcon: const Icon(
        Icons.remove_red_eye,
      ),
    );
  }
}
