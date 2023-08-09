import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_map/widgets/home_categories.dart';
import 'package:shop_map/widgets/most_visited.dart';
import 'package:shop_map/widgets/nearby_shops.dart';
import 'package:shop_map/widgets/offers_carousal.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8,),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(
                            fontFamily: 'Brand Bold',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Sub Title', style: TextStyle(color: Colors.grey, fontFamily: 'Poppins'),),
                      ],
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.notifications),),
                  ],
                ),
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.all(8),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Search', style: TextStyle(fontFamily: 'Poppins'),),
                      Icon(CupertinoIcons.search),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                OffersCarousel(),
                SizedBox(height: 15,),
                HomeCategories(),
                SizedBox(height: 15,),
                MostVisited(),
                SizedBox(height: 15,),
                NearbyShops(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
