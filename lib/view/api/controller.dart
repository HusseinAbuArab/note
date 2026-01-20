


import 'package:flutter_application_1/view/api/class.dart';
import 'package:flutter_application_1/view/api/classRemoteServices.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class DataController extends GetxController {
  var productItems = <Noteclass>[].obs;

  @override
  void onInit() {
    fetchProducts();

    super.onInit();
  }

  void fetchProducts() async {
    try {
      var data = await RemoteServices.fetchNote();
      if (data != null) {
        productItems.assignAll(data as Iterable<Noteclass>);
      }
    } catch (e) {
      print(e);
    }
  }
}
