import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:shop_app/cartmodel.dart";
import "package:shop_app/lastScreen.dart";

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('My Cart')),
        body: Consumer<CartModel>(
          builder: (context, value, child) {
            return Column(
              children: [
                Expanded(
                    child: value.cartItems.isEmpty
                        ? Center(
                            child: Text(
                              "No Item in the Cart!",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 40),
                            ),
                          )
                        : ListView.builder(
                            itemCount: value.cartItems.length,
                            itemBuilder: ((context, index) {
                              return Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(8)),
                                margin: EdgeInsets.all(12),
                                child: ListTile(
                                  leading: Image.asset(
                                    value.cartItems[index][2],
                                    height: 40,
                                  ),
                                  subtitle: Text(value.cartItems[index][1]),
                                  title: Text(
                                    value.cartItems[index][0],
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  trailing: IconButton(
                                    icon: Icon(
                                      Icons.delete_forever_outlined,
                                      size: 30,
                                      color: Colors.purple,
                                    ),
                                    onPressed: () {
                                      Provider.of<CartModel>(context,
                                              listen: false)
                                          .Remove(index);
                                    },
                                  ),
                                ),
                              );
                            }))),
                Container(
                  margin: EdgeInsets.all(8),
                  width: double.infinity,
                  child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Total Price',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("MRP " + value.Calculate(),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20))
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LastScreen()));
                            },
                            child: Text("Pay Now >"),
                          )
                        ],
                      )),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.purple,
                  ),
                )
              ],
            );
          },
        ));
  }
}
