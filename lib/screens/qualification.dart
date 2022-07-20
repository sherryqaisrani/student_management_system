import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student_management_system/utils/constant.dart';
import 'package:student_management_system/utils/file_path.dart';

class QualificationPage extends StatefulWidget {
  const QualificationPage({Key? key}) : super(key: key);

  @override
  State<QualificationPage> createState() => _QualificationPageState();
}

class _QualificationPageState extends State<QualificationPage> {
  var qualificationLevel = ['Matric', 'Intermadiate', 'Graduation'];
  var universityList = ['A', 'B', 'C'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 152.h,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    child: SvgPicture.asset(FilePath.appLogo),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Qualification',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                  aPageSpecing1,
                  DropdownButtonFormField(
                      items: qualificationLevel.map((e) {
                        return DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        );
                      }).toList(),
                      decoration: const InputDecoration(
                        hintText: 'Qualification Level',
                        prefixIcon: Icon(
                          Icons.cast_for_education,
                        ),
                      ),
                      onChanged: (_) {}),
                  aPageSpecing1,
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      hintText: 'Degree Title',
                      prefixIcon: Icon(
                        Icons.school,
                      ),
                    ),
                  ),
                  aPageSpecing1,
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      hintText: 'Obtained Marks/ CGPA',
                      prefixIcon: Icon(
                        Icons.school,
                      ),
                    ),
                  ),
                  aPageSpecing1,
                  TextFormField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      hintText: 'Total Marks/ CGPA',
                      prefixIcon: Icon(
                        Icons.school,
                      ),
                    ),
                  ),
                  aPageSpecing1,
                  TextFormField(
                    readOnly: true,
                    showCursor: false,
                    decoration: const InputDecoration(
                      hintText: 'Passing Year',
                      prefixIcon: Icon(
                        Icons.calendar_month,
                      ),
                      suffixIcon: Icon(
                        Icons.calendar_today_outlined,
                      ),
                    ),
                  ),
                  aPageSpecing1,
                  DropdownButtonFormField(
                    items: universityList.map((e) {
                      return DropdownMenuItem(child: Text(e), value: e);
                    }).toList(),
                    decoration: const InputDecoration(
                      hintText: 'Board/University',
                      prefixIcon: Icon(
                        Icons.school,
                      ),
                    ),
                    onChanged: (_) {},
                  ),
                  SizedBox(
                    height: 56.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Save',
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
