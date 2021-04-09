import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class angkascreen extends StatefulWidget {
  @override
  _angkascreen createState() => new _angkascreen();
}

class _angkascreen extends State<angkascreen> {
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
        minWidth: 85.0,
        child: FlatButton(
            child: Image.asset(txt), height: 85, onPressed: onPressed));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Belajar Angka'),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            Container(
              color: Colors.red[100],
              child: _btn(
                'assets/images/angka/angka_00.png',
                () => audioCache.play('audio/angka/0.mp3'),
              ),
            ),
            Container(
              color: Colors.green[100],
              child: _btn(
                'assets/images/angka/angka_01.png',
                () => audioCache.play('audio/angka/1.mp3'),
              ),
            ),
            Container(
              color: Colors.blue[100],
              child: _btn(
                'assets/images/angka/angka_02.png',
                () => audioCache.play('audio/angka/2.mp3'),
              ),
            ),
            Container(
              color: Colors.blue[100],
              child: _btn(
                'assets/images/angka/angka_03.png',
                () => audioCache.play('audio/angka/3.mp3'),
              ),
            ),
            Container(
              color: Colors.red[100],
              child: _btn(
                'assets/images/angka/angka_04.png',
                () => audioCache.play('audio/angka/4.mp3'),
              ),
            ),
            Container(
              color: Colors.green[100],
              child: _btn(
                'assets/images/angka/angka_05.png',
                () => audioCache.play('audio/angka/5.mp3'),
              ),
            ),
            Container(
              color: Colors.green[100],
              child: _btn(
                'assets/images/angka/angka_06.png',
                () => audioCache.play('audio/angka/6.mp3'),
              ),
            ),
            Container(
              color: Colors.blue[100],
              child: _btn(
                'assets/images/angka/angka_07.png',
                () => audioCache.play('audio/angka/7.mp3'),
              ),
            ),
            Container(
              color: Colors.red[100],
              child: _btn(
                'assets/images/angka/angka_08.png',
                () => audioCache.play('audio/angka/8.mp3'),
              ),
            ),
            Container(
              color: Colors.red[100],
              child: _btn(
                'assets/images/angka/angka_09.png',
                () => audioCache.play('audio/angka/9.mp3'),
              ),
            ),
            Container(
              color: Colors.green[100],
              child: _btn(
                'assets/images/angka/angka_10.png',
                () => audioCache.play('audio/angka/10.mp3'),
              ),
            ),
            Container(
              color: Colors.blue[100],
              child: _btn(
                'assets/images/angka/angka_11.png',
                () => audioCache.play('audio/angka/11.mp3'),
              ),
            ),
            Container(
              color: Colors.green[100],
              child: _btn(
                'assets/images/angka/angka_12.png',
                () => audioCache.play('audio/angka/12.mp3'),
              ),
            ),
            Container(
              color: Colors.blue[100],
              child: _btn(
                'assets/images/angka/angka_13.png',
                () => audioCache.play('audio/angka/13.mp3'),
              ),
            ),
            Container(
              color: Colors.red[100],
              child: _btn(
                'assets/images/angka/angka_14.png',
                () => audioCache.play('audio/angka/14.mp3'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
