import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:student_management_system/utils/constant.dart';

class qualification_card extends StatelessWidget {
  const qualification_card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime dateTime =
        DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
    return Card(
      child: Padding(
        padding: aContentPadding,
        child: Column(
          children: [
            Text(
              'Bachelors in Computer Science',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              'International Islamic University Islamabad',
              style: aTextStyle,
            ),
            aPageSpecing1,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Passing Year'),
                Text(
                  DateFormat.yMMM().format(dateTime),
                  style: aTextStyle,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Qualification Level',
                ),
                Text(
                  'BS LEVEL',
                  style: aTextStyle,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Marks/CGPA',
                ),
                Text(
                  '3.00',
                  style: aTextStyle,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
