import 'package:flutter/material.dart';

class LastScreen extends StatelessWidget {
  const LastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        color: Colors.blue.shade600,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset("lib/images/bike-ride.gif"),
      ),
      Positioned(
        top: 100,
        left: 25,
        child: Text(
          "The Item Will Deliver Soon",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    ]));
  }
}
