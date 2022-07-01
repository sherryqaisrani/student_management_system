import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:student_management_system/utils/colors.dart';

class PersonalInfo extends StatefulWidget {
  PersonalInfo({Key? key}) : super(key: key);

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  final _dateEditTextController = TextEditingController();
  var gender = ['Male', 'Female', 'Other'];
  var fatherOp = ['Employee', 'Former', 'Other'];
  var domicileProvince = [
    'Punjab',
    ' Khyber Pakhtunkhwa',
    'Balochistan',
    'Sindh',
  ];
  var disability = ['Yes', 'NO'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 152.h,
            width: double.infinity,
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
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 130.h),
                    Text(
                      'Personal Information',
                      style: TextStyle(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 22.h),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      decoration: getInputDecoration(
                        hintText: 'Name',
                        prefixIcon: const Icon(
                          Icons.person,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      decoration: getInputDecoration(
                        hintText: 'short Name',
                        prefixIcon: const Icon(Icons.person),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      decoration: getInputDecoration(
                        hintText: '13302-1728416212-1',
                        prefixIcon: const Icon(
                          Icons.fingerprint,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    DropdownButtonFormField(
                      items: gender.map(
                        (e) {
                          return DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          );
                        },
                      ).toList(),
                      decoration: getInputDecoration(
                        hintText: 'Gender',
                        prefixIcon: const Icon(
                          Icons.person,
                        ),
                      ),
                      onChanged: (_) {},
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      decoration: getInputDecoration(
                        hintText: 'Father Name',
                        prefixIcon: const Icon(
                          Icons.person,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    DropdownButtonFormField(
                      items: fatherOp.map(
                        (e) {
                          return DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          );
                        },
                      ).toList(),
                      decoration: getInputDecoration(
                        hintText: 'Father’s  Occupation',
                        prefixIcon: const Icon(Icons.work),
                      ),
                      onChanged: (_) {},
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      controller: _dateEditTextController,
                      readOnly: true,
                      showCursor: false,
                      decoration: getInputDecoration(
                        hintText: 'Date of Birth',
                        prefixIcon: const Icon(Icons.calendar_month),
                        sufficIon: const Icon(Icons.calendar_today_outlined),
                      ),
                      onTap: _datePicker,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: getInputDecoration(
                        hintText: 'Email',
                        prefixIcon: const Icon(
                          Icons.email,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      decoration: getInputDecoration(
                        hintText: 'Contact No.',
                        prefixIcon: const Icon(Icons.phone),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      decoration: getInputDecoration(
                        hintText: 'Other Contact No.',
                        prefixIcon: const Icon(
                          Icons.phone,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      decoration: getInputDecoration(
                        hintText: 'Guardian Contact No.',
                        prefixIcon: const Icon(
                          Icons.phone,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      decoration: getInputDecoration(
                        hintText: 'Postal Address',
                        prefixIcon: const Icon(
                          Icons.location_city,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      decoration: getInputDecoration(
                        hintText: 'Permanent Address',
                        prefixIcon: const Icon(
                          Icons.location_city,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    DropdownButtonFormField(
                      items: domicileProvince
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text(e),
                            ),
                          )
                          .toList(),
                      decoration: getInputDecoration(
                        hintText: 'Domicile Province',
                        prefixIcon: const Icon(
                          Icons.location_city,
                        ),
                      ),
                      onChanged: (_) {},
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    DropdownButtonFormField(
                      items: disability
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text(e),
                            ),
                          )
                          .toList(),
                      onChanged: (_) {},
                      decoration: getInputDecoration(
                        hintText: 'Disability',
                        prefixIcon: const Icon(
                          Icons.wheelchair_pickup,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              vertical: 17.h,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                10.r,
                              ),
                              side: const BorderSide(
                                color: Colors.transparent,
                              ),
                            )),
                        onPressed: () {},
                        child: Text(
                          'Save',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

// Date Picker Dialog

  void _datePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1970),
            lastDate: DateTime.now())
        .then((datePicker) {
      if (datePicker != null) {
        _dateEditTextController.text = DateFormat.yMd().format(datePicker);
      }
    });
  }

//TextField Decoration
  InputDecoration getInputDecoration(
      {required String hintText,
      required Widget prefixIcon,
      Widget? sufficIon}) {
    return InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          10.r,
        ),
        borderSide: const BorderSide(
          color: Colors.transparent,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          10.r,
        ),
        borderSide: const BorderSide(
          color: Colors.transparent,
        ),
      ),
      filled: true,
      fillColor: aLightPlaceholderColor,
      contentPadding: EdgeInsets.symmetric(
        vertical: 15.h,
      ),
      prefixIcon: prefixIcon,
      hintText: hintText,
      suffixIcon: sufficIon,
    );
  }
}
//Logos on the top left and right