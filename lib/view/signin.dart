import 'package:flutter/material.dart';
import 'package:flutter_application_1/const/on_colors.dart';
import 'package:flutter_application_1/shared/on_text.dart';
import 'package:flutter_application_1/shared/textformfiled.dart';

// ignore: camel_case_types
class On_signin extends StatelessWidget {
  const On_signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         const SizedBox(
            height: 100,
          ),
          Center(
            child: On_Text(
              data: "Let's Get Started",
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Center(
            child: On_Text(
              data: "create an acoount on mnzl to get all features",
              fontSize: 16,
            ),
          ),
         const SizedBox(
            height: 30,
          ),
          On_TextformFild(
              hintText: 'Fast Name', suffixIcon: const Icon(Icons.person)),
          On_TextformFild(
              hintText: 'Last Name', suffixIcon: const Icon(Icons.person)),
          On_TextformFild(
              hintText: 'User Name', suffixIcon: const Icon(Icons.person)),
          On_TextformFild(hintText: 'Email', suffixIcon: const Icon(Icons.email)),
          On_TextformFild(
              hintText: 'Password', suffixIcon: const Icon(Icons.password)),
          On_TextformFild(
              hintText: 'confirm Password',
              suffixIcon: const Icon(Icons.password_outlined)),
        const  SizedBox(
            height: 30,
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
                child: Center(
                  child: On_Text(
                    data: 'CREATE ',
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'prime',
                  ),
                )),
          ),
         const SizedBox(
            width: 20,
          ),
          Center(
            child: Container(
              alignment: Alignment.center,
              child: Row(
                children: [
                const  SizedBox(
                    width: 20,
                  ),
                 const Text("Already have an account ?"),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: On_Text(
                      data: 'Login here',
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
    );
  }
}
