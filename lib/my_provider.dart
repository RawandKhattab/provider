import 'package:flutter/material.dart';
import 'package:taskprovider/product_model.dart';

class MyProvider extends ChangeNotifier {
  List<ProductModel> products = [
    ProductModel(
        imageUrl:
            'https://www.gardendesign.com/pictures/images/675x529Max/site_3/helianthus-yellow-flower-pixabay_11863.jpg',
        name: 'عباد الشمس',
        price: 35),
    ProductModel(
        imageUrl: 'https://i.ebayimg.com/images/g/mdYAAOSwB9Fb0KrU/s-l400.jpg',
        name: 'عباد الشمس',
        price: 40),
    ProductModel(
        imageUrl:
            'https://www.birdsandblooms.com/wp-content/uploads/2017/05/DahliaThomasEdison.jpg?fit=628,416',
        name: 'عباد الشمس',
        price: 20),
    ProductModel(
        imageUrl:
            'https://pbs.twimg.com/profile_images/883859744498176000/pjEHfbdn.jpg',
        name: 'عباد الشمس',
        price: 28),
    ProductModel(
        imageUrl:
            'https://images.pexels.com/photos/736230/pexels-photo-736230.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        name: 'عباد الشمس',
        price: 31),
    ProductModel(
        imageUrl:
            'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/peony-flower-background-royalty-free-image-492863943-1548707918.jpg',
        name: 'عباد الشمس',
        price: 55),
  ];
}
