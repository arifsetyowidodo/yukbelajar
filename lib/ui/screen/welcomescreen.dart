import 'package:flutter/material.dart';
import 'package:yukbelajar/ui/screen/loginscreen.dart';
import 'package:yukbelajar/ui/screen/registerscreen.dart';

class welcomescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff72D7FF),
      body: Center(
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150.0,
                  child: Image.asset("assets/images/logo.png",
                      fit: BoxFit.contain),
                ),
                Row(
                  children: [],
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RaisedButton(
                        textColor: Colors.white,
                        color: Color(0xFF6200EE),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => loginscreen()),
                          );
                        },
                        child: Text('Login'),
                      ),
                      RaisedButton(
                        textColor: Colors.white,
                        color: Color(0xFF6200EE),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => registerscreen()),
                          );
                        },
                        child: Text('Register'),
                      )
                    ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _signInButton() {
  return OutlineButton(
    splashColor: Colors.grey,
    onPressed: () {},
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    highlightElevation: 0,
    borderSide: BorderSide(color: Colors.grey),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
              image: AssetImage("assets/images/google_logo.png"), height: 35.0),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Sign in with Google',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    ),
  );
}
