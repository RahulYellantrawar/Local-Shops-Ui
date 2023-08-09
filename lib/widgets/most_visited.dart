import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_map/screens/most_visited.dart';

import '../providers/shop.dart';
import '../providers/shops.dart';
import '../screens/shop_detail.dart';

class MostVisited extends StatelessWidget {
  const MostVisited({super.key});

  @override
  Widget build(BuildContext context) {
    final shops = Provider.of<Shops>(context);
    List<Shop> sortedItemsByVisits = shops.filterShops(sortingCriteria: SortingCriteria.visits);
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.purple.shade50,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Most visited',
                style: TextStyle(
                  fontFamily: 'Brand Bold',
                  fontSize: 18,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(MostVisitedScreen.routeName);
                },
                child: const Text(
                  'Show All',
                  style: TextStyle(fontFamily: 'Poppins'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 200,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 0.9,
                mainAxisSpacing: 15,
              ),
              itemBuilder: (ctx, index) {
                final shop = sortedItemsByVisits[index];
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(ShopDetails.routeName, arguments: shop.id);
                    },
                    child: GridTile(
                      footer: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                shop.shopName,
                                style: const TextStyle(
                                  fontFamily: 'Brand Bold',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.green.shade700),
                                    child: Row(
                                      children: [
                                        Text(
                                          '${shop.rating}',
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
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.local_offer_outlined,
                                        color: Colors.blue,
                                      ),
                                      Text(
                                        '${shop.discount}% OFF',
                                        style: const TextStyle(color: Colors.blue),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      child: Hero(
                        tag: '${shop.id}1',
                        child: Stack(
                          children: [
                            FadeInImage(
                              fadeInCurve: Curves.decelerate,
                              placeholder: const AssetImage(
                                  'assets/images/placeholder.png'),
                              image: NetworkImage(shop.shopImage),
                              fit: BoxFit.contain,
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
                                  'Visits ${shop.visits}',
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
