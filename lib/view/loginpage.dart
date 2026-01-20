import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/const/on_colors.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/shared/on_text.dart';
import 'package:flutter_application_1/shared/textformfiled.dart';
import 'package:flutter_application_1/shared/widgetlohge.dart';
import 'package:flutter_application_1/view/home.dart';
import 'package:flutter_application_1/view/signin.dart';
import 'package:http/http.dart' as http;

// ignore: camel_case_types
class On_LoginPage extends StatefulWidget {
  const On_LoginPage({super.key});

  @override
  State<On_LoginPage> createState() => _On_LoginPageState();
}

// ignore: camel_case_types
class _On_LoginPageState extends State<On_LoginPage> {
  GlobalKey<FormState> formState = GlobalKey();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  registerUser() async {
    Uri url = Uri.parse('http://localhost/cours_php1/loginn.php');
    var data = {
      'email': email.text.toString(),
      'password': password.text.toString()
    };
    try {
      var respones = await http.post(url, body: data);
      if (respones.statusCode == 200) {
        var json = jsonDecode(respones.body);

        // ignore: use_build_context_synchronously
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const On_Home()),
            (route) => false);

        print(json['data']['id']);
        print(json['data']);
        sharedPreferences?.setInt('id', json['data']['id']);
        sharedPreferences?.setString('name', json['data']['name']);
        sharedPreferences?.setString('password', json['data']['password']);
        sharedPreferences?.setString('email', json['data']['email']);

        return json['data'];
      } else {
        var error = jsonDecode(respones.body);
        print('Unable to register : ${error['error']}');
      }
    } catch (e) {
      print('Error ${e}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formState,
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Center(child: On_textlogin()),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "welcome back !",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "login to existing logo accoun!",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            On_TextformFild(
              hintText: 'email',
              suffixIcon: const Icon(Icons.email),
              controller: email,
            ),
            On_TextformFild(
              hintText: 'password',
              suffixIcon: const Icon(Icons.lock),
              controller: password,
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Row(
                  children: [Spacer(), Text("forget password")],
                )),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    On_Colors.primary,
                    On_Colors.secandary,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                  child: MaterialButton(
                    onPressed: () {
                      registerUser();
                    },
                    child: Center(
                      child: On_Text(
                        data: 'Log in ',
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'prime',
                      ),
                    ),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                ' OR Sign up using',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'prime',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('images/fase.jpg'),
                      )),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('images/google.png'),
                      )),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('images/insta.jpg'),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    const Text("Don't have account ?"),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const On_signin(),
                        ));
                      },
                      child: On_Text(
                        data: 'Sign Up',
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'prime',
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
