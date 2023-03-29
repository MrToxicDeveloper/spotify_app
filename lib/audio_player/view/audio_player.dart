import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/audio_model.dart';
import '../provider/audio_provider.dart';

class AudioPlayer extends StatefulWidget {
  const AudioPlayer({Key? key}) : super(key: key);

  @override
  State<AudioPlayer> createState() => _AudioPlayerState();
}


// @override
// void initState() {
//   super.initState();
//
//
//
// }

class _AudioPlayerState extends State<AudioPlayer> {

@override
  void initState() {
    super.initState();
    Provider.of<AudioProvider>(context, listen: false).load();
  }
  AudioProvider? ProTrue;
  AudioProvider? ProFalse;

  @override
  Widget build(BuildContext context) {
    ProTrue = Provider.of<AudioProvider>(context, listen: true);
    ProFalse = Provider.of<AudioProvider>(context, listen: false);
    Model m1 = ModalRoute.of(context)!.settings.arguments as Model;


    // Model? m1;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1d1d26),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.white12, blurRadius: 10),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(
                      "${m1.Image}",
                      height: 250,
                      width: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 225,
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.black45,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // IconButton(
                        //     onPressed: () {},
                        //     icon: ProTrue!.mute == true
                        //         ? Icon(
                        //       Icons.mic,
                        //       color: Colors.white,
                        //       size: 60,
                        //     )
                        //         : Icon(
                        //       Icons.mic_off,
                        //       color: Colors.white,
                        //       size: 60,
                        //     )),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.skip_previous,
                            size: 60,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            ProFalse!.playOrPause();
                          },
                          icon: ProTrue!.icon == true
                              ? Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 60,
                          )
                              : Icon(
                            Icons.pause,
                            color: Colors.white,
                            size: 60,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.skip_next,
                            size: 60,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    PlayerBuilder.currentPosition(
                      player: ProFalse!.audioplayer!,
                      builder: (context, position) => Container(
                        child: Slider(
                          value: position.inSeconds.toDouble(),
                          max: ProTrue!.totalD.inSeconds
                              .toDouble(),
                          inactiveColor: Colors.white38,
                          activeColor: Colors.white,
                          onChanged: (value) {
                            ProFalse!.audioplayer!.seek(Duration(seconds: value.toInt()));
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}