import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminder2/controller/reminderviewcontroller.dart';
import 'package:reminder2/view/reminderdetialview.dart';
import '../main.dart';


class ReminderView extends StatelessWidget {
  final reminderViewController = Get.put(ReminderViewController());
  List reminderArray= [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text("Reminder"),
      ),
      backgroundColor: Colors.blueGrey[200],
      body: Column(
        children: [
          Container(
            height: 200,
            width: 300,
            child: reminderAdapter(context),
          ),
        ],
      ),
    );
  }

// Widget reminderList(BuildContext context) {
//   return Flexible(
//     child: ListView.builder(
//       itemCount: reminderViewController.reminderArray.length,
//       itemBuilder: reminderAdapter,
//     ),
//   );
// }

Widget reminderAdapter(BuildContext context ) {
  return Column(
    children: List.generate(
      reminderArray.length, (index) =>
        Padding(
          padding: const EdgeInsets.only(top: 18,left: 8.0, right: 8,bottom: 10),
          child: GestureDetector(
            child: Card(
              elevation: 8,
              color: Colors.white,
              shadowColor: Colors.black,
              // color: airLineArray[index]['is_deleted'].toString()=='1' ? const Color.fromRGBO(250, 100, 100, 1) : Colors.white,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              child: Container(
                height: 106,
                child: Stack(
                  children: [
                    Column(
                        children: [
                          Container(
                            child: Column(
                              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width:  MediaQuery.of(context).size.width*0.67,
                                      // color: Colors.red,
                                      // alignment: Alignment.centerLeft,
                                      child: Text(
                                        reminderArray[index][MyApp.appEngine.databaseManager.columnReminderTableTitle],
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                        // textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Container(
                                      width:  MediaQuery.of(context).size.width*0.24,
                                      // color: Colors.red,
                                      // alignment: Alignment.centerLeft,
                                      child: Text(
                                        reminderArray[index][MyApp.appEngine.databaseManager.columnReminderTableDate],
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                        // textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width:  MediaQuery.of(context).size.width*0.7,
                                      // color: Colors.red,
                                      // alignment: Alignment.centerLeft,
                                      child: Text(
                                        reminderArray[index][MyApp.appEngine.databaseManager.columnReminderTableDescription],
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                        // textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Container(
                                      width:  MediaQuery.of(context).size.width*0.2,
                                      // color: Colors.red,
                                      // alignment: Alignment.centerLeft,
                                      child: Text(
                                        reminderArray[index][MyApp.appEngine.databaseManager.columnReminderTableTime],
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                        // textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width:  MediaQuery.of(context).size.width*0.7,
                                      // color: Colors.red,
                                      // alignment: Alignment.centerLeft,
                                      child: const Text(
                                        "Type",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                        // textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Container(
                                        width:  MediaQuery.of(context).size.width*0.2,
                                        // color: Colors.red,
                                        // alignment: Alignment.centerLeft,
                                        child: Icon(Icons.volume_up)
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ]
                    ),

                  ],
                ),
              ),
            ),
            onTap: () {
              jumpToReminderDetail(index);
              Get.to(ReminderDetailView());
            },
          ),
        ),
    ),
  );
}

Future<void> fetchReminder() async {
  var reminderArray1 = await MyApp.appEngine.databaseManager.fetchAllTableData(
      MyApp.appEngine.databaseManager.tableReminderList);
  reminderArray = reminderArray1!.toList();
  print('Reminder List');
  print(reminderArray);
}

jumpToReminderDetail(int index)
{
  ReminderDetailView reminderDetailView = ReminderDetailView();
  reminderDetailView.selectedPracticePaper =  (index+1);
  Get.to(ReminderDetailView());
}

}

// class _reminderViewState extends State<ReminderView> {
//   @override
//   void initState() {
//     fetchReminder();
//     super.initState();
//   }
//
//   final reminderViewController = Get.put(ReminderViewController());
//   List reminderArray= [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey,
//         title: Text("Reminder"),
//       ),
//       backgroundColor: Colors.blueGrey[200],
//       body: Stack(
//         children: [
//           Column(
//             children: [
//               reminderAdapter(context),
//             ],
//           )
//         ],
//       ),
//     );
//   }
//
//   // Widget reminderList(BuildContext context) {
//   //   return Flexible(
//   //     child: ListView.builder(
//   //       itemCount: reminderViewController.reminderArray.length,
//   //       itemBuilder: reminderAdapter,
//   //     ),
//   //   );
//   // }
//
//   Widget reminderAdapter(BuildContext context ) {
//     return SingleChildScrollView(
//       child: Column(
//         children: List.generate(
//         reminderArray.length, (index) =>
//           Padding(
//             padding: const EdgeInsets.only(top: 18,left: 8.0, right: 8,bottom: 10),
//             child: GestureDetector(
//               child: Card(
//                 elevation: 8,
//                 color: Colors.white,
//                 shadowColor: Colors.black,
//                 // color: airLineArray[index]['is_deleted'].toString()=='1' ? const Color.fromRGBO(250, 100, 100, 1) : Colors.white,
//                 shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
//                 child: Container(
//                   height: 106,
//                   child: Stack(
//                     children: [
//                       Column(
//                         children: [
//                               Container(
//                                 child: Column(
//                                   //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Row(
//                                       children: [
//                                         SizedBox(
//                                           width:  MediaQuery.of(context).size.width*0.67,
//                                           // color: Colors.red,
//                                           // alignment: Alignment.centerLeft,
//                                           child: Text(
//                                             reminderArray[index][MyApp.appEngine.databaseManager.columnReminderTableTitle],
//                                             style: const TextStyle(
//                                                 color: Colors.black,
//                                                 fontWeight: FontWeight.bold,
//                                                 fontSize: 18),
//                                             // textAlign: TextAlign.start,
//                                           ),
//                                         ),
//                                         Container(
//                                           width:  MediaQuery.of(context).size.width*0.24,
//                                           // color: Colors.red,
//                                           // alignment: Alignment.centerLeft,
//                                           child: Text(
//                                             reminderArray[index][MyApp.appEngine.databaseManager.columnReminderTableDate],
//                                             style: const TextStyle(
//                                                 color: Colors.black,
//                                                 fontWeight: FontWeight.bold,
//                                                 fontSize: 18),
//                                             // textAlign: TextAlign.start,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     Row(
//                                       children: [
//                                         Container(
//                                           width:  MediaQuery.of(context).size.width*0.7,
//                                           // color: Colors.red,
//                                           // alignment: Alignment.centerLeft,
//                                           child: Text(
//                                             reminderViewController.reminderArray[index][MyApp.appEngine.databaseManager.columnReminderTableDescription],
//                                             style: const TextStyle(
//                                                 color: Colors.black,
//                                                 fontWeight: FontWeight.bold,
//                                                 fontSize: 18),
//                                             // textAlign: TextAlign.start,
//                                           ),
//                                         ),
//                                         Container(
//                                           width:  MediaQuery.of(context).size.width*0.2,
//                                           // color: Colors.red,
//                                           // alignment: Alignment.centerLeft,
//                                           child: Text(
//                                             reminderViewController.reminderArray[index][MyApp.appEngine.databaseManager.columnReminderTableTime],
//                                             style: const TextStyle(
//                                                 color: Colors.black,
//                                                 fontWeight: FontWeight.bold,
//                                                 fontSize: 18),
//                                             // textAlign: TextAlign.start,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     Row(
//                                       children: [
//                                         Container(
//                                           width:  MediaQuery.of(context).size.width*0.7,
//                                           // color: Colors.red,
//                                           // alignment: Alignment.centerLeft,
//                                           child: const Text(
//                                             "Type",
//                                             style: TextStyle(
//                                                 color: Colors.black,
//                                                 fontWeight: FontWeight.bold,
//                                                 fontSize: 18),
//                                             // textAlign: TextAlign.start,
//                                           ),
//                                         ),
//                                         Container(
//                                             width:  MediaQuery.of(context).size.width*0.2,
//                                             // color: Colors.red,
//                                             // alignment: Alignment.centerLeft,
//                                             child: Icon(Icons.volume_up)
//                                         ),
//                                       ],
//                                     ),
//
//                                   ],
//                                 ),
//                               ),
//                         ]
//                         ),
//
//                     ],
//                   ),
//                 ),
//               ),
//               onTap: () {
//                 jumpToReminderDetail(index);
//                 Get.to(ReminderDetialView());
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Future<void> fetchReminder() async {
//     var reminderArray1 = await MyApp.appEngine.databaseManager.fetchAllTableData(
//         MyApp.appEngine.databaseManager.tableReminderList);
//     reminderArray = reminderArray1!.toList();
//     print('Reminder List');
//     print(reminderArray);
//   }
//
//   jumpToReminderDetail(int index)
//   {
//     ReminderDetialView reminderDetailView = ReminderDetialView();
//     reminderDetailView.selectedPracticePaper =  (index+1);
//     Get.to(ReminderDetialView());
//   }
//
// }
