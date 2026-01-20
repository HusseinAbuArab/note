import 'dart:convert';

import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/view/op/api.dart';
import 'package:flutter_application_1/view/op/model.dart';
import 'package:http/http.dart' as http;

class AllProductsServiceop {
  registerPost() async {
    Uri url = Uri.parse('http://localhost/cours_php1/viewn.php');
    var data = {'id': sharedPreferences!.getInt('id')?.toString()};
    try {
      var respones = await http.post(url, body: data);
      if (respones.statusCode == 200) {
        var json = jsonDecode(respones.body);

        // ignore: use_build_context_synchronously

        List productsList = [];
        for (int i = 0; i < json.length; i++) {
          // productsList.add(On_post_id(
          //     title: json[i]['title'].toString(),
          //     text: json[i]['text'].toString(),
          //     id_id: json[i]['id_idnote'].toString()));
          productsList.add(json[i]);
        }
        print(productsList);

        // print(json['data']);
        // sharedPreferences?.setInt('id', json['data']['id']);
        // sharedPreferences?.setString('name', json['data']['name']);
        // sharedPreferences?.setString('password', json['data']['password']);
        // sharedPreferences?.setString('email', json['data']['email']);

        return json;
      } else {
        var error = jsonDecode(respones.body);
        print('Unable to register : ${error['error']}');
      }
    } catch (e) {
      print('Error ${e}');
    }
  }

  Future<List<ShowOp>> getAllProducts() async {
    List<dynamic> data = await Api().post(
      url: 'http://localhost/cours_php1/viewn.php',
      body: {'id': sharedPreferences?.getInt('id').toString()},
      token: '',
    );

    List<ShowOp> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(ShowOp.fromJson(data[i]));
    }
    print(productsList);
    return productsList;
  }
}

class On_post_id {
  String title;
  String text;
  String id_id;
  On_post_id({required this.title, required this.text, required this.id_id});
}
