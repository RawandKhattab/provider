import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductModel {
  int id;
  String name;
  num price;
  String imageUrl;
  bool isFavorite;

  ProductModel({
    @required this.id,
    @required this.name,
    @required this.price,
    @required this.imageUrl,
    this.isFavorite = false,
  });
}
