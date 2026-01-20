import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class On_TextformFild extends StatelessWidget {
  String? hintText;
  Widget? suffixIcon;
  TextEditingController? controller;
  On_TextformFild(
      {super.key,
      required this.hintText,
      required this.suffixIcon,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: suffixIcon,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)))),
    );
  }
}
