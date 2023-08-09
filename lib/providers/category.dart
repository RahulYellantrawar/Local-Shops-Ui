import 'package:flutter/cupertino.dart';

class Category with ChangeNotifier {
  String catId;
  String catImage;
  String catName;
  List<Category>? subCategory;
  String? foodType;

  Category({
    required this.catId,
    required this.catImage,
    required this.catName,
    this.subCategory,
    this.foodType,
  });
}
