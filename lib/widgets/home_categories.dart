import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_map/providers/categories.dart';
import 'package:shop_map/screens/categories.dart';
import 'package:shop_map/screens/category_shops.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final cat = Provider.of<Categories>(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Categories',
              style: TextStyle(
                fontFamily: 'Brand Bold',
                fontSize: 18,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(CategoriesScreen.routeName);
              },
              child: Text(
                'Show All',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 130,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 7,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 7 / 5,
              mainAxisSpacing: 13,
            ),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  if (cat.shopCat[index].subCategory!.isNotEmpty) {
                    showDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (BuildContext context) => SimpleDialog(
                        title: Text(
                          cat.shopCat[index].catName,
                          style: TextStyle(
                            fontFamily: 'Brand Bold',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        backgroundColor: Colors.white,
                        children: [
                          SizedBox(
                            height: 250,
                            width: 200,
                            child: GridView.builder(
                              shrinkWrap: true,
                              itemCount:
                                  cat.shopCat[index].subCategory?.length ?? 0,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 5.3 / 5,
                                mainAxisSpacing: 20,
                                crossAxisSpacing: 8,
                              ),
                              itemBuilder: (BuildContext context, int int) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context,
                                      CategoryShops.routeName,
                                      arguments: cat.shopCat[index]
                                          .subCategory![int].catId,
                                    );
                                  },
                                  child: Column(
                                    children: [
                                      Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 3,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Container(
                                          height: 80,
                                          width: 80,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            cat.shopCat[index].subCategory![int]
                                                .catImage,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        cat.shopCat[index].subCategory![int]
                                            .catName,
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    );
                  } else {
                    Navigator.of(context).pushNamed(CategoryShops.routeName,
                        arguments: cat.shopCat[index].catId);
                  }
                },
                child: Column(
                  children: [
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          cat.items[index].catImage,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      cat.items[index].catName,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
