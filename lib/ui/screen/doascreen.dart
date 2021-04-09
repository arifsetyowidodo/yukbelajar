import 'package:flutter/material.dart';
import 'package:yukbelajar/ui/screen/doa/doamakan.dart';
import 'package:yukbelajar/ui/screen/doa/doamasukrumah.dart';
import 'package:yukbelajar/ui/screen/doa/doasesudahmakan.dart';
import 'package:yukbelajar/ui/screen/hewanscreen.dart';
import 'package:yukbelajar/ui/screen/tebakanscreen.dart';

class doascreen extends StatefulWidget {
  doascreen({Key key}) : super(key: key);
  @override
  _doascreen createState() => _doascreen();
}

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

int _favoriteCount = 0;

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = false;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount = _favoriteCount - 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            padding: EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        // SizedBox(
        //   width: 18,
        //   child: Container(
        //     child: Text('$_favoriteCount'),
        //   ),
        // ),
      ],
    );
  }
}

class _doascreen extends State<doascreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doa Sehari-hari'),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('$_favoriteCount', textAlign: TextAlign.center),
            ],
          ),

          //Text('$_favoriteCount', textAlign: TextAlign.center),
          IconButton(icon: Icon(Icons.star), onPressed: null),
        ],
      ),
      body: Container(
          padding: EdgeInsets.only(top: 15),
          child: ListView(
            children: <Widget>[
              SizedBox(
                width: 18,
                child: Container(),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => doamakan()),
                  );
                },
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                    child: Row(
                      children: <Widget>[
                        Image(
                            image:
                                AssetImage('assets/images/angka/angka01.png'),
                            width: 100,
                            height: 100),
                        Text('Doa Sebelum Makan'),
                        FavoriteWidget()
                      ],
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => doasesudahmakan()),
                  );
                },
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                    child: Row(
                      children: <Widget>[
                        Image(
                            image:
                                AssetImage('assets/images/angka/angka02.png'),
                            width: 100,
                            height: 100),
                        Text('Doa Sesudah Makan'),
                        FavoriteWidget()
                      ],
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => doamasukrumah()),
                  );
                },
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                    child: Row(
                      children: <Widget>[
                        Image(
                            image:
                                AssetImage('assets/images/angka/angka03.png'),
                            width: 100,
                            height: 100),
                        Text('Doa Masuk Rumah'),
                        FavoriteWidget()
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
