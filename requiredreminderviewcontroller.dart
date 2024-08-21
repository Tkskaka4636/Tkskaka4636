import 'package:get/get.dart';

class RequiredReminderViewController extends GetxController {
  var selectedValue = 'OO'.obs;
  var items = ['OO', '01', '02', '03','O4', '05', '06', '07', 'O8', '09', '10', ].obs;

  void changeSelectedValue(String value) {
    selectedValue.value = value;
  }
}
