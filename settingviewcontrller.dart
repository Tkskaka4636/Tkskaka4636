import 'dart:ffi';

import 'package:get/get.dart';

class SettingViewController extends GetxController{

  List settingsArray = [].obs;

  @override
  void onInit() {
    settingsData();
    super.onInit();
  }

   void settingsData() {
    Map<String, dynamic> dataList1 =  <String, dynamic>{};
    dataList1['topic'] = 'my_Profile'.tr;
    settingsArray.add(dataList1);

    Map<String, dynamic> dataList2 =  <String, dynamic>{};
    dataList2['topic'] = 'reminder_history'.tr;
    settingsArray.add(dataList2);

    Map<String, dynamic> dataList3 =  <String, dynamic>{};
    dataList3['topic'] = 'card_history'.tr;
    settingsArray.add(dataList3);

    Map<String, dynamic> dataList4 =  <String, dynamic>{};
    dataList4['topic'] = 'contact_us'.tr;
    settingsArray.add(dataList4);

    Map<String, dynamic> dataList5 =  <String, dynamic>{};
    dataList5['topic'] = 'about_us'.tr;
    settingsArray.add(dataList5);

    Map<String, dynamic> dataList6 =  <String, dynamic>{};
    dataList6['topic'] = 'privacy_policy'.tr;
    settingsArray.add(dataList6);

    Map<String, dynamic> dataList7 =  <String, dynamic>{};
    dataList7['topic'] = 'share_app'.tr;
    settingsArray.add(dataList7);

    Map<String, dynamic> dataList8 =  <String, dynamic>{};
    dataList8['topic'] = 'support'.tr;
    settingsArray.add(dataList8);


  }

}