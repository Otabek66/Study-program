import 'package:flutter/material.dart';

class MyTextFormField {
  static TextFormField textformfield(String hintText, TextEditingController? controller, {double? radius}  ) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(radius ?? 10.0),
          ),
        ),
      ),
    );
  }
}
