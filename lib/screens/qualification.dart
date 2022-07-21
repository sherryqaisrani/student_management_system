import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:student_management_system/utils/constant.dart';
import 'package:student_management_system/utils/file_path.dart';

import '../widget/qualification_card.dart';

class QualificationPage extends StatelessWidget {
  const QualificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            size: 30.w,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        title: Text(
          'Qualification',
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              size: 30,
              color: Theme.of(context).colorScheme.primary,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: SvgPicture.asset(
              FilePath.rightBottomLogo,
              fit: BoxFit.fill,
              height: 188.h,
            ),
          ),
          Padding(
            padding: aContentPadding,
            child: Column(
              children: [
                qualification_card(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
