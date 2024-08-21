import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:reminder2/view/carddetialview.dart';
import '../controller/cardviewcontroller.dart';

class CardView extends StatelessWidget {
  final cardViewController = Get.put(CardViewController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Card"),
      ),
      backgroundColor: Colors.blueGrey[200],
      body: Stack(
        children: [
          Column(
            children: [
              cardList(context),
            ],
          )
        ],
      ),
    );
  }

  Widget cardList(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemCount: cardViewController.cardArray.length,
        itemBuilder: cardAdapter,
      ),
    );
  }

  Widget cardAdapter(BuildContext context,int index ) {
    return Padding(
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
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width:  MediaQuery.of(context).size.width*0.67,
                                // color: Colors.red,
                                // alignment: Alignment.centerLeft,
                                child: Text(
                                  cardViewController.cardArray[index]['text'].toString(),
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
                                  cardViewController.cardArray[index]['Date'].toString(),
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
                                  cardViewController.cardArray[index]['Description'].toString(),
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
                                  cardViewController.cardArray[index]['Time'].toString(),
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
                                  cardViewController.cardArray[index]['Type'].toString(),
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
                                  child: Icon(Icons.volume_up)
                              ),
                            ],
                          ),
                        ],
                      ),

                    ]
                ),
              ],
            ),
          ),
        ),
        onTap: () {
          // jumpToUserDetail(index);
          Get.to(CardDetialView());
        },
      ),
    );
  }


}
