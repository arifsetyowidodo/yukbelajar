import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yukbelajar/ui/screen/angkascreen.dart';
import 'package:yukbelajar/ui/screen/bendascreen.dart';
import 'package:yukbelajar/ui/screen/doascreen.dart';
import 'package:yukbelajar/ui/screen/hewanscreen.dart';
import 'package:yukbelajar/ad/ad_manager.dart';
import 'package:yukbelajar/ui/screen/kendaraanscreen.dart';
import 'package:yukbelajar/ui/screen/warnascreen.dart';
//import 'package:firebase_admob/firebase_admob.dart';

class homescreen extends StatefulWidget {
  homescreen({Key key}) : super(key: key);
  @override
  _homescreen createState() => _homescreen();
}

class _homescreen extends State<homescreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // Future<void> _initAdMob() {
  //   return FirebaseAdMob.instance.initialize(appId: AdManager.appId);
  // }
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Index 0: Business',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 1: Business',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 2: School',
  //     style: optionStyle,
  //   ),
  // ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  // TODO: Banner AD
  // BannerAd _bannerAd;

  // void _loadBannerAd() {
  //   void _loadBannerAd() {
  //     _bannerAd
  //       ..load()
  //       ..show(anchorType: AnchorType.top);
  //   }
  // }

  //@override
  // void initState() {
  //   _bannerAd = BannerAd(
  //     adUnitId: AdManager.bannerAdUnitId,
  //     size: AdSize.banner,
  //   );
  //   _loadBannerAd();
  // }

  // void dispose() {
  //   _bannerAd?.dispose();
  //   super.dispose();
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Yuk Belajar')),
      body: Container(
          padding: EdgeInsets.only(top: 25),
          child: ListView(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => doascreen()),
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
                                AssetImage('assets/images/hewan/icon/doa.png'),
                            width: 100,
                            height: 100),
                        Text('Doa Sehari-hari')
                      ],
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => angkascreen()),
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
                            image: AssetImage(
                                'assets/images/hewan/icon/angka.png'),
                            width: 100,
                            height: 100),
                        Text('Menggenal Angka')
                      ],
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => wwarnascreen()),
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
                            image: AssetImage(
                                'assets/images/warna/warna-icon.png'),
                            width: 100,
                            height: 100),
                        Text('Menggenal Warna')
                      ],
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => hewanscreen()),
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
                            image: AssetImage(
                                'assets/images/hewan/icon/hewan.png'),
                            width: 100,
                            height: 100),
                        Text('Menggenal Hewan')
                      ],
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => kendaraanscreen()),
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
                                AssetImage('assets/images/kendaraan/bus.png'),
                            width: 100,
                            height: 100),
                        Text('Menggenal Kendaraan')
                      ],
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => bendascreen()),
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
                            image: AssetImage('assets/images/benda/bola.png'),
                            width: 100,
                            height: 100),
                        Text('Menggenal Benda')
                      ],
                    ),
                  ),
                ),
              ),
              /* RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => tebakanscreen()),
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
                            image: AssetImage(
                                'assets/images/hewan/icon/tebakan.png'),
                            width: 100,
                            height: 100),
                        Text('Temukan Pasangan')
                      ],
                    ),
                  ),
                ),
              ),

              */
            ],
          )),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.question_answer),
      //       label: 'Tebakan',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.school),
      //       label: 'School',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.amber[800],
      //   onTap: _onItemTapped,
      // ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                //nav cak
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
