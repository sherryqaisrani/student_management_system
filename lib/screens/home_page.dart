import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student_management_system/screens/applied_course.dart';
import 'package:student_management_system/utils/colors.dart';
import 'package:student_management_system/utils/constant.dart';
import 'package:student_management_system/utils/file_path.dart';
import 'package:student_management_system/widget/applied_course_card.dart';
import 'package:student_management_system/widget/programCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200.h,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  top: 0,
                  left: 0,
                  child: SvgPicture.asset(
                    FilePath.homePageLogo,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 45.h,
                  left: 12.w,
                  right: 12,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.menu,
                              color: aWhiteColor,
                              size: 30,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Hi ShaherYar',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3!
                                    .copyWith(color: aWhiteColor),
                              ),
                              Text(
                                'Welcome Back',
                                style: TextStyle(
                                  color: aWhiteColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Offered Programs',
                            style: TextStyle(
                              color: aWhiteColor,
                            ),
                          ),
                          Text(
                            '02',
                            style: TextStyle(
                              color: aWhiteColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Offered Courses',
                            style: TextStyle(
                              color: aWhiteColor,
                            ),
                          ),
                          Text(
                            '15',
                            style: TextStyle(
                              color: aWhiteColor,
                              fontWeight: FontWeight.bold,
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
          Text(
            'Program',
            style: Theme.of(context).textTheme.headline3,
          ),
          aPageSpecing1,
          Expanded(
            child: programCard(),
          ),
          aPageSpecing1,
          Text(
            'Courses',
            style: Theme.of(context).textTheme.headline3,
          ),
          aPageSpecing1,
          Expanded(
              child: Column(
            children: [
              applied_course_card(),
            ],
          )),
        ],
      ),
    );
  }
}
