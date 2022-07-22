import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_management_system/utils/constant.dart';
import 'package:student_management_system/utils/file_path.dart';

class applied_course_card extends StatelessWidget {
  const applied_course_card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      height: 120.h,
      width: double.maxFinite,
      child: Row(
        children: [
          Container(
            width: 116.w,
            height: double.maxFinite,
            decoration: BoxDecoration(
              color: Theme.of(context).canvasColor,
            ),
            child: Image.asset(
              FilePath.appliedProgramImage,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.w,
                vertical: 8.h,
              ),
              width: 120.w,
              height: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Text(
                    'Graphics Design',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  aPageSpecing0,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Charges',
                      ),
                      Text(
                        'Free',
                      ),
                    ],
                  ),
                  aPageSpecing0,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Program',
                      ),
                      Text(
                        'KJP',
                      ),
                    ],
                  ),
                  aPageSpecing0,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Charges',
                      ),
                      Text(
                        'Free',
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
