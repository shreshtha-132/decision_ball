import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything')),
          backgroundColor: Colors.blue,
        ),
        body: rollBall(),
      ),
    ),
  );
}

class rollBall extends StatefulWidget {
  // const rollBall({Key? key}) : super(key: key);

  @override
  _rollBallState createState() => _rollBallState();
}

class _rollBallState extends State<rollBall> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: TextButton(
          onPressed: () {
            setState(() {
              number = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$number.png'),
        ),
      ),
    );
  }
}
