import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:shop_map/providers/shops.dart';
import 'package:shop_map/screens/all_reviews.dart';
import 'package:shop_map/widgets/custom_divider.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../providers/reviews.dart';

class ShopDetails extends StatefulWidget {
  static const routeName = '/shopDetails';

  const ShopDetails({super.key});

  @override
  State<ShopDetails> createState() => _ShopDetailsState();
}

class _ShopDetailsState extends State<ShopDetails> {

  bool isMore = false;

  @override
  Widget build(BuildContext context) {

    final faker = Faker();
    final shopId = ModalRoute.of(context)?.settings.arguments as String;
    final loadedShop =
        Provider.of<Shops>(context, listen: false).findById(shopId ?? '');
    final reviews = Provider.of<ReviewsList>(context);
    List<double> ratings = [0.3, 0.4, 0.5, 0.7, 0.9];

    return Scaffold(
      appBar: AppBar(elevation: 5,
        title: Text(
          loadedShop.shopName,
          style: const TextStyle(
            fontFamily: 'Brand Bold',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.network(loadedShop.shopImage),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 70,
                  padding: EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 8,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.purple.shade50,
                    border: Border.all(
                      width: 1,
                      color: Colors.grey.shade700,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        child: Icon(
                          Icons.confirmation_num_sharp,
                          size: 40,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Flat ${loadedShop.discount}% OFF',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text('on all items'),
                        ],
                      )
                    ],
                  ),
                ),
                LineDivider(),
                Container(
                  height: 200,
                  width: double.infinity,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green.shade50,
                    // border: Border.all()
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        loadedShop.shopName,
                        style: const TextStyle(
                          fontFamily: 'Brand Bold',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 50,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.green.shade700),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${loadedShop.rating}',
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
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '450 Customers',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        loadedShop.shopItems.join(' - '),
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomDivider(),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(CupertinoIcons.clock_fill),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            loadedShop.timings,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomDivider(),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Distance: ${loadedShop.distance} Km'),
                          GestureDetector(
                            onTap: () {
                              print('Shop Location Tapped');
                            },
                            child: Row(
                              children: [
                                Text('Shop Location'),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(CupertinoIcons.location_solid)
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                LineDivider(),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shop Details',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                        ),
                      ),
                      Text(faker.lorem.sentences(10).toString())
                    ],
                  ),
                ),
                LineDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('Contact us', style: TextStyle(fontFamily: 'Poppins', fontSize: 16),),
                ),
                Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Image.asset(
                        'assets/images/profile.png',
                      ),
                    ),
                    title: Text(
                      loadedShop.shopName,
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    subtitle: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.phone, size: 18, color: Colors.green.shade700,),
                            SizedBox(width: 10,),
                            Text('${loadedShop.mobileNo}'),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(CupertinoIcons.mail_solid, size: 18, color: Colors.red,),
                            SizedBox(width: 10,),
                            Text(loadedShop.emailId),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 700,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.yellow.shade50
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Ratings & Reviews',
                            style: TextStyle(
                              fontFamily: 'Brand Bold',
                              fontSize: 18,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(AllReviews.routeName);
                            },
                            child: const Text(
                              'Show All',
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text.rich(
                                TextSpan(children: [
                                  TextSpan(
                                    text: '4.5',
                                    style: TextStyle(
                                      fontFamily: 'Brand Bold',
                                      fontSize: 48,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '/5',
                                    style: TextStyle(
                                      fontFamily: 'Brand Bold',
                                      fontSize: 28,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ]),
                              ),
                              SmoothStarRating(
                                color: Colors.green,
                                borderColor: Colors.greenAccent,
                                starCount: 5,
                                rating: 4.5,
                                size: 25,
                                allowHalfRating: false,
                              ),
                              Text('${reviews.reviewsList.length} reviews'),
                            ],
                          ),
                          SizedBox(
                            width: 200,
                            child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              reverse: true,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Row(
                                  children: [
                                    Text('${index + 1}', style: TextStyle(fontSize: 18),),
                                    SizedBox(width: 4,),
                                    Icon(Icons.star, color: Colors.orange,),
                                    SizedBox(width: 4,),
                                    LinearPercentIndicator(
                                      lineHeight: 6,
                                      animation: true,
                                      animationDuration: 2500,
                                      percent: ratings[index],
                                      width: 150,
                                      progressColor: Colors.green,
                                    ),
                                  ],
                                );
                              },
                            ),
                          )
                        ],
                      ),
                      Divider(),
                      Expanded(
                        child: ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return ReviewUI(
                              name: reviews.reviewsList[index].name,
                              date: reviews.reviewsList[index].date,
                              comment: reviews.reviewsList[index].comment,
                              rating: reviews.reviewsList[index].rating,
                              onPressed: () {},
                              onTap: () => setState(() {
                                isMore = !isMore;
                              }),
                              isLess: isMore,
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return Divider(
                              thickness: 0,
                            );
                          },
                        ),
                      ),
                      CustomDivider(),
                      TextButton(onPressed: (){}, child: Text('Write your review', style: TextStyle(fontFamily: 'Poppins'),))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LineDivider extends StatelessWidget {
  const LineDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 50,
      color: Colors.grey,
      thickness: 1,
      indent: 20,
      endIndent: 20,
    );
  }
}
