import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student_management_system/utils/constant.dart';
import 'package:student_management_system/utils/file_path.dart';

class AcademicPage extends StatelessWidget {
  const AcademicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var campusList = {'Main Campus', 'Sub Campus', 'Other'};
    var deptList = {'NSSD', 'Computer Science', 'Other'};
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 188.h,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  child: SvgPicture.asset(
                    FilePath.appLogo,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Academics',
                  style: Theme.of(context).textTheme.headline3,
                ),
                aPageSpecing1,
                DropdownButtonFormField(
                  items: campusList.map(
                    (e) {
                      return DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      );
                    },
                  ).toList(),
                  onChanged: (_) {},
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    hintText: 'Campus',
                  ),
                ),
                aPageSpecing1,
                DropdownButtonFormField(
                  items: deptList.map((e) {
                    return DropdownMenuItem(
                      child: Text(e),
                      value: e,
                    );
                  }).toList(),
                  onChanged: (_) {},
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    hintText: 'Department',
                  ),
                ),
                SizedBox(
                  height: 160.h,
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'SAVE',
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
