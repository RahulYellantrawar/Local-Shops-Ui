import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Shop with ChangeNotifier {
  String id;
  String shopName;
  String shopImage;
  List shopItems;
  String category;
  List<String>? subCategory;
  int visits;
  double rating;
  int discount;
  String timings;
  String reviews;
  String ownerName;
  int mobileNo;
  String emailId;
  double distance;

  Shop({
    required this.id,
    required this.shopName,
    required this.shopImage,
    required this.shopItems,
    required this.category,
    this.subCategory,
    required this.visits,
    required this.rating,
    required this.discount,
    required this.timings,
    required this.reviews,
    required this.ownerName,
    required this.mobileNo,
    required this.emailId,
    required this.distance,
  });
}
