import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminder2/view/subcrapionview.dart';

class ReqardCardView extends StatelessWidget {
  late Size screenSize;
  String dropdownValue = '00';

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Required Reminder'),
      ),
      backgroundColor: Colors.blueGrey[200],
      body: Padding(
        padding:  EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            totalContainer(context),
            moreContainer(context),
            newContainer(context),
            buyContainer(context),
            orContainer(context),
            SizedBox(height: 20),
            tackPlaneContainer(context),
          ],
        ),
      ),
    );
  }

  Widget totalContainer(BuildContext context){
    return Padding(
      padding:  EdgeInsets.only(top: screenSize.height*0.03),
      child: Container(
        alignment: Alignment.center,
        height: screenSize.height * 0.2,
        width: screenSize.width * 0.9,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blueGrey, // Border color
            width: 5.0, // Border width
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: screenSize.height * 0.06,
              width: screenSize.width * 0.9,
              alignment: Alignment.centerLeft,
              child: Text(
                'Total Card : 14',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              height: screenSize.height * 0.06,
              width: screenSize.width * 0.9,
              alignment: Alignment.centerLeft,
              child: Text(
                'Remaining : 02',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget moreContainer(BuildContext context){
    return Padding(
      padding:  EdgeInsets.only(top: screenSize.height*0.02),
      child: Container(
        alignment: Alignment.centerLeft,
        height: screenSize.height * 0.05,
        width: screenSize.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Text(
          'More Card Required',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
  Widget newContainer(BuildContext context){
    return Padding(
      padding:  EdgeInsets.only(top: screenSize.height*0.01),
      child: Container(
        alignment: Alignment.center,
        height: screenSize.height * 0.08,
        width: screenSize.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: [
            Text(
              'New Card',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(width: 10),
            // DropdownButton<String>(
            //   value: dropdownValue,
            //   items: <String>['00', '01', '02', '03', '04']
            //       .map<DropdownMenuItem<String>>((String value) {
            //     return DropdownMenuItem<String>(
            //       value: value,
            //       child: Text(value),
            //     );
            //   }).toList(),
            // ),
          ],
        ),
      ),
    );
  }
  Widget buyContainer(BuildContext context){
    return Padding(
      padding:  EdgeInsets.only(top: screenSize.height*0.02),
      child: Container(
        alignment: Alignment.center,
        height: screenSize.height * 0.08,
        width: screenSize.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Container(
          alignment: Alignment.center,
          height: screenSize.height * 0.07,
          width: screenSize.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),),
          child: ElevatedButton(
            child: Text(' BUY NOW ',style: TextStyle(fontSize: 20),),
            onPressed: () {
              // Handle buy action
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.blueGrey, // Text color
            ),
          ),
        ),
      ),
    );
  }
  Widget orContainer(BuildContext context){
    return Padding(
      padding:  EdgeInsets.only(top: screenSize.height*0.03),
      child: Container(
        alignment: Alignment.center,
        height: screenSize.height * 0.08,
        width: screenSize.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            'OR',
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
  Widget tackPlaneContainer(BuildContext context){
    return Padding(
      padding:  EdgeInsets.only(top: screenSize.height*0.0),
      child: Container(
        alignment: Alignment.center,
        height: screenSize.height * 0.08,
        width: screenSize.width * 0.9,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Container(
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: () {
              // Handle tack plane action
              Get.to(SubscriptionPage());
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.blueGrey, // Text color
            ),
            child: const Text(' Tack Plane ',style: TextStyle(fontSize: 20),),
          ),
        ),
      ),
    );
  }
}
