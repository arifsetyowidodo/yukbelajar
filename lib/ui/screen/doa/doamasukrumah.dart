import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class doamasukrumah extends StatefulWidget {
  @override
  _doamasukrumahState createState() => new _doamasukrumahState();
}

class _doamasukrumahState extends State<doamasukrumah> {
  AudioCache audioCache = new AudioCache();
  AudioPlayer advancedPlayer = new AudioPlayer();
  String localFilePath;

  Widget _tab(List<Widget> children) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: children
              .map((w) => Container(child: w, padding: EdgeInsets.all(6.0)))
              .toList(),
        ),
      ),
    );
  }

  Widget _btn(String txt, VoidCallback onPressed) {
    return ButtonTheme(
        minWidth: 48.0,
        child: FlatButton(
            child: Image(
              image: AssetImage(txt),
              height: 50,
            ),
            onPressed: onPressed));
  }

  Widget localAsset() {
    return _tab([
      Text("Doa Masuk Rumah", style: TextStyle(height: 3, fontSize: 20)),
      Image(image: AssetImage("assets/images/doa/masukrumah.jpg")),
      Text(
          'Allâhumma innî as’aluka khairal mauliji wa khairal makhraji bismillâhi walajnâ wa bismillâhi kharajnâ wa ‘ala-Llâhi rabbinâ tawakkalnâ',
          style: TextStyle(fontStyle: FontStyle.italic)),
      Text(''),
      Text(
        'Duhai Allah, aku memohon sebaik-baik tempat masuk dan sebaik-baik tempat keluar. Atas nama-Mu kami masuk dan atas nama-Mu kami keluar. Dan kepada Allah Tuhan kamilah kami bertawakal',
      ),
      Text(''),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _btn("assets/images/doa/play.png",
              () => audioCache.play('audio/doa/masukrumah.mp3')),
          _btn("assets/images/doa/pause.png", () => advancedPlayer.pause()),
          _btn("assets/images/doa/stop.png", () => advancedPlayer.stop()),
        ],
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Doa Masuk Rumah'),
        ),
        body: TabBarView(
          children: [localAsset()],
        ),
      ),
    );
  }
}
