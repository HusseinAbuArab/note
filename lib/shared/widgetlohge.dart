import 'package:flutter/material.dart';
import 'package:flutter_application_1/const/on_colors.dart';
import 'package:flutter_application_1/shared/on_text.dart';

// ignore: camel_case_types
class On_textlogin extends StatelessWidget {
  const On_textlogin({super.key});

  @override
  Widget build(BuildContext context) {
    return  ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                        colors: [On_Colors.primary, On_Colors.secandary],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)
                    .createShader(
                        Rect.fromLTWH(0, 0, bounds.height, bounds.height)),
                child: On_Text(
                  data: 'LOGO',
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'prime',
                ),
              );
  }
}