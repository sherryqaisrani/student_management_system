import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_management_system/utils/colors.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  InputDecoration inputDecoration(
      {required String hintText,
      required Widget prefixIcon,
      Widget? suffixIcon}) {
    return InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
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
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          10.r,
        ),
        borderSide: const BorderSide(
          color: Colors.transparent,
        ),
      ),
      contentPadding: EdgeInsets.symmetric(
        vertical: 20.h,
      ),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      hintText: hintText,
      hintStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
      filled: true,
      fillColor: AppColors.aLightPlaceHolderColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(40.h),
          child: Column(
            children: [
              SizedBox(
                height: 296.h,
                width: 296.h,
                child: Image.asset(
                  'assets/images/header.jpg',
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: inputDecoration(
                  hintText: 'ABC@gmail.com',
                  prefixIcon: const Icon(Icons.email),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                obscureText: true,
                decoration: inputDecoration(
                  hintText: '*******',
                  prefixIcon: const Icon(
                    Icons.lock,
                  ),
                  suffixIcon: const Icon(
                    Icons.remove_red_eye,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.oragneColor,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(
                        10.sp,
                      ),
                    ),
                    padding: EdgeInsets.all(
                      20.h,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      color: AppColors.btnBlackColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
