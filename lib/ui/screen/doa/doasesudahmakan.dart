import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class doasesudahmakan extends StatefulWidget {
  @override
  _doasesudahmakanState createState() => new _doasesudahmakanState();
}

class _doasesudahmakanState extends State<doasesudahmakan> {
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
      Text("Doa Sesudah Makan", style: TextStyle(height: 3, fontSize: 20)),
      Image(image: AssetImage("assets/images/doa/sesudahmakan.jpg")),
      Text(
          'Alhamdu lillaahil ladzii ath\'amanaa wa saqoonaa wa ja\'alanaa minal muslimiin',
          style: TextStyle(fontStyle: FontStyle.italic)),
      Text(''),
      Text(
        'Segala puji bagi Allah yang telah memberi kami makan dan minum, Serta menjadikan kami termasuk golongan orang-orang muslim',
      ),
      Text(''),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _btn("assets/images/doa/play.png",
              () => audioCache.play('audio/doa/sesudahmakan.mp3')),
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
          title: Text('Doa Sesudah Makan'),
        ),
        body: TabBarView(
          children: [localAsset()],
        ),
      ),
    );
  }
}
