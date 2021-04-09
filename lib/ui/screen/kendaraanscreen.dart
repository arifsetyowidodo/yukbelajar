import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class kendaraanscreen extends StatefulWidget {
  @override
  _kendaraanscreen createState() => new _kendaraanscreen();
}

class _kendaraanscreen extends State<kendaraanscreen> {
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
          title: Text('Mengenal Kendaraan'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              color: Colors.red[100],
              child: _btn(
                'assets/images/kendaraan/ambulance.png',
                () => audioCache.play('audio/kendaraan/ambulan.mp3'),
              ),
            ),
            Container(
              color: Colors.green[100],
              child: _btn(
                'assets/images/kendaraan/bus.png',
                () => audioCache.play('audio/kendaraan/bus.mp3'),
              ),
            ),
            Container(
              color: Colors.blue[100],
              child: _btn(
                'assets/images/kendaraan/helicopter.png',
                () => audioCache.play('audio/kendaraan/helikopter.mp3'),
              ),
            ),
            Container(
              color: Colors.yellow[100],
              child: _btn(
                'assets/images/kendaraan/kapal.png',
                () => audioCache.play('audio/kendaraan/kapal.mp3'),
              ),
            ),
            Container(
              color: Colors.red[100],
              child: _btn(
                'assets/images/kendaraan/kapal-selam.png',
                () => audioCache.play('audio/kendaraan/kapal-selam.mp3'),
              ),
            ),
            Container(
              color: Colors.green[100],
              child: _btn(
                'assets/images/kendaraan/kereta.png',
                () => audioCache.play('audio/kendaraan/kereta.mp3'),
              ),
            ),
            Container(
              color: Colors.blue[100],
              child: _btn(
                'assets/images/kendaraan/mobil.png',
                () => audioCache.play('audio/kendaraan/mobil.mp3'),
              ),
            ),
            Container(
              color: Colors.yellow[100],
              child: _btn(
                'assets/images/kendaraan/pesawat.png',
                () => audioCache.play('audio/kendaraan/pesawat.mp3'),
              ),
            ),
            Container(
              color: Colors.red[100],
              child: _btn(
                'assets/images/kendaraan/roket.png',
                () => audioCache.play('audio/kendaraan/roket.mp3'),
              ),
            ),
            Container(
              color: Colors.green[100],
              child: _btn(
                'assets/images/kendaraan/sepeda.png',
                () => audioCache.play('audio/kendaraan/sepeda.mp3'),
              ),
            ),
            Container(
              color: Colors.blue[100],
              child: _btn(
                'assets/images/kendaraan/sepeda-motor.png',
                () => audioCache.play('audio/kendaraan/sepeda-motor.mp3'),
              ),
            ),
            Container(
              color: Colors.yellow[100],
              child: _btn(
                'assets/images/kendaraan/skuter.png',
                () => audioCache.play('audio/kendaraan/sekuter.mp3'),
              ),
            ),
            Container(
              color: Colors.red[100],
              child: _btn(
                'assets/images/kendaraan/tank.png',
                () => audioCache.play('audio/kendaraan/tank.mp3'),
              ),
            ),
            Container(
              color: Colors.green[100],
              child: _btn(
                'assets/images/kendaraan/taxi.png',
                () => audioCache.play('audio/kendaraan/taksi.mp3'),
              ),
            ),
            Container(
              color: Colors.green[100],
              child: _btn(
                'assets/images/kendaraan/traktor.png',
                () => audioCache.play('audio/kendaraan/traktor.mp3'),
              ),
            ),
            Container(
              color: Colors.blue[100],
              child: _btn(
                'assets/images/kendaraan/truk.png',
                () => audioCache.play('audio/kendaraan/truk.mp3'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
