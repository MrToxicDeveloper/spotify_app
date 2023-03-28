import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:spotify_app/audio_player/model/audio_model.dart';

class AudioProvider extends ChangeNotifier {
  bool icon = true;
  bool mute = true;

  String? Song;

  AssetsAudioPlayer? audioplayer;

  void load() {
    audioplayer = AssetsAudioPlayer();
    audioplayer!
        .open(Audio("${Song}"), autoStart: false, showNotification: true);
  }

  Future<void> playOrPause() async {
    await audioplayer!.playOrPause();
    icon == true ? icon = false : icon = true;
    notifyListeners();
  }
}
