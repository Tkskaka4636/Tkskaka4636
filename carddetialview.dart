import 'package:flutter/material.dart';

class CardDetialView extends StatelessWidget {
   CardDetialView({super.key});
   late Size screenSize;

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("Remindeer Detial"),
        ),
        backgroundColor: Colors.blueGrey[200],
        body:SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  title(context),
                  name(context),
                  email(context),
                  phone(context),
                  company(context),
                  fex(context),
                  adders(context),
                  scanCard(context),
                  card(context),
                  space(context),
                ],
              )
            ],
          ),
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
        alignment: Alignment.centerLeft,
        height: screenSize.height*0.07,
        width: screenSize.width*0.9,
        child: Text('Birthday Party',style: TextStyle(fontSize: 20),),
      ),
    );
  }
   Widget name(BuildContext context){
     return Padding(
       padding:  EdgeInsets.only(top: screenSize.height*0.02,left: screenSize.width*0.05),
       child: Container(
         decoration: BoxDecoration(
           border: Border.all(
             color: Colors.blueGrey, // Border color
             width: 5.0, // Border width
           ),
         ),
         alignment: Alignment.centerLeft,
         height: screenSize.height*0.07,
         width: screenSize.width*0.9,
         child: Text('Name :',style: TextStyle(fontSize: 20),),
       ),
     );
   }
   Widget email(BuildContext context){
     return Padding(
       padding:  EdgeInsets.only(top: screenSize.height*0.02,left: screenSize.width*0.05),
       child: Container(
         decoration: BoxDecoration(
           border: Border.all(
             color: Colors.blueGrey, // Border color
             width: 5.0, // Border width
           ),
         ),
         alignment: Alignment.centerLeft,
         height: screenSize.height*0.07,
         width: screenSize.width*0.9,
         child: Text("Email : ",style: TextStyle(fontSize: 20),),
       ),
     );
   }
   Widget phone(BuildContext context){
     return Padding(
       padding:  EdgeInsets.only(top: screenSize.height*0.02,left: screenSize.width*0.05),
       child: Container(
         decoration: BoxDecoration(
           border: Border.all(
             color: Colors.blueGrey, // Border color
             width: 5.0, // Border width
           ),
         ),
         alignment: Alignment.centerLeft,
         height: screenSize.height*0.07,
         width: screenSize.width*0.9,
         child: Text('Phone : ',style: TextStyle(fontSize: 20),),
       ),
     );
   }
   Widget company(BuildContext context){
     return Padding(
       padding:  EdgeInsets.only(top: screenSize.height*0.02,left: screenSize.width*0.05),
       child: Container(
         decoration: BoxDecoration(
           border: Border.all(
             color: Colors.blueGrey, // Border color
             width: 5.0, // Border width
           ),
         ),
         alignment: Alignment.centerLeft,
         height: screenSize.height*0.07,
         width: screenSize.width*0.9,
         child: Text('Company : ',style: TextStyle(fontSize: 20),),
       ),
     );
   }
   Widget fex(BuildContext context){
     return Padding(
       padding:  EdgeInsets.only(top: screenSize.height*0.02,left: screenSize.width*0.05),
       child: Container(
         decoration: BoxDecoration(
           border: Border.all(
             color: Colors.blueGrey, // Border color
             width: 5.0, // Border width
           ),
         ),
         alignment: Alignment.centerLeft,
         height: screenSize.height*0.07,
         width: screenSize.width*0.9,
         child: Text('Fex : ',style: TextStyle(fontSize: 20),),
       ),
     );
   }
   Widget adders(BuildContext context){
     return Padding(
       padding:  EdgeInsets.only(top: screenSize.height*0.02,left: screenSize.width*0.05),
       child: Container(
         decoration: BoxDecoration(
           border: Border.all(
             color: Colors.blueGrey, // Border color
             width: 5.0, // Border width
           ),
         ),
         alignment: Alignment.centerLeft,
         height: screenSize.height*0.07,
         width: screenSize.width*0.9,
         child: Text('Adders : ',style: TextStyle(fontSize: 20),),
       ),
     );
   }
   Widget scanCard(BuildContext context){
     return Padding(
       padding:  EdgeInsets.only(top: screenSize.height*0.02,left: screenSize.width*0.05),
       child: Container(
         decoration: BoxDecoration(
         ),
         alignment: Alignment.centerLeft,
         height: screenSize.height*0.07,
         width: screenSize.width*0.9,
         child: Text('Scan Card :',style: TextStyle(fontSize: 20),),
       ),
     );
   }
   Widget card(BuildContext context){
     return Padding(
       padding:  EdgeInsets.only(top: screenSize.height*0.02,left: screenSize.width*0.05),
       child: Container(
         decoration: BoxDecoration(
           border: Border.all(
             color: Colors.blueGrey, // Border color
             width: 5.0, // Border width
           ),
         ),
         alignment: Alignment.centerLeft,
         height: screenSize.height*0.3,
         width: screenSize.width*0.9,
       ),
     );
   }
   Widget space(BuildContext context){
     return Padding(
       padding:  EdgeInsets.only(top: screenSize.height*0.02,left: screenSize.width*0.05),
       child: Container(
         decoration: BoxDecoration(
         ),
         alignment: Alignment.centerLeft,
         height: screenSize.height*0.03,
         width: screenSize.width*0.9,
       ),
     );
   }

}
