import 'package:flutter/material.dart';
import 'package:yukbelajar/ui/screen/angkascreen.dart';

class tebakanscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Apa yaa?';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 15),
          child: ListView(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => angkascreen()),
                  );
                },
                child: Card(
                  elevation: 10,
                  child: Image(
                      image:
                          AssetImage('assets/images/hewan/tebakan/macan.png'),
                      width: 1000,
                      height: 300),
                ),
              ),
              Text('Ayo tebak makanannya',
                  textAlign: TextAlign.center,
                  style: TextStyle(height: 3, fontSize: 28)),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Image(
                        image: AssetImage(
                            'assets/images/hewan/tebakan/daging.png'),
                        width: 100,
                        height: 100),
                  ),
                  Expanded(
                    child: Image(
                        image:
                            AssetImage('assets/images/hewan/tebakan/nanas.png'),
                        width: 100,
                        height: 100),
                  ),
                  Expanded(
                    child: Image(
                        image: AssetImage(
                            'assets/images/hewan/tebakan/rumput.png'),
                        width: 100,
                        height: 100),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
