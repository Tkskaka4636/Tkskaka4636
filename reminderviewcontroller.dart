import 'dart:async';
import 'package:get/get.dart';

import '../main.dart';
import '../model/reminderviewmodel.dart';

class ReminderViewController extends GetxController{

  List reminderArray = [];
  var reminders = <Reminder>[].obs;

  Future<void> fetchReminder() async {
    var reminderArray1 = await MyApp.appEngine.databaseManager.fetchAllTableData(
        MyApp.appEngine.databaseManager.tableReminderList);
    reminderArray = reminderArray1!.toList();
    print('Reminder List');
    update(reminderArray.cast<Object>());
      print(reminderArray);
  }

  void addReminder(Reminder reminder) {
    reminders.add(reminder);
    // Save to persistent storage if needed
  }

  void removeReminder(int index) {
    reminders.removeAt(index);
    // Update persistent storage if needed
  }

  @override
  void onInit() {
    fetchReminder();
    Timer(const Duration(milliseconds: 100), () async{

    });
    super.onInit();
  }

  // void reminderData() {
  //   Map<String, dynamic> dataList1 =  <String, dynamic>{};
  //   dataList1['text'] = 'Title';
  //   dataList1['Description'] = 'Description';
  //   dataList1['Type'] = 'Type';
  //   dataList1['Date'] = '1/08/2024';
  //   dataList1['Time'] = '9:34 AM';
  //   reminderArray.add(dataList1);
  //
  //   Map<String, dynamic> dataList2 =  <String, dynamic>{};
  //   dataList2['text'] = 'Have Meeting';
  //   dataList2['Description'] = 'Maasss App';
  //   dataList2['Type'] = 'Text';
  //   dataList2['Date'] = '1/08/2024';
  //   dataList2['Time'] = '9:34 AM';
  //   reminderArray.add(dataList2);
  //
  //   Map<String, dynamic> dataList3 =  <String, dynamic>{};
  //   dataList3['text'] = 'Birthday Party';
  //   dataList3['Description'] = 'Teekam Birthday';
  //   dataList3['Type'] = 'Text';
  //   dataList3['Date'] = '1/08/2024';
  //   dataList3['Time'] = '9:34 AM';
  //   reminderArray.add(dataList3);
  //
  //
  // }

}