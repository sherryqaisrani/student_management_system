import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student_management_system/utils/constant.dart';
import 'package:student_management_system/widget/CustomeFormTextField.dart';

class LoginPage2 extends StatefulWidget {
  LoginPage2({Key? key}) : super(key: key);

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

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
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  aPageSpecing1,
                  CustomeFormTextField(
                    controller: _userNameController,
                    textHint: '3302-17248621-2',
                    prefixIcon: const Icon(
                      Icons.fingerprint,
                    ),
                  ),
                  aPageSpecing1,
                  CustomeFormTextField(
                    controller: _passwordTextController,
                    textHint: '*************',
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: const Icon(Icons.remove_red_eye),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Forgot password?',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Theme.of(context).primaryColor,
                          ),
                    ),
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'LOGIN',
                          style: Theme.of(context).textTheme.button,
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
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        'Sign Up',
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: Theme.of(context).primaryColor),
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
