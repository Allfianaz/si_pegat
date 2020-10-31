import 'package:flutter/material.dart';
import 'dart:async';
import 'package:si_pegat/screens/login_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }
  // void initState() {
  //   super.initState();
  //   startSplashScreen();
  // }

  // startSplashScreen() async {
  //   var _duration = new Duration(seconds: 3);
  //   return Timer(_duration, () {
  //     Navigator.of(context).pushReplacement(
  //       MaterialPageRoute(
  //         builder: (context) => LoginPage(),
  //       ),
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.orange[900],
              Colors.orange[700],
              Colors.orange[500]
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 40.0,
                          child: Icon(
                            Icons.search,
                            color: Colors.orange,
                            size: 40,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Si-Pegat",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Text(
                        "Sistem Pencarian Guru Privat",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      // CircularProgressIndicator(backgroundColor: Colors.white),
                      CircularProgressIndicator(
                        backgroundColor: Colors.orange,
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
