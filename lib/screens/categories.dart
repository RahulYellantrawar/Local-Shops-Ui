import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_map/screens/category_services.dart';

import '../providers/categories.dart';
import 'category_shops.dart';

class CategoriesScreen extends StatefulWidget {
  static const routeName = '/category';

  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    final cat = Provider.of<Categories>(context);
    bool showBackButton = ModalRoute.of(context)!.canPop;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.white, foregroundColor: Colors.black)
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            title: const Text(
              'Categories',
              style: TextStyle(
                fontFamily: 'Brand Bold',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: showBackButton
                ? IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.of(context)
                          .pop(); // Navigates back to the previous screen
                    },
                  )
                : null,
            bottom: TabBar(indicatorColor: Colors.teal,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.teal,
              ),
              labelPadding: EdgeInsets.all(8),
              unselectedLabelColor: Colors.grey,
              padding: EdgeInsets.all(4),
              tabs: const [
                Text(
                  'Shops',
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
                ),
                Text(
                  'Services',
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  itemCount: cat.items.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 4 / 5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 5,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        if (cat.shopCat[index].subCategory!.isNotEmpty) {
                          showDialog(
                            context: context,
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
                                  width: 250,
                                  child: GridView.builder(
                                    shrinkWrap: true,
                                    itemCount: cat.shopCat[index].subCategory
                                            ?.length ??
                                        0,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio: 5.3 / 5,
                                      mainAxisSpacing: 20,
                                      crossAxisSpacing: 8,
                                    ),
                                    itemBuilder:
                                        (BuildContext context, int int) {
                                      return GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).pushNamed(
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
                                                  cat
                                                      .shopCat[index]
                                                      .subCategory![int]
                                                      .catImage,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              cat.shopCat[index]
                                                  .subCategory![int].catName,
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
                          Navigator.of(context).pushNamed(
                              CategoryShops.routeName,
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
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                cat.items[index].catImage,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              cat.items[index].catName,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  itemCount: cat.catItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 4 / 5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 5,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        if (cat.serviceCat[index].subCategory!.isNotEmpty) {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) => SimpleDialog(
                              title: Text(
                                cat.serviceCat[index].catName,
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
                                    itemCount: cat.serviceCat[index].subCategory
                                            ?.length ??
                                        0,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio: 5.3 / 5,
                                      mainAxisSpacing: 20,
                                      crossAxisSpacing: 8,
                                    ),
                                    itemBuilder:
                                        (BuildContext context, int int) {
                                      return GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).pushNamed(
                                            CategoryServices.routeName,
                                            arguments: cat.serviceCat[index]
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
                                                  cat
                                                      .serviceCat[index]
                                                      .subCategory![int]
                                                      .catImage,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Text(
                                                cat.serviceCat[index]
                                                    .subCategory![int].catName,
                                                textAlign: TextAlign.center,
                                              ),
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
                          Navigator.of(context).pushNamed(
                              CategoryServices.routeName,
                              arguments: cat.serviceCat[index].catId);
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
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                cat.catItems[index].catImage,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              cat.catItems[index].catName,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      routes: {
        CategoryShops.routeName: (ctx) => CategoryShops(),
        CategoryServices.routeName: (ctx) => CategoryServices(),
      },
    );
  }
}
