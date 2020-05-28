import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomeState();
  }
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(
          'Circular Progress Example',
          style: TextStyle(
            fontSize: 30.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              child: CircularProgressIndicator(
                backgroundColor: Colors.orange,
                valueColor: AlwaysStoppedAnimation(Colors.yellow),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 200,
              height: 200,
              child: Text(
                'Loading',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
