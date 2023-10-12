import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  List items = [
    ["Milk", '10.00', 'lib/images/milk.png'],
    ["Banana", "20.00", "lib/images/banana2.png"],
    ["Bread", "12.00", "lib/images/bread.png"],
    ['Jam', '30.00', "lib/images/jam.png"],
    ["Sause", "20.00", "lib/images/sause.png"],
    ["Cheeze", "50.00", "lib/images/cheeze.png"],
    ["Egg", "20.00", "lib/images/download.jpg"],
    ["Butter", "20.00", "lib/images/butter.jpg"],
  ];

  List cartItems = [];

  void add(int index) {
    cartItems.add(items[index]);
    notifyListeners();
  }

  void Remove(int index) {
    cartItems.removeAt(index);
    notifyListeners();
  }

  String Calculate() {
    double Price = 0;

    for (int i = 0; i < cartItems.length; i++) {
      Price += double.parse(cartItems[i][1]);
    }
    return Price.toStringAsFixed(2);
  }
}
