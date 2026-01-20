import 'package:flutter/material.dart';

// ignore: camel_case_types
class On_Setting extends StatefulWidget {
  const On_Setting({super.key});

  @override
  State<On_Setting> createState() => _On_SettingState();
}

class _On_SettingState extends State<On_Setting> {
  double _width = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            AnimatedContainer(
              duration: const Duration(seconds: 3),
              curve: Curves.ease,
              width: _width,
              height: _width,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(30)),
            ),
            const Spacer(),
            ElevatedButton(
                onPressed: () {
                  _width = _width == 400 ? 200 : 400;

                  setState(() {});
                },
                child: const Text("text")),
            const SizedBox(
              height: 20,
            )
          ],
        ));
  }
}
