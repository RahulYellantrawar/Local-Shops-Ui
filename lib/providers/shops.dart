import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:shop_map/providers/shop.dart';

enum SortingCriteria { visits, ratings, distance }

class Shops with ChangeNotifier {
  List<Shop> shopItems = [
    Shop(
      id: 's1',
      shopName: 'SV Electronics',
      shopImage:
          'https://content3.jdmagicbox.com/comp/thane/c1/022pxx22.xx22.130426170856.c4c1/catalogue/top-10-mobile-shop-kalyan-city-thane-mobile-phone-dealers-903m6.jpg?clr=',
      shopItems: ['Mobiles', 'Headphones', 'Chargers'],
      subCategory: ['Mobiles'],
      category: 'Electronics',
      visits: 151,
      rating: 3.8,
      discount: 15,
      timings: '9:00AM to 10:00PM',
      reviews: 'All Items will available here. Even the old ones',
      ownerName: 'Srinivas',
      mobileNo: 1234567890,
      emailId: 'abc@gmail.com',
      distance: 0.2,
    ),
    Shop(
      id: 's1',
      shopName: 'BN Electronics',
      shopImage:
          'https://content3.jdmagicbox.com/comp/thane/c1/022pxx22.xx22.130426170856.c4c1/catalogue/top-10-mobile-shop-kalyan-city-thane-mobile-phone-dealers-903m6.jpg?clr=',
      shopItems: ['Mobiles', 'Headphones', 'Chargers'],
      subCategory: ['Mobiles Services'],
      category: 'Electronics',
      visits: 151,
      rating: 3.8,
      discount: 15,
      timings: '9:00AM to 10:00PM',
      reviews: 'All Items will available here. Even the old ones',
      ownerName: 'Srinivas',
      mobileNo: 1234567890,
      emailId: 'abc@gmail.com',
      distance: 0.2,
    ),
    Shop(
      id: 's2',
      shopName: 'SVF Fashions',
      shopImage:
          'https://images.unsplash.com/photo-1567401893414-76b7b1e5a7a5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2xvdGhlcyUyMHNob3B8ZW58MHx8MHx8fDA%3D&w=1000&q=80',
      shopItems: ['Menswear', 'ladies wear', 'Kids-wear'],
      category: 'Cloths',
      subCategory: ['Menswear', 'Ladies wear', 'Kids-wear'],
      visits: 123,
      rating: 4.5,
      discount: 25,
      timings: '9:00AM to 10:00PM',
      reviews: 'All Items will available here. Even the old ones',
      ownerName: 'Srinivas',
      mobileNo: 1234567890,
      emailId: 'abc@gmail.com',
      distance: 0.9,
    ),
    Shop(
      id: 's3',
      shopName: 'Kaka Hotel',
      shopImage:
          'https://b.zmtcdn.com/data/pictures/1/19014221/5038987e2a5264ae7f0ad51bb07c8d06.jpg',
      shopItems: ['Tea', 'Coffee'],
      category: 'Hotels & Restaurants',
      subCategory: ['Tea stall'],
      visits: 200,
      rating: 4.8,
      discount: 5,
      timings: '9:00AM to 10:00PM',
      reviews: 'All Items will available here. Even the old ones',
      ownerName: 'Srinivas',
      mobileNo: 1234567890,
      emailId: 'abc@gmail.com',
      distance: 0.3,
    ),
    Shop(
      id: 's4',
      shopName: 'JD Electronics',
      shopImage:
          'https://i.pinimg.com/736x/ea/55/f1/ea55f1fdf3d97cfbf975b4f38935a000.jpg',
      shopItems: ['TV\'s', 'Laptop', 'Refrigerator'],
      category: 'Electronics',
      subCategory: ["TV's", 'Laptops & Computers', 'Refrigerator' ],
      visits: 98,
      rating: 4.5,
      discount: 20,
      timings: '9:00AM to 10:00PM',
      reviews: 'All Items will available here. Even the old ones',
      ownerName: 'Srinivas',
      mobileNo: 1234567890,
      emailId: 'abc@gmail.com',
      distance: 0.5,
    ),
    Shop(
      id: 's5',
      shopName: 'A1 Saloon',
      shopImage:
          'https://content.jdmagicbox.com/comp/visakhapatnam/i7/0891px891.x891.180908124223.s7i7/catalogue/raju-salon-shop-visakhapatnam-qepgwhh2zo.jpg',
      shopItems: [
        'Haircut',
        'Shave',
      ],
      category: 'Beauty Salon',
      subCategory: ['Male'],
      visits: 185,
      rating: 3,
      discount: 20,
      timings: '9:00AM to 10:00PM',
      reviews: 'All Items will available here. Even the old ones',
      ownerName: 'Srinivas',
      mobileNo: 1234567890,
      emailId: 'abc@gmail.com',
      distance: 1.2,
    ),
    Shop(
      id: 's6',
      shopName: 'Khan Fruits',
      shopImage:
          'https://images.unsplash.com/photo-1609780447631-05b93e5a88ea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJ1aXQlMjBzaG9wfGVufDB8fDB8fHww&w=1000&q=80',
      shopItems: ['Apples', 'Banana', 'Mango'],
      category: 'Fruits',
      visits: 420,
      rating: 4.2,
      discount: 10,
      timings: '9:00AM to 10:00PM',
      reviews: 'All Items will available here. Even the old ones',
      ownerName: 'Srinivas',
      mobileNo: 1234567890,
      emailId: 'abc@gmail.com',
      distance: 1,
    ),
    Shop(
      id: 's7',
      shopName: 'Hollywood Footwear',
      shopImage:
          'https://content3.jdmagicbox.com/comp/hyderabad/94/040pf003094/catalogue/hollywood-footwear-abids-hyderabad-leather-safety-shoe-dealers-ekt3jwes0p.jpg',
      shopItems: ['Chappals', 'Shoes', 'Sneakers'],
      category: 'Footwear',
      visits: 142,
      rating: 3.8,
      discount: 15,
      timings: '9:00AM to 10:00PM',
      reviews: 'All Items will available here. Even the old ones',
      ownerName: 'Srinivas',
      mobileNo: 1234567890,
      emailId: 'abc@gmail.com',
      distance: 0.6,
    ),
    Shop(
      id: 's8',
      shopName: 'Flowers',
      shopImage:
          'https://mobile-cuisine.com/wp-content/uploads/2021/12/c8a8cf28e2bc418808f2488043aac2e2.jpg',
      shopItems: ['All types of Flowers available'],
      category: 'Flowers',
      visits: 168,
      rating: 4.8,
      discount: 15,
      timings: '9:00AM to 10:00PM',
      reviews: 'All Items will available here. Even the old ones',
      ownerName: 'Srinivas',
      mobileNo: 1234567890,
      emailId: 'abc@gmail.com',
      distance: 0.8,
    ),
    Shop(
      id: 's9',
      shopName: 'SV Pharmacy',
      shopImage:
          'https://www.calwinhospitals.in/wp-content/uploads/2022/06/Calwin-24-Hour-Pharmacy-.jpg',
      shopItems: ['Open 24/7'],
      category: 'Pharmacy',
      visits: 225,
      rating: 4.5,
      discount: 10,
      timings: '9:00AM to 10:00PM',
      reviews: 'All Items will available here. Even the old ones',
      ownerName: 'Srinivas',
      mobileNo: 1234567890,
      emailId: 'abc@gmail.com',
      distance: 0.4,
    ),
    Shop(
      id: 's10',
      shopName: 'Saraswathy Stationary',
      shopImage:
          'https://content.jdmagicbox.com/comp/bangalore/u7/080pxx80.xx80.180316121455.z3u7/catalogue/prabhu-international-stationery-shop-koramangala-bangalore-stationery-shops-ez62ovb3xm.jpg?clr=',
      shopItems: ['Books', 'Pens', 'Novels'],
      category: 'Books & Stationary',
      visits: 245,
      rating: 4.2,
      discount: 10,
      timings: '9:00AM to 10:00PM',
      reviews: 'All Items will available here. Even the old ones',
      ownerName: 'Srinivas',
      mobileNo: 1234567890,
      emailId: 'abc@gmail.com',
      distance: 0.8,
    ),
  ];

