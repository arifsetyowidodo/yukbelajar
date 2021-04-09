import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class hewanscreen extends StatefulWidget {
  @override
  _hewanscreen createState() => new _hewanscreen();
}

class _hewanscreen extends State<hewanscreen> {
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
          title: Text('Mengenal Hewan'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              color: Colors.red[100],
              child: _btn(
                'assets/images/hewan/anjing.png',
                () => audioCache.play('audio/hewan/anjing.mp3'),
              ),
            ),
            Container(
              color: Colors.green[100],
              child: _btn(
                'assets/images/hewan/kodok.png',
                () => audioCache.play('audio/hewan/kodok.mp3'),
              ),
            ),
            Container(
              color: Colors.blue[100],
              child: _btn(
                'assets/images/hewan/ayam-jantan.png',
                () => audioCache.play('audio/hewan/ayam-jantan.mp3'),
              ),
            ),
            Container(
              color: Colors.yellow[100],
              child: _btn(
                'assets/images/hewan/babi.png',
                () => audioCache.play('audio/hewan/babi.mp3'),
              ),
            ),
            Container(
              color: Colors.red[100],
              child: _btn(
                'assets/images/hewan/bebek.png',
                () => audioCache.play('audio/hewan/bebek.mp3'),
              ),
            ),
            Container(
              color: Colors.green[100],
              child: _btn(
                'assets/images/hewan/beruang.png',
                () => audioCache.play('audio/hewan/beruang.mp3'),
              ),
            ),
            Container(
              color: Colors.blue[100],
              child: _btn(
                'assets/images/hewan/buaya.png',
                () => audioCache.play('audio/hewan/buaya.mp3'),
              ),
            ),
            Container(
              color: Colors.yellow[100],
              child: _btn(
                'assets/images/hewan/jerapah.png',
                () => audioCache.play('audio/hewan/jerapah.mp3'),
              ),
            ),
            Container(
              color: Colors.red[100],
              child: _btn(
                'assets/images/hewan/kambing.png',
                () => audioCache.play('audio/hewan/kambing.mp3'),
              ),
            ),
            Container(
              color: Colors.green[100],
              child: _btn(
                'assets/images/hewan/kucing.png',
                () => audioCache.play('audio/hewan/kucing.mp3'),
              ),
            ),
            Container(
              color: Colors.blue[100],
              child: _btn(
                'assets/images/hewan/kuda.png',
                () => audioCache.play('audio/hewan/kuda.mp3'),
              ),
            ),
            Container(
              color: Colors.yellow[100],
              child: _btn(
                'assets/images/hewan/rusa.png',
                () => audioCache.play('audio/hewan/rusa.mp3'),
              ),
            ),
            Container(
              color: Colors.red[100],
              child: _btn(
                'assets/images/hewan/sapi.png',
                () => audioCache.play('audio/hewan/sapi.mp3'),
              ),
            ),
            Container(
              color: Colors.green[100],
              child: _btn(
                'assets/images/hewan/srigala.png',
                () => audioCache.play('audio/hewan/serigala.mp3'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
