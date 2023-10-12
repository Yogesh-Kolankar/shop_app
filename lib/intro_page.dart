import 'package:flutter/material.dart';
import 'package:shop_app/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset('lib/images/shopping_cart.png')),
        const Text("We Deliver Groceries at your door",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            )),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Fresh Items Everyday",
          style: TextStyle(fontSize: 20),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const HomePage();
            }));
          },
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(12)),
              child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Let's Shop",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))),
        ),
        const Spacer()
      ]),
    );
  }
}
