import 'dart:io';

import 'package:get/get.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:just_audio/just_audio.dart';
import 'package:permission_handler/permission_handler.dart';

class AudioController extends GetxController {
  final FlutterSoundRecorder _recorder = FlutterSoundRecorder();
  var isRecorderInitialized = false.obs;
  var isRecording = false.obs;
  var recordingPath = ''.obs;
  final AudioPlayer player = AudioPlayer();
  var isPlaying = false.obs;

  @override
  void onInit() {
    super.onInit();
    initRecorder();
  }

  Future<void> initRecorder() async {
    final status = await Permission.microphone.request();
    if (status != PermissionStatus.granted) {
      throw RecordingPermissionException('Microphone permission not granted');
    }

    await _recorder.openRecorder();
    isRecorderInitialized.value = true;
  }

  Future<void> startRecording() async {
    if (!isRecorderInitialized.value) return;
    if (await Permission.microphone.request().isGranted) {
      final directory = await Directory.systemTemp.createTemp();
      recordingPath.value = '${directory.path}/audio.aac';
      await _recorder.startRecorder(toFile: recordingPath.value);
      isRecording.value = true;
    }
  }

  Future<void> stopRecording() async {
    if (!isRecorderInitialized.value) return;

    await _recorder.stopRecorder();
    isRecording.value = false;
  }

  Future<void> playRecording() async {
    if (File(recordingPath.value).existsSync()) {
      await player.setFilePath(recordingPath.value);
      player.play();
      isPlaying.value = true;
    }
  }

  void pausePlayback() {
    player.pause();
    isPlaying.value = false;
  }

  void stopPlayback() {
    player.stop();
    isPlaying.value = false;
  }


  @override
  void onClose() {
      _recorder.closeRecorder();
    super.onClose();
  }
}
