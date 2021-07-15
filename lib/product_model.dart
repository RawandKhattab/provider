import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductModel {
  String name;
  num price;
  String imageUrl;
  bool isFavorite;
  ProductModel({
    @required this.name,
    @required this.price,
    @required this.imageUrl,
    this.isFavorite = false,
  });
}
