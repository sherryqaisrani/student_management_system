import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_management_system/utils/colors.dart';
import 'package:student_management_system/utils/file_path.dart';

class programCard extends StatelessWidget {
  const programCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // height: 223.h,
      // width: 192.w,
      clipBehavior: Clip.hardEdge,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        side: BorderSide(color: Colors.transparent, width: 0),
      ),
      color: Colors.white,
      child: Stack(
        children: [
          Image.asset(
            FilePath.programCardImage1,
            fit: BoxFit.fill,
            width: 166.w,
            height: 166.h,
          ),
          Positioned(
            top: 10,
            left: 10,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
              child: Container(
                color: Theme.of(context).colorScheme.surface,
                child: Padding(
                  padding: REdgeInsets.all(
                    5.0,
                  ),
                  child: Text(
                    'New',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              color: Colors.black54,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 9.0.h),
                  child: const Text(
                    'KAMYAB JAWAN PROGRAM',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: aWhiteColor,
                    ),
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
