import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:student_management_system/provider/obsecure_password.dart';
import 'package:student_management_system/screens/home_page.dart';
import 'package:student_management_system/utils/constant.dart';
import 'package:student_management_system/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _userNameController = TextEditingController();
    final _passwordTextController = TextEditingController();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _userNameController,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.fingerprint),
                            hintText: '13302-1728416212-1',
                          ),
                        ),
                        aPageSpecing1,
                        Consumer<ObsecurePassword>(
                          builder: (context, value, child) => TextFormField(
                            obscureText: value.obsecure,
                            controller: _passwordTextController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.lock),
                              suffixIcon: GestureDetector(
                                onTap: value.updateIsSecure,
                                child: value.obsecure
                                    ? const Icon(Icons.visibility)
                                    : const Icon(Icons.visibility_off),
                              ),
                              hintText: 'Password',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: InkWell(
                            onTap: () => Navigator.pushNamed(
                              context,
                              RouteGenerator.forgetPassword,
                            ),
                            child: Text(
                              'Forgot password?',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                    color: Theme.of(context).primaryColor,
                                  ),
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
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  print('Form Not Validate');
                                }

                                // Navigator.pushNamed(
                                //   context,
                                //   RouteGenerator.homePage,
                                // );
                              },
                              child: Text(
                                'LOGIN',
                                style: Theme.of(context).textTheme.button,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          // recognizer: TapGestureRecognizer()
                          //   ..onTap = () => Navigator.pushNamed(
                          //         context,
                          //         RouteGenerator.signup,
                          //       ),
                          text: 'Don\'t have an account?',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () =>
                                Navigator.restorablePushReplacementNamed(
                                    context, RouteGenerator.signup),
                          text: 'Sign Up',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: Theme.of(context).primaryColor),
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
