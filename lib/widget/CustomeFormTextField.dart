import 'package:flutter/material.dart';

class CustomeFormTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String? textHint;
  const CustomeFormTextField(
      {Key? key, this.textEditingController, this.textHint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: textHint,
      ),
    );
  }
}
