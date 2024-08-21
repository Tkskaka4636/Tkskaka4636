import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:reminder2/controller/reminderviewcontroller.dart';
import 'package:reminder2/view/reminderview.dart';
import '../controller/addremindercontroller.dart';
import '../controller/audiocontroller.dart';
import '../main.dart';


class AddReminderScreen extends StatelessWidget {
   AddReminderScreen({super.key});
   late Size  screenSize;
  final addReminderController = Get.put(AddReminderController());
  final audioController = Get.put(AudioController());
  final reminderViewController = Get.put(ReminderViewController());

  @override
  Widget build(BuildContext context) {
screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Add Reminder'),
      ),
      backgroundColor: Colors.blueGrey[200],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            title(context),
            description(context),
            SizedBox(height: 20),
            or(context),
            recordAudio(context),
            dateAndTime(context),
            SizedBox(height: 20),
            save(context),
          ],
        ),
      ),
    );
  }

  Widget title(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: screenSize.width * 0.05, top: screenSize.height * 0.03),
      child: Container(
        alignment: Alignment.center,
        height: screenSize.height * 0.059,
        width: screenSize.width * 0.9,
        child: TextFormField(
          cursorColor: Colors.blue,
          style: const TextStyle(color: Colors.black),
          controller: addReminderController.titleController,
          keyboardType: TextInputType.name,
          decoration: const InputDecoration(
              labelText: "Title",
              labelStyle: TextStyle(color: Colors.black),
              hintText: "Title",
              hintStyle: TextStyle(color: Colors.black),
              border: GradientOutlineInputBorder(
                  width: 4,
                  gradient: LinearGradient(colors: [
                    Colors.black,
                    Colors.blueGrey,
                    Colors.black,
                  ]))),
        ),
      ),
    );
  }

  Widget description(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: screenSize.width * 0.05, top: screenSize.height * 0.03),
      child: Obx(() =>Container(
        alignment: Alignment.center,
        height: screenSize.height * 0.19,
        width: screenSize.width * 0.9,
        child: TextFormField(
          maxLines: 8,
          cursorColor: Colors.blue,
          style: const TextStyle(color: Colors.black),
          controller: TextEditingController(
            text: addReminderController.text.value,
          ),          keyboardType: TextInputType.name,
          decoration: const InputDecoration(
              labelText: "description",
              labelStyle: TextStyle(color: Colors.black),
              hintText: "description",
              hintStyle: TextStyle(color: Colors.black),
              border: GradientOutlineInputBorder(
                  width: 4,
                  gradient: LinearGradient(colors: [
                    Colors.black,
                    Colors.blueGrey,
                    Colors.black,
                  ]))),
        ),
      ),),
    );
  }

  Widget or(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: screenSize.width * 0.05, top: screenSize.height * 0.03),
      child: Container(
        alignment: Alignment.center,
        height: screenSize.height * 0.06,
        width: screenSize.width * 0.9,
        child: const Text('Or',style: TextStyle(fontSize: 40),)
      ),
    );
  }

  Widget recordAudio(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: screenSize.width * 0.05, top: screenSize.height * 0.03),
      child: Container(
          alignment: Alignment.center,
          height: screenSize.height * 0.06,
          width: screenSize.width * 0.9,
          child: ElevatedButton.icon(
            icon:  Icon(audioController.isRecording.value?CupertinoIcons.mic: Icons.mic),
            label: const Text('Record Audio'),
            onPressed: (){
              if (audioController.isRecording.value) {
                audioController.stopRecording();
                addReminderController.stopListening();
              } else {
                audioController.startRecording();
                addReminderController.startListening();
              }
            },//addReminderController.listen,
            style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: Colors.blueGrey, // Text color
          ),
          ),
      ),
    );
  }

  Widget dateAndTime(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: screenSize.width * 0.05, top: screenSize.height * 0.03),
      child: Container(
        alignment: Alignment.center,
        height: screenSize.height * 0.06,
        width: screenSize.width * 0.9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              alignment: Alignment.center,
              height: screenSize.height * 0.06,
              width: screenSize.width * 0.4,
              child: Obx(() => TextField(
                controller: TextEditingController(text: addReminderController.selectedDate.value),
                readOnly: true,
                onTap: () => addReminderController.selectDate(context),
                decoration: const InputDecoration(
                  hintText: ' Date',
                    suffixIcon: Icon(Icons.calendar_month_rounded),
                    border: GradientOutlineInputBorder(
                        width: 4,
                        gradient: LinearGradient(colors: [
                          Colors.black,
                          Colors.blueGrey,
                          Colors.black,
                        ]))
                ),
              )
            ),
            ),
            Container(
              alignment: Alignment.center,
              height: screenSize.height * 0.06,
              width: screenSize.width * 0.4,
              child: Obx(() => TextField(
                controller: TextEditingController(text: addReminderController.selectedTime.value),
                readOnly: true,
                onTap: () => addReminderController.selectTime(context),
                decoration: const InputDecoration(
                  hintText: ' Time',
                    suffixIcon: Icon(Icons.watch_later),
                    border: GradientOutlineInputBorder(
                        width: 4,
                        gradient: LinearGradient(colors: [
                          Colors.black,
                          Colors.blueGrey,
                          Colors.black,
                        ]))
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }

  Widget save(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: screenSize.width * 0.05, top: screenSize.height * 0.06),
      child: Container(
        alignment: Alignment.center,
        height: screenSize.height * 0.07,
        width: screenSize.width * 0.9,
        child: ElevatedButton.icon(
          label: const Text('Save',style: TextStyle(fontSize: 20),),
          // onPressed: audioController.isPlaying.value
          //     ? audioController.pausePlayback
          //     : audioController.playRecording,
          onPressed: () {
          createReminder();
          Get.to(() => ReminderView());
          },
          // Handle audio recording
          style: ElevatedButton.styleFrom(
            shadowColor: Colors.black,
            elevation: 15,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            foregroundColor: Colors.white, backgroundColor: Colors.blueGrey, // Text color
          ),
        ),
      ),
    );
  }

  void createReminder() {
    Map<String, dynamic> createReminderDic = <String, dynamic>{};
    createReminderDic[MyApp.appEngine.databaseManager.columnReminderTableTitle] = addReminderController.titleController.text.toString();
    createReminderDic[MyApp.appEngine.databaseManager.columnReminderTableDescription] = addReminderController.text.value.toString();
    createReminderDic[MyApp.appEngine.databaseManager.columnReminderTableDate] =  addReminderController.selectedDate.value.toString();
    createReminderDic[MyApp.appEngine.databaseManager.columnReminderTableTime] =  addReminderController.selectedTime.value.toString();
    createReminderDic[MyApp.appEngine.databaseManager.columnReminderTableRecoding] = audioController.recordingPath.value.toString();
    MyApp.appEngine.databaseManager.insertOneRowInTable(createReminderDic, MyApp.appEngine.databaseManager.tableReminderList);

  }


}
