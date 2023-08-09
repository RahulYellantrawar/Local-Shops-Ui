import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_map/providers/categories.dart';

import '../providers/category.dart';
import '../providers/shop.dart';
import '../providers/shops.dart';
import '../widgets/shop_grid.dart';

class CategoryServices extends StatefulWidget {
  static const routeName = '/catServices';
  const CategoryServices({super.key});

  @override
  State<CategoryServices> createState() => _CategoryServicesState();
}

class _CategoryServicesState extends State<CategoryServices> {
  @override
  Widget build(BuildContext context) {
    final catId =
    ModalRoute.of(context)?.settings.arguments as String;
    final loadedCategory =
    Provider.of<Categories>(context, listen: false).findBysId(catId,);

    final shops = Provider.of<Shops>(context);

    List<Shop> getFilteredShops(Category loadedCategory) {
      List<Shop> filteredShops = [];
      for (Shop shop in shops.shopItems) {
        if (shop.category == loadedCategory.catName &&
            (shop.subCategory == null ||
                shop.subCategory!.isEmpty ||
                shop.subCategory!.contains(loadedCategory.catName))) {
          filteredShops.add(shop);
        } else if (shop.subCategory != null &&
            shop.subCategory!.isNotEmpty &&
            shop.subCategory!.contains(loadedCategory.catName)) {
          filteredShops.add(shop);
        }
      }
      return filteredShops;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          loadedCategory!.catName,
          style: const TextStyle(
            fontFamily: 'Brand Bold',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: getFilteredShops(loadedCategory).length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 6 / 5,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemBuilder: (ctx, index) {
                final shop = getFilteredShops(loadedCategory)[index];
                return ShopGrid(
                  index: index,
                  shop: shop,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
