import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:student_management_system/utils/constant.dart';
import 'package:student_management_system/utils/file_path.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textEditingController = TextEditingController();
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: SvgPicture.asset(
                  FilePath.appLogo,
                  height: 152.h,
                  width: 222.w,
                ),
              ),
            ],
          ),
          SafeArea(
            child: Padding(
              padding: aPagePadding,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Forgot Password',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      aPageSpecing1,
                      TextFormField(
                        controller: _textEditingController,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Contact No.',
                          prefixIcon: Icon(
                            Icons.phone,
                          ),
                        ),
                      ),
                      aPageSpecing2,
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