  List<Shop> filterShops(
      {String? category,
      List<Category>? subCategory,
      required SortingCriteria sortingCriteria}) {
    var filteredShops = [...shopItems];
    if (category != null) {
      filteredShops = filteredShops.where((shop) {
        final categoryMatch = shop.category == category;
        final subCategoryMatch = shop.subCategory == null ||
            subCategory!.any(shop.subCategory!.contains) == true;
        print('Shop: ${shop.shopName}, category match: $categoryMatch, subCategoryMatch: $subCategoryMatch');
        return categoryMatch && subCategoryMatch;
      }).toList();
    }
    filteredShops.sort((a, b) {
      switch (sortingCriteria) {
        case SortingCriteria.visits:
          return b.visits.compareTo(a.visits);
        case SortingCriteria.ratings:
          return b.rating.compareTo(a.rating);
        case SortingCriteria.distance:
          return a.distance.compareTo(b.distance);
        default:
          return 0;
      }
    });
    return filteredShops;
  }

  // List<Shop> getItems(SortingCriteria sortingCriteria) {
  //   switch (sortingCriteria) {
  //     case SortingCriteria.visits:
  //       shopItems.sort((a, b) => b.visits.compareTo(a.visits));
  //       break;
  //     case SortingCriteria.ratings:
  //       shopItems.sort((a, b) => b.rating.compareTo(a.rating));
  //       break;
  //     case SortingCriteria.distance:
  //       shopItems.sort((a, b) => a.distance.compareTo(b.distance));
  //       break;
  //   }
  //   return [...shopItems];
  // }

  Shop findById(String id) {
    return shopItems.firstWhere((prod) => prod.id == id);
  }
}
