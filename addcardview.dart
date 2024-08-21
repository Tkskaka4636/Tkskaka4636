import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:image_picker/image_picker.dart';
import '../controller/addcardcontroller.dart';
import '../main.dart';

class AddCardScreen extends StatelessWidget {
  late Size screenSize;
  final addCardViewController = Get.put(AddCArdController());

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Add Card'),
      ),
      backgroundColor: Colors.blueGrey[200],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title(context),
            name(context),
            email(context),
            phone(context),
            company(context),
            fex(context),
            address(context),
            or(context),
            scanCard(context),
            card(context),
            const SizedBox(height: 20),
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
          style: TextStyle(color: Colors.black),
          controller: addCardViewController.titleController,
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
  Widget name(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: screenSize.width * 0.05, top: screenSize.height * 0.025),
      child: Container(
        alignment: Alignment.center,
        height: screenSize.height * 0.059,
        width: screenSize.width * 0.9,
        child: TextFormField(
          cursorColor: Colors.blue,
          style: TextStyle(color: Colors.black),
          controller: addCardViewController.nameController,
          keyboardType: TextInputType.name,
          decoration: const InputDecoration(
              labelText: "Name",
              labelStyle: TextStyle(color: Colors.black),
              hintText: "Name",
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
  Widget email(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: screenSize.width * 0.05, top: screenSize.height * 0.025),
      child: Container(
        alignment: Alignment.center,
        height: screenSize.height * 0.059,
        width: screenSize.width * 0.9,
        child: TextFormField(
          cursorColor: Colors.blue,
          style: TextStyle(color: Colors.black),
          controller: addCardViewController.emailController,
          keyboardType: TextInputType.name,
          decoration: const InputDecoration(
              labelText: "Email",
              labelStyle: TextStyle(color: Colors.black),
              hintText: "Email",
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
  Widget phone(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: screenSize.width * 0.05, top: screenSize.height * 0.025),
      child: Container(
        alignment: Alignment.center,
        height: screenSize.height * 0.059,
        width: screenSize.width * 0.9,
        child: TextFormField(
          cursorColor: Colors.blue,
          style: TextStyle(color: Colors.black),
          controller: addCardViewController.phoneController,
          keyboardType: TextInputType.name,
          decoration: const InputDecoration(
              labelText: "Phone",
              labelStyle: TextStyle(color: Colors.black),
              hintText: "Phone",
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
  Widget company(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: screenSize.width * 0.05, top: screenSize.height * 0.025),
      child: Container(
        alignment: Alignment.center,
        height: screenSize.height * 0.059,
        width: screenSize.width * 0.9,
        child: TextFormField(
          cursorColor: Colors.blue,
          style: TextStyle(color: Colors.black),
          controller: addCardViewController.companyController,
          keyboardType: TextInputType.name,
          decoration: const InputDecoration(
              labelText: "Company",
              labelStyle: TextStyle(color: Colors.black),
              hintText: "Company",
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
  Widget fex(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: screenSize.width * 0.05, top: screenSize.height * 0.025),
      child: Container(
        alignment: Alignment.center,
        height: screenSize.height * 0.059,
        width: screenSize.width * 0.9,
        child: TextFormField(
          cursorColor: Colors.blue,
          style: TextStyle(color: Colors.black),
          controller: addCardViewController.fexController,
          keyboardType: TextInputType.name,
          decoration: const InputDecoration(
              labelText: "Fex ",
              labelStyle: TextStyle(color: Colors.black),
              hintText: "Fex ",
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
  Widget address(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: screenSize.width * 0.05, top: screenSize.height * 0.025),
      child: Container(
        alignment: Alignment.center,
        height: screenSize.height * 0.059,
        width: screenSize.width * 0.9,
        child: TextFormField(
          cursorColor: Colors.blue,
          style: TextStyle(color: Colors.black),
          controller: addCardViewController.addersController,
          keyboardType: TextInputType.name,
          decoration: const InputDecoration(
              labelText: "Address",
              labelStyle: TextStyle(color: Colors.black),
              hintText: "Address",
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
  Widget or(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: screenSize.width * 0.05, top: screenSize.height * 0.02),
      child: Container(
          alignment: Alignment.center,
          height: screenSize.height * 0.06,
          width: screenSize.width * 0.9,
          child: Text('Or',style: TextStyle(fontSize: 40),)
      ),
    );
  }
  Widget scanCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: screenSize.width * 0.05, top: screenSize.height * 0.04),
      child: Container(
          alignment: Alignment.center,
          height: screenSize.height * 0.06,
          width: screenSize.width * 0.9,
        child: ElevatedButton.icon(
          icon: const Icon(Icons.camera_alt),
          label: const Text('Scan Card'),
          onPressed: () {
            showImageSourceDialog(context);
          }
        ),
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
        height: screenSize.height*0.35,
        width: screenSize.width*0.9,
        child:
        Obx(() {
          if (addCardViewController.pictures.isEmpty) {
            return const Center(child: Text("No pictures selected."));
          } else {
            return Column(
              children: addCardViewController.pictures.map((picture) {
                return Padding(
                  padding: const EdgeInsets.all(.0),
                  child: Image.file(
                    File(picture),
                    fit: BoxFit.fill,
                    height: screenSize.height*0.337,
                    width: screenSize.width*0.9, // Stretch the image to fill the width
                  ),
                );
              }).toList(),
            );
          }
        }),
        // Obx(() {
        //   if (addCardViewController.imageFile.value != null) {
        //     return Container(
        //       height: screenSize.height*0.3,
        //       width: screenSize.width*0.9,
        //       decoration: BoxDecoration(
        //         image: DecorationImage(
        //           image: addCardViewController.pictures
        //               .map((picture) => Image.file(File(picture))).toList()
        //           fit: BoxFit.fill,
        //         ),
        //       ),
        //     );
        //   } else {
        //     return Text('');
        //   }
        // }),
      ),
    );
  }

  void createCard() {
    Map<String, dynamic> createCardDic = <String, dynamic>{};
    createCardDic[MyApp.appEngine.databaseManager.columnCardTableTitle] = addCardViewController.titleController.value;
    createCardDic[MyApp.appEngine.databaseManager.columnCardTableName] = addCardViewController.nameController.value;
    createCardDic[MyApp.appEngine.databaseManager.columnCardTablePhone] =addCardViewController.phoneController.value;
    createCardDic[MyApp.appEngine.databaseManager.columnCardTableEmail] = addCardViewController.emailController.value;
    createCardDic[MyApp.appEngine.databaseManager.columnCardTableAdders] = addCardViewController.addersController.value;
    createCardDic[MyApp.appEngine.databaseManager.columnCardTableCompany] = addCardViewController.companyController.value;
    createCardDic[MyApp.appEngine.databaseManager.columnCardTableFex] = addCardViewController.fexController.value;
    createCardDic[MyApp.appEngine.databaseManager.columnCardTableScanCard] = addCardViewController.imageFile.value!;
    MyApp.appEngine.databaseManager.insertOneRowInTable(createCardDic, MyApp.appEngine.databaseManager.tableCardList);


  }

  void showImageSourceDialog(BuildContext context) {
    Get.defaultDialog(
      title: 'Select Image Source',
      content: Column(
        children: [
          ListTile(
            leading: Icon(Icons.camera_alt),
            title: Text('Camera'),
            onTap: () {
              addCardViewController.scanDocument(ImageSource.camera);
              Get.back(); // Close the dialog
            },
          ),
          ListTile(
            leading: Icon(Icons.photo_library),
            title: Text('Gallery'),
            onTap: () {
              addCardViewController.scanDocument(ImageSource.gallery);
              Get.back(); // Close the dialog
            },
          ),
        ],
      ),
    );
  }

}

