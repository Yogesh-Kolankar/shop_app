import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/cart_page.dart';
import 'package:shop_app/cartmodel.dart';
import 'package:shop_app/items_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<CartModel>(context);
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const CartScreen();
              },
            ));
          },
          child: const Icon(Icons.shopping_bag),
        ),
        appBar: AppBar(
          title: const Text("Shop App"),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Very Good Morning, ",
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("let's Buy fresh items for you ",
                  style: TextStyle(fontSize: 50))),
          const SizedBox(height: 10),
          const Divider(
            thickness: 2,
          ),
          const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Fresh Items ....",
                style: TextStyle(fontSize: 20),
              )),
          Expanded(child: Consumer<CartModel>(builder: (context, value, child) {
            return GridView.builder(
                itemCount: value.items.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return ItemsTile(
                    itemName: value.items[index][0],
                    itemsPrice: value.items[index][1],
                    imagePath: value.items[index][2],
                    Pressed: () {
                      //state.cartItems.add(index);
                      Provider.of<CartModel>(context, listen: false).add(index);
                    },
                  );
                });
          })),
        ]));
  }
}
