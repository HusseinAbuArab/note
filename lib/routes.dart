import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/add.dart';
import 'package:flutter_application_1/view/home.dart';
import 'package:flutter_application_1/view/loginpage.dart';
import 'package:flutter_application_1/view/splashScreen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) =>  const On_Splashscreen(),
  '/On_LoginPage': (context) =>  const On_LoginPage(),
  '/On_Home': (context) =>  const On_Home(),
'/On_add':(context)=>const On_add(),
//'/On_add':(context)=>const On_add(),
};
