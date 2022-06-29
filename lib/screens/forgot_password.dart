import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:student_management_system/utils/colors.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          SizedBox(
            height: 67.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primaryColor,
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: getInputDecoration(
                    hintText: 'Contact No.',
                  ),
                ),
                SizedBox(
                  height: 241.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: AppColors.primaryColor,
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
                      'SEND CODE',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
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
    fillColor: AppColors.aLightPlaceHolderColor,
    hintText: hintText,
    prefixIcon: const Icon(
      Icons.phone,
    ),
  );
}
