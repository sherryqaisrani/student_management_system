import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student_management_system/utils/constant.dart';
import 'package:student_management_system/utils/file_path.dart';
import 'package:student_management_system/widget/applied_course_card.dart';

class AppliedCourse extends StatelessWidget {
  const AppliedCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Theme.of(context).colorScheme.primary,
          size: 30,
        ),
        title: Text(
          'Applied Courses',
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SvgPicture.asset(
              FilePath.rightBottomLogo,
              height: 188.h,
              fit: BoxFit.fill,
            ),
          ),
          Column(children: [aPageSpecing1, applied_course_card()]),
        ],
      ),
    );
  }
}
