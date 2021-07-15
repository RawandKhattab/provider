import 'package:flutter/material.dart';
import 'package:taskprovider/product_model.dart';

class MyProvider extends ChangeNotifier {
  List<ProductModel> favouriteProducts = [];
  setFavouriteProducts() {
    this.favouriteProducts =
        products.where((element) => element.isFavorite).toList();
    notifyListeners();
  }

  List<ProductModel> products = [
    ProductModel(
        id: 1,
        imageUrl:
            'https://www.gardendesign.com/pictures/images/675x529Max/site_3/helianthus-yellow-flower-pixabay_11863.jpg',
        name: 'عباد الشمس',
        price: 35),
    ProductModel(
        id: 2,
        imageUrl: 'https://i.ebayimg.com/images/g/mdYAAOSwB9Fb0KrU/s-l400.jpg',
        name: 'الوردة الزرقاء',
        price: 40),
    ProductModel(
        id: 3,
        imageUrl:
            'https://www.birdsandblooms.com/wp-content/uploads/2017/05/DahliaThomasEdison.jpg?fit=628,416',
        name: 'زهرة البنفسجاء',
        price: 20),
    ProductModel(
        id: 4,
        imageUrl:
            'https://pbs.twimg.com/profile_images/883859744498176000/pjEHfbdn.jpg',
        name: 'ورد الياسمين',
        price: 28),
    ProductModel(
        id: 5,
        imageUrl:
            'https://images.pexels.com/photos/736230/pexels-photo-736230.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        name: 'الوردة الزهرية ',
        price: 31),
    ProductModel(
        id: 6,
        imageUrl:
            'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/peony-flower-background-royalty-free-image-492863943-1548707918.jpg',
        name: 'ضممة ورد متنوعة',
        price: 55),
  ];
  addToFavourite(ProductModel productModel) {
    int index = products.indexOf(productModel);
    products[index].isFavorite = !products[index].isFavorite;
    setFavouriteProducts();
  }

  String text = 'initial value';
  changeTextValue(String value) {
    this.text = text;
    notifyListeners();
  }
}
