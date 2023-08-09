import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_map/widgets/shop_grid.dart';

import '../providers/shop.dart';
import '../providers/shops.dart';

class NearbyShops extends StatelessWidget {
  const NearbyShops({super.key});

  @override
  Widget build(BuildContext context) {
    final shops = Provider.of<Shops>(context);
    List<Shop> sortedItemsByDistance = shops.filterShops(sortingCriteria: SortingCriteria.distance);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Nearby Shops',
          style: TextStyle(
            fontFamily: 'Brand Bold',
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: sortedItemsByDistance.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 6 / 5,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (ctx, index) {
            final shop = sortedItemsByDistance[index];
            return ShopGrid(index: index, shop: shop,);
          },
        ),
      ],
    );
  }
}
