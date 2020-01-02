import 'package:flutter/material.dart';
import 'dart:async';
import 'home.dart';

class splash extends StatefulWidget {
  @override
  _splash_state createState() => _splash_state();
}

class _splash_state extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
          children: <Widget>[
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                new Text(
                  "  DataQuest v0.1.5.0",
                  style: TextStyle(color: Colors.white),
                ),
                new Padding(padding: EdgeInsets.only(bottom: 50, left: 10))
              ],
            ),
            new Center(
              child: Image.asset(
                "assets/images/dataquest.png",
                width: 250,
              ),
            )
          ],
        ),
        backgroundColor: Color.fromARGB(255, 4, 60, 150));
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 5), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
  }
}
