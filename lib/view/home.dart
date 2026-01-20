import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/view/op/get.dart';
import 'package:flutter_application_1/view/op/model.dart';
import 'package:flutter_application_1/view/setting.dart';

///

// ignore: camel_case_types
class On_Home extends StatefulWidget {
  const On_Home({super.key});

  @override
  State<On_Home> createState() => _On_HomeState();
}

class _On_HomeState extends State<On_Home> {
  @override
  void initState() {
    AllProductsServiceop().registerPost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: AnimatedContainer(
          duration: Duration(seconds: 15),
          curve: Curves.linear,
          width: 300,
          color: Colors.green,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.black,
              ),
              SizedBox(
                height: 10,
              ),
              Text("${sharedPreferences?.getString('name')}"),
              ListTile(
                title: Text('Setting'),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => On_Setting()));
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  sharedPreferences?.clear();
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.back_hand)),
            IconButton(
                onPressed: () {
                  AllProductsServiceop().registerPost();
                },
                icon: Icon(Icons.abc_outlined))
          ],
        ),
        body: ListView.builder(itemBuilder: (context, index) => Text('')));
  }
}

//  FutureBuilder<List<ShowOp>>(
//         future: AllProductsServiceop().getAllProducts(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             List<ShowOp> products = snapshot.data!;
//             return GridView.builder(
//               itemCount: products.length,
//               clipBehavior: Clip.none,
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 childAspectRatio: 1.5,
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 100,
//               ),
//               itemBuilder: (context, index) {
//                 return Text(products[index].text);
//               },
//             );
//           } else {
//             return Center(child: CircularProgressIndicator());
//           }
//         },
//       ),