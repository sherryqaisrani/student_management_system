import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:student_management_system/models/country.dart';
import 'package:student_management_system/provider/country_provider.dart';
import 'package:student_management_system/utils/file_path.dart';

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
    Provider.of<CountryProvider>(context, listen: false).getCountry();
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
                    FilePath.appLogo,
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
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    SizedBox(height: 22.h),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        hintText: 'Name',
                        prefixIcon: Icon(
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
                      decoration: const InputDecoration(
                        hintText: 'short Name',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: '13302-1728416212-1',
                        prefixIcon: Icon(
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
                      decoration: const InputDecoration(
                        hintText: 'Gender',
                        prefixIcon: Icon(
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
                      decoration: const InputDecoration(
                        hintText: 'Father Name',
                        prefixIcon: Icon(
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
                      decoration: const InputDecoration(
                        hintText: 'Father’s  Occupation',
                        prefixIcon: Icon(Icons.work),
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
                      decoration: const InputDecoration(
                        hintText: 'Date of Birth',
                        prefixIcon: Icon(Icons.calendar_month),
                        suffixIcon: Icon(Icons.calendar_today_outlined),
                      ),
                      onTap: _datePicker,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: 'Email',
                        prefixIcon: Icon(
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
                      decoration: const InputDecoration(
                        hintText: 'Contact No.',
                        prefixIcon: Icon(Icons.phone),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: 'Other Contact No.',
                        prefixIcon: Icon(
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
                      decoration: const InputDecoration(
                        hintText: 'Guardian Contact No.',
                        prefixIcon: Icon(
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
                      decoration: const InputDecoration(
                        hintText: 'Postal Address',
                        prefixIcon: Icon(
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
                      decoration: const InputDecoration(
                        hintText: 'Permanent Address',
                        prefixIcon: Icon(
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
                      decoration: const InputDecoration(
                        hintText: 'Domicile Province',
                        prefixIcon: Icon(
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
                      decoration: const InputDecoration(
                        hintText: 'Disability',
                        prefixIcon: Icon(
                          Icons.wheelchair_pickup,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Consumer<CountryProvider>(
                      builder: (context, value, child) =>
                          DropdownButtonFormField<CountryModel>(
                        items: value.countryList,
                        onChanged: (CountryModel? value) {},
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
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
}
