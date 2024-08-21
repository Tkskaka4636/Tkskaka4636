import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminder2/view/reminderview.dart';
import 'package:reminder2/view/reqardreminderview.dart';
import '../controller/homecontroller.dart';
import 'addcardview.dart';
import 'addreminderview.dart';
import 'cardview.dart';

class HomeView extends StatelessWidget {
  late Size screenSize;
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashbord'),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.blueGrey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'WELCOME :> TEEKAM SINGH',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: 10),
                timeDate(context),
                SizedBox(height: 30),
                reminderCard(context),
                SizedBox(height: 20),
                GestureDetector(
                    onTap: (){Get.to(RequiredReminderScreen());},
                    child: _buildPlanCard('Plan: Free')),
                SizedBox(height: 20),
                addReminderCard(context),
                const SizedBox(height: 20),
                const Center(
                  child: Text('All Copyrights Reminder'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCard(String title, String count, Color color) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: color.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.blueGrey, // Border color
          width: 5.0, // Border width
        ),
      ),
      child: Stack(
        children: [
          if (count.isNotEmpty)
            Positioned(
              top: 8,
              right: 8,
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.green[200],
                child: Text(count),
              ),
            ),
          Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlanCard(String plan) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blueGrey, // Border color
          width: 5.0, // Border width
        ),
        gradient: LinearGradient(
          colors: [Colors.orange, Colors.yellow],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          plan,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  Widget reminderCard(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(
          left: screenSize.width * 0.02, top: screenSize.height * 0.03),
      child: Container(
          alignment: Alignment.center,
          height: screenSize.height * 0.2,
          width: screenSize.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: (){
                    Get.to(ReminderView());
                  },
                  child: _buildCard('Reminder', '14', Colors.blue)),
              GestureDetector(
                  onTap: (){
                    Get.to(CardView());
                  },
                  child: _buildCard('Card', '10', Colors.blue)),
            ],
          ),
      ),
    );
  }

  Widget addReminderCard(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(
          left: screenSize.width * 0.02, top: screenSize.height * 0.03),
      child: Container(
        alignment: Alignment.center,
        height: screenSize.height * 0.2,
        width: screenSize.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: (){Get.to(AddReminderScreen());},
                child: _buildCard('R : 05\nReminder', '', Colors.green)),
            GestureDetector(
                onTap: (){Get.to(AddCardScreen());},
                child: _buildCard('R : 10\nCard', '', Colors.green)),
          ],
        ),
      ),
    );
  }

  Widget timeDate(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(
          left: screenSize.width * 0.0, top: screenSize.height * 0.03),
      child: Container(
        alignment: Alignment.center,
        height: screenSize.height * 0.08,
        width: screenSize.width * 0.95,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            color: Colors.blueGrey, // Border color
            width: 5.0, // Border width
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() => Text(
              '${homeController.date}',
              style: TextStyle(fontSize: 24),
            )),
            Obx(() => Text(
              ' ${homeController.time}',
              style: TextStyle(fontSize: 24),
            )),
          ],
        ),
      ),
    );
  }

}
