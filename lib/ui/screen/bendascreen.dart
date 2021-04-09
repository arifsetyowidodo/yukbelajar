import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class bendascreen extends StatefulWidget {
  @override
  _bendascreen createState() => new _bendascreen();
}

class _bendascreen extends State<bendascreen> {
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
          title: Text('Mengenal Benda'),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            Container(
              color: Colors.red[100],
              child: _btn(
                'assets/images/benda/bola.png',
                () => audioCache.play('audio/benda/bola.mp3'),
              ),
            ),
            Container(
              color: Colors.green[100],
              child: _btn(
                'assets/images/benda/buku.png',
                () => audioCache.play('audio/benda/buku.mp3'),
              ),
            ),
            Container(
              color: Colors.blue[100],
              child: _btn(
                'assets/images/benda/cincin.png',
                () => audioCache.play('audio/benda/cincin.mp3'),
              ),
            ),
            Container(
              color: Colors.yellow[100],
              child: _btn(
                'assets/images/benda/hp.png',
                () => audioCache.play('audio/benda/hp.mp3'),
              ),
            ),
            Container(
              color: Colors.red[100],
              child: _btn(
                'assets/images/benda/jam.png',
                () => audioCache.play('audio/benda/jam.mp3'),
              ),
            ),
            Container(
              color: Colors.green[100],
              child: _btn(
                'assets/images/benda/kipas-angin.png',
                () => audioCache.play('audio/benda/kipas-angin.mp3'),
              ),
            ),
            Container(
              color: Colors.blue[100],
              child: _btn(
                'assets/images/benda/komputer.png',
                () => audioCache.play('audio/benda/komputer.mp3'),
              ),
            ),
            Container(
              color: Colors.yellow[100],
              child: _btn(
                'assets/images/benda/lemari.png',
                () => audioCache.play('audio/benda/lemari.mp3'),
              ),
            ),
            Container(
              color: Colors.red[100],
              child: _btn(
                'assets/images/benda/meja.png',
                () => audioCache.play('audio/benda/meja.mp3'),
              ),
            ),
            Container(
              color: Colors.green[100],
              child: _btn(
                'assets/images/benda/penggaris.png',
                () => audioCache.play('audio/benda/penggaris.mp3'),
              ),
            ),
            Container(
              color: Colors.blue[100],
              child: _btn(
                'assets/images/benda/piring.png',
                () => audioCache.play('audio/benda/piring.mp3'),
              ),
            ),
            Container(
              color: Colors.yellow[100],
              child: _btn(
                'assets/images/benda/roda.png',
                () => audioCache.play('audio/benda/roda.mp3'),
              ),
            ),
            Container(
              color: Colors.red[100],
              child: _btn(
                'assets/images/benda/rumah.png',
                () => audioCache.play('audio/benda/rumah.mp3'),
              ),
            ),
            Container(
              color: Colors.green[100],
              child: _btn(
                'assets/images/benda/sapu.png',
                () => audioCache.play('audio/benda/sapu.mp3'),
              ),
            ),
            Container(
              color: Colors.blue[100],
              child: _btn(
                'assets/images/benda/setrika.png',
                () => audioCache.play('audio/benda/setrika.mp3'),
              ),
            ),
            Container(
              color: Colors.green[100],
              child: _btn(
                'assets/images/benda/tv.png',
                () => audioCache.play('audio/benda/tv.mp3'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
