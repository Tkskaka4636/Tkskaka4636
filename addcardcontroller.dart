import 'dart:io';

import 'package:cunning_document_scanner/cunning_document_scanner.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddCArdController extends GetxController{
  final TextEditingController titleController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController fexController = TextEditingController();
  final TextEditingController companyController = TextEditingController();
  final TextEditingController addersController = TextEditingController();

  var imageFile = Rx<File?>(null);
  var scannedImagePath = ''.obs;
  final ImagePicker picker = ImagePicker();
  final ImagePicker _picker = ImagePicker();
  late List<String> pickedFile;
  var pictures = <String>[].obs;

  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      imageFile.value = File(pickedFile.path);
    }
  }

  Future<void> takePhoto() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      imageFile.value = File(pickedFile.path);
    }
  }

  Future<void> scanDocument(ImageSource source)
  async {
    try {
      List<String>? scannedPictures = await CunningDocumentScanner.getPictures();
      if (scannedPictures != null) {
        pictures.assignAll(scannedPictures);
      }
    } catch (exception) {
      // Handle exception here
      print("Error scanning document: $exception");
    }
  }
}
  // async {
  //
  //   try {
  //     final pickedFile = await CunningDocumentScanner.getPictures() ?? [];
  //     if (pickedFile != null) {
  //       scannedImagePath.value = pickedFile as String;
  //     }
  //   } catch (e) {
  //     print("Error scanning document: $e");
  //   }
  // }

