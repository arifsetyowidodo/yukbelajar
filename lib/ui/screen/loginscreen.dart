import 'package:flutter/material.dart';
import 'package:yukbelajar/ui/screen/homescreen.dart';
import 'package:yukbelajar/ui/screen/registerscreen.dart';

class loginscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 150.0,
                  child: Image.asset("assets/images/logo.png",
                      fit: BoxFit.contain),
                ),
                TextField(
                  decoration: new InputDecoration(
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                      hintText: "email"),
                  autofocus: true,
                ),
                TextField(
                  decoration: new InputDecoration(
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                      hintText: "Password"),
                  autofocus: true,
                ),
                RaisedButton(
                  textColor: Colors.white,
                  color: Color(0xFF6200EE),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => homescreen()),
                    );
                  },
                  child: Text('Login'),
                ),
                FlatButton(
                  textColor: Color(0xFF6200EE),
                  onPressed: () {
                    // Respond to button press
                  },
                  child: Text("lupa password"),
                ),
                FlatButton(
                  textColor: Color(0xFF6200EE),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => registerscreen()),
                    );
                  },
                  child: Text("belum punya akun?"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
