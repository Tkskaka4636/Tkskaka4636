import 'dart:async';

import 'package:get/get.dart';

class HomeController extends GetxController{

  var time = ''.obs;
  var date = ''.obs;
  var day = ''.obs;



  @override
  void onInit() {
    super.onInit();
    updateDateTime();
  }

  void updateDateTime() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      final now = DateTime.now();
      final hour = now.hour > 12 ? now.hour - 12 : now.hour;
      final period = now.hour >= 12 ? 'PM' : 'AM';
      time.value = '${hour == 0 ? 12 : hour}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')} $period';
      date.value = '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';
    });
  }

}