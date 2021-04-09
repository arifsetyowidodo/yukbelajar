import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class wwarnascreen extends StatefulWidget {
  @override
  _warnascreen createState() => new _warnascreen();
}

class _warnascreen extends State<wwarnascreen> {
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

  Widget _btn(VoidCallback onPressed) {
    return ButtonTheme(
        minWidth: 85.0,
        child: FlatButton(child: Text(''), onPressed: onPressed));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Belajar Warna'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              color: Colors.blue[300],
              child: _btn(
                () => audioCache.play('audio/warna/biru.mp3'),
              ),
            ),
            Container(
              color: Colors.black87,
              child: _btn(
                () => audioCache.play('audio/warna/hitam.mp3'),
              ),
            ),
            Container(
              color: Colors.red,
              child: _btn(
                () => audioCache.play('audio/warna/merah.mp3'),
              ),
            ),
            Container(
              color: Colors.yellow[300],
              child: _btn(
                () => audioCache.play('audio/warna/kuning.mp3'),
              ),
            ),
            Container(
              color: Colors.green[300],
              child: _btn(
                () => audioCache.play('audio/warna/hijau.mp3'),
              ),
            ),
            Container(
              color: Colors.orange[300],
              child: _btn(
                () => audioCache.play('audio/warna/oren.mp3'),
              ),
            ),
            Container(
              color: Colors.purple[300],
              child: _btn(
                () => audioCache.play('audio/warna/ungu.mp3'),
              ),
            ),
            Container(
              color: Colors.white,
              child: _btn(
                () => audioCache.play('audio/warna/putih.mp3'),
              ),
            ),
            Container(
              color: Colors.pinkAccent,
              child: _btn(
                () => audioCache.play('audio/warna/pink.mp3'),
              ),
            ),
            Container(
              color: Colors.brown,
              child: _btn(
                () => audioCache.play('audio/warna/coklat.mp3'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
