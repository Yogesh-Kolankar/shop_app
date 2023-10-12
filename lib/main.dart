import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/cartmodel.dart';
import 'package:shop_app/intro_page.dart';
import 'package:shop_app/lastScreen.dart';
import 'package:shop_app/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CartModel(),
        child: MaterialApp(
            title: "Shop App",
            debugShowCheckedModeBanner: false,
            theme: ThemeData(primarySwatch: Colors.purple),
            home: Splash()));
  }
}
