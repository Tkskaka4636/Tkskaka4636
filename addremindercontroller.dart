import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class AddReminderController extends GetxController{
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  DateTime selectedDates = DateTime.now();
  DateTime selectedTimes = DateTime.now();

  var text = ''.obs;
  var isListening = false.obs;
  late stt.SpeechToText _speech;

  var selectedDate = ''.obs;
  final DateFormat dateFormat = DateFormat('dd, MM, yyyy');
  var selectedTime = ''.obs;
  final DateFormat timeFormat = DateFormat('hh:mm a'); // 12-hour format with AM/PM

  Future<void> selectTime(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      final DateTime now = DateTime.now();
      final DateTime fullTime = DateTime(
        now.year,
        now.month,
        now.day,
        pickedTime.hour,
        pickedTime.minute,
      );
      selectedTime.value = timeFormat.format(fullTime);
    }
  }

  Future<void> selectDate(BuildContext context) async {
  DateTime? pickedDate = await showDatePicker(
  context: context,
  initialDate: DateTime.now(),
  firstDate: DateTime(2000),
  lastDate: DateTime(2101),
  );

  if (pickedDate != null) {
  selectedDate.value = dateFormat.format(pickedDate);
  }
  }


  void startListening() async {
    bool available = await _speech.initialize();
    if (available) {
      isListening.value = true;
      _speech.listen(onResult: (val) {
        text.value = val.recognizedWords;
      });
    }
  }

  void stopListening() {
    _speech.stop();
    isListening.value = false;
  }

  @override
  void onInit() {
    super.onInit();
    _speech = stt.SpeechToText();
  }

  void listen() async {
    if (!_speech.isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
      );
      if (available) {
        _speech.listen(
          onResult: (val) {
            text.value = val.recognizedWords;
          },
        );
        isListening.value = true;
      }
    } else {
      _speech.stop();
      isListening.value = false;
    }
  }



}