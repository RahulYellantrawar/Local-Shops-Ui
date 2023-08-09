import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/shop.dart';
import '../providers/shops.dart';
import '../widgets/shop_grid.dart';

class MostVisitedScreen extends StatefulWidget {
  static const routeName = '/mostVisited';
  const MostVisitedScreen({super.key});

  @override
  State<MostVisitedScreen> createState() => _MostVisitedScreenState();
}

class _MostVisitedScreenState extends State<MostVisitedScreen> {
  @override
  Widget build(BuildContext context) {
    final shops = Provider.of<Shops>(context);
    List<Shop> sortedItemsByVisits = shops.filterShops(sortingCriteria: SortingCriteria.visits);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Most Visited',
          style: TextStyle(
            fontFamily: 'Brand Bold',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: sortedItemsByVisits.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 6 / 5,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
            ),
            itemBuilder: (ctx, index) {
              final shop = sortedItemsByVisits[index];
              return ShopGrid(index: index, shop: shop,);
            },
          ),
        ),
      ),
    );
  }
}
