// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/const/on_colors.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/shared/widgetlohge.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class On_Splashscreen extends StatefulWidget {
  const On_Splashscreen({super.key});

  @override
  State<On_Splashscreen> createState() => _On_SplashscreenState();
}

// ignore: camel_case_types
class _On_SplashscreenState extends State<On_Splashscreen> {
  @override
  void initState() {
    Future.delayed(
        const Duration(seconds: 5),
        () => sharedPreferences?.getInt('id') == null
            ? Navigator.of(context).pushNamed('/On_LoginPage')
            : Navigator.of(context).pushNamed('/On_Home'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const Center(
          child: Column(
            children: [
              SizedBox(
                height: 130,
              ),
              On_textlogin(),
            ],
          ),
        ),
        Positioned(
            left: 34,
            child: Container(
              width: 2,
              height: 380,
              color: On_Colors.secandary,
            )),
        Positioned(
            left: 90,
            child: Container(
              width: 2,
              height: 270,
              color: On_Colors.secandary,
            )),
        Positioned(
          top: 270,
          right: 20,
          left: 60,
          child: Column(
            children: [
              SizedBox(
                width: 400,
                child: Image.asset(
                  'images/image2.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 70,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    'LOREM IPSUM',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Lorem Ipsum is a dummy text as \n              placeholder',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500, fontSize: 18),
                ),
              )
            ],
          ),
        ),
        const Positioned(
            top: 280,
            left: 60,
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(
                'images/images1.jpg',
              ),
            )),
        const Positioned(
            top: 390,
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('images/images1.jpg'),
            )),
      ],
    ));
  }
}
