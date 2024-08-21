import 'dart:async';

import 'package:get/get.dart';

class MyPlanController extends GetxController{

  List myPlanArray = [].obs;

  @override
  void onInit() {
    myPlanData();
    super.onInit();
  }

  void myPlanData() {
    Map<String, dynamic> dataList1 =  <String, dynamic>{};
    dataList1['reminder'] = '50'.tr;
    dataList1['card'] = '50'.tr;
    dataList1['prise'] = '4.78'.tr;
    myPlanArray.add(dataList1);

    Map<String, dynamic> dataList2 =  <String, dynamic>{};
    dataList2['reminder'] = '10'.tr;
    dataList2['card'] = '10'.tr;
    dataList2['prise'] = '0.99'.tr;
    myPlanArray.add(dataList2);

    Map<String, dynamic> dataList3 =  <String, dynamic>{};
    dataList3['reminder'] = '20'.tr;
    dataList3['card'] = '20'.tr;
    dataList3['prise'] = '1.99'.tr;
    myPlanArray.add(dataList3);

    Map<String, dynamic> dataList4 =  <String, dynamic>{};
    dataList4['reminder'] = '25'.tr;
    dataList4['card'] = '25'.tr;
    dataList4['prise'] = '2.43'.tr;
    myPlanArray.add(dataList4);

    Map<String, dynamic> dataList5 =  <String, dynamic>{};
    dataList5['reminder'] = '30'.tr;
    dataList5['card'] = '30'.tr;
    dataList5['prise'] = '2.83'.tr;
    myPlanArray.add(dataList5);


  }

}