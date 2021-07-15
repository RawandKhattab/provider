import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:taskprovider/my_provider.dart';
import 'package:taskprovider/products_widjet.dart';

void main() {
  runApp(ChangeNotifierProvider<MyProvider>(
      create: (context) => MyProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Products"),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.home),
                ),
                Tab(
                    child: Icon(
                  Icons.favorite,
                ))
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                // width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: Provider.of<MyProvider>(context).products.length,
                    itemBuilder: (context, index) {
                      return ProductsWidget(
                          Provider.of<MyProvider>(context).products[index],
                          index);
                    }),
              ),
              Container(
                // width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: Provider.of<MyProvider>(context)
                        .favouriteProducts
                        .length,
                    itemBuilder: (context, index) {
                      return ProductsWidget(
                          Provider.of<MyProvider>(context)
                              .favouriteProducts[index],
                          index,
                          true);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
