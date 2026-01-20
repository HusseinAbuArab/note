import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class On_Text extends StatelessWidget {
  String data;
  Color? color;
  double? fontSize;
  FontWeight? fontWeight;
  String? fontFamily;
  On_Text(
      {super.key,
      required this.data,
      this.color = Colors.black,
      this.fontFamily,
      this.fontSize = 16,
      this.fontWeight = FontWeight.w300});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          fontFamily: fontFamily,
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight),
    );
  }
}
