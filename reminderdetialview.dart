import 'package:flutter/material.dart';

class ReminderDetailView extends StatelessWidget {
   ReminderDetailView({super.key});
   late Size screenSize;
   late int selectedPracticePaper;
   late BuildContext buildContext;
  @override
  Widget build(BuildContext context) {
    buildContext = context;
    screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text("Reminder Detail"),
        ),
        backgroundColor: Colors.blueGrey[200],
        body:Stack(
          children: [
            Column(
              children: [
                title(context),
                subTitle(context),
                date(context),
                message(context),
                cancelAndUpdate(context),
              ],
            )
          ],
        )
    );
  }

  Widget title(BuildContext context){
    return Padding(
      padding:  EdgeInsets.only(top: screenSize.height*0.02,left: screenSize.width*0.05),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blueGrey, // Border color
            width: 5.0, // Border width
          ),
        ),
        alignment: Alignment.center,
        height: screenSize.height*0.1,
        width: screenSize.width*0.9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Birthday Party',style: TextStyle(fontSize: 20),),
            Text('9:53 PM',style: TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }

  Widget subTitle(BuildContext context){
    return Padding(
      padding:  EdgeInsets.only(top: screenSize.height*0.02,left: screenSize.width*0.05),
      child: Container(
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blueGrey, // Border color
            width: 5.0, // Border width
          ),
        ),
        height: screenSize.height*0.2,
        width: screenSize.width*0.9,
        child: Text('Teekam Singh  Birthday Party',style: TextStyle(fontSize: 20),),
      ),
    );
  }

  Widget date(BuildContext context){
    return Padding(
      padding:  EdgeInsets.only(top: screenSize.height*0.02,left: screenSize.width*0.05),
      child: Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blueGrey, // Border color
            width: 5.0, // Border width
          ),
        ),
        height: screenSize.height*0.1,
        width: screenSize.width*0.9,
        child: Text('20/08/2025',style: TextStyle(fontSize: 27),),
      ),
    );
  }

  Widget message(BuildContext context){
    return Padding(
      padding:  EdgeInsets.only(top: screenSize.height*0.02,left: screenSize.width*0.05),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blueGrey, // Border color
            width: 5.0, // Border width
          ),
        ),
        height: screenSize.height*0.1,
        width: screenSize.width*0.9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Message :',style: TextStyle(fontSize: 27),),
            Icon(Icons.volume_up,size: 40,)
          ],
        ),
      ),
    );
  }
  Widget cancelAndUpdate(BuildContext context){
    return Padding(
      padding:  EdgeInsets.only(top: screenSize.height*0.06,left: screenSize.width*0.05),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
        ),
        height: screenSize.height*0.1,
        width: screenSize.width*0.9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(
                  color: Colors.blueGrey, // Border color
                  width: 5.0, // Border width
                ),
              ),
              height: screenSize.height*0.1,
              width: screenSize.width*0.4,
              child: Text('Cancle',style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(
                  color: Colors.blueGrey, // Border color
                  width: 5.0, // Border width
                ),
              ),
              height: screenSize.height*0.1,
              width: screenSize.width*0.4,
              child: Text('Update',style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}
