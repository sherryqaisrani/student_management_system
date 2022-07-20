import 'package:flutter/material.dart';

class CustomeFormTextField extends StatelessWidget {
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obsecure;
  final String? textHint;
  const CustomeFormTextField(
      {Key? key,
      required this.controller,
      required this.textHint,
      required this.prefixIcon,
      this.obsecure,
      this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: textHint,
      ),
    );
  }
}
