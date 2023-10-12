import 'package:flutter/material.dart';

class ItemsTile extends StatelessWidget {
  String itemName;
  String itemsPrice;
  String imagePath;
  Function() Pressed;

  ItemsTile(
      {super.key, required this.itemName,
      required this.itemsPrice,
      required this.imagePath,
      required this.Pressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(8)),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        GestureDetector(
          onTap: Pressed,
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.brown, borderRadius: BorderRadius.circular(8)),
              child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Text(
                    "MRP $itemsPrice",
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ))),
        ),
        Image.asset(
          imagePath,
          height: 100,
        ),
        Text(
          itemName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ]),
    );
  }
}
