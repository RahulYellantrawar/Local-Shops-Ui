import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_map/screens/shop_detail.dart';
import 'package:shop_map/widgets/custom_divider.dart';

import '../providers/shop.dart';
import '../providers/shops.dart';

class ShopGrid extends StatelessWidget {
  final int index;
  final Shop? shop;

  const ShopGrid({super.key, required this.index, this.shop});

  @override
  Widget build(BuildContext context) {
    final shops = Provider.of<Shops>(context);
    // List<Shop> sortedItemsByVisits = shops.getItems(SortingCriteria.visits);
    return Card(
      elevation: 5,
      shadowColor: Colors.purple.shade100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ShopDetails.routeName, arguments: shops.shopItems[index].id);
          },
          child: GridTile(
            footer: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          shop!.shopName,
                          style: const TextStyle(
                            fontFamily: 'Brand Bold',
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green.shade700),
                          child: Row(
                            children: [
                              Text(
                                '${shop!.rating}',
                                style: const TextStyle(color: Colors.white),
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(shop!.shopItems.join(' - '), style: TextStyle(color: Colors.grey),),
                    Text('Distance: ${shop!.distance}', style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 10,),
                    CustomDivider(),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        const Icon(
                          Icons.local_offer_outlined,
                          color: Colors.blue,
                        ),
                        Text(
                          '${shop!.discount}% OFF',
                          style: const TextStyle(color: Colors.blue),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            child: Hero(
              tag: shop!.id,
              child: Stack(
                children: [
                  FadeInImage(
                    fadeInCurve: Curves.decelerate,
                    placeholder:
                        const AssetImage('assets/images/placeholder.png'),
                    image: NetworkImage(shop!.shopImage),
                    fit: BoxFit.contain,
                  ),
                  Material(
                    type: MaterialType.transparency,
                    child: IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        color: Colors.black54,
                      ),
                      child: Text(
                        'Visits ${shop!.visits}',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
