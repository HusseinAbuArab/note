
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/view/api/class.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();

  static Future<List<Noteclass>?> fetchNote() async {
    var data = {'text': sharedPreferences?.getString('id')};
    var response = await client
        .post(Uri.parse("http://localhost/cours_php1/viewn.php"), body: data);
    if (response.statusCode == 200) {
      var json = response.body;
      return noteclassFromJson(json);
    } else {
      print('Error response:${response.body}');
    }
    return null;
  }
}
