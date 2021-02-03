import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    BallApp(),
  );
}

class BallApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ask me anything"),
          centerTitle: true,
          backgroundColor: Color(0xFF00008B),
        ),
        body: BallAppBody(),
        backgroundColor: Colors.lightBlue,
      ),
    );
  }
}

class BallAppBody extends StatefulWidget {
  BallAppBody({Key key}) : super(key: key);

  @override
  _BallAppBodyState createState() => _BallAppBodyState();
}

class _BallAppBodyState extends State<BallAppBody> {
  @override
  int randVal = 1;
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Image.asset('images/ball$randVal.png'),
        onTap:() {
          setState((){
            randVal=Random().nextInt(5)+1;
            }
          );

        },
        ),
    );
  }
}
