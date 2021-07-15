import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskprovider/my_provider.dart';
import 'package:taskprovider/product_model.dart';

class ProductsWidget extends StatelessWidget {
  ProductModel productModel;
  int index;
  bool favouriteWidget;
  ProductsWidget(this.productModel, this.index, [this.favouriteWidget = false]);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(10),
      child: Stack(
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              productModel.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 180,
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Provider.of<MyProvider>(context, listen: false)
                        .addToFavourite(index);
                  },
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white.withOpacity(0.3),
                    child: Icon(
                      Icons.favorite,
                      size: 40,
                      color:
                          productModel.isFavorite ? Colors.red : Colors.black,
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    color: Colors.white.withOpacity(0.4),
                    child: Text(
                      productModel.name,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
