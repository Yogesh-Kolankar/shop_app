import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shop_app/intro_page.dart';

class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      reload();
    });

    Timer(Duration(seconds: 8), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => IntroPage()));
    });
  }

  void reload() {
    setState(() {
      IsFirst = false;
    });
  }

  bool IsFirst = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedCrossFade(
      duration: Duration(seconds: 5),
      crossFadeState:
          IsFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      firstChild: Center(
        child: Container(
          height: 300,
          width: 300,
        ),
      ),
      sizeCurve: Curves.fastOutSlowIn,
      secondChild: Center(
        child: Container(
          child: Center(
              child: Image.asset(
            'lib/images/groceries.jpg',
            height: 200,
            width: 200,
          )),
        ),
      ),
    ));
  }
}
