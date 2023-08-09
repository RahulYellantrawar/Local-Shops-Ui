import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:shop_map/providers/reviews.dart';
import 'package:shop_map/screens/shop_detail.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class AllReviews extends StatefulWidget {
  static const routeName = '/reviews';

  const AllReviews({super.key});

  @override
  State<AllReviews> createState() => _AllReviewsState();
}

class _AllReviewsState extends State<AllReviews> {
  bool isMore = false;

  @override
  Widget build(BuildContext context) {
    final reviews = Provider.of<ReviewsList>(context);
    List<double> ratings = [0.3, 0.4, 0.5, 0.7, 0.9];

    final faker = Faker();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reviews',
          style: TextStyle(
            fontFamily: 'Brand Bold',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            color: Colors.white54,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
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
                            progressColor: Colors.orange,
                          ),
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          Divider(),
          Expanded(
            child: ListView.separated(
              itemCount: reviews.reviewsList.length,
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
        ],
      ),
    );
  }
}

class ReviewUI extends StatelessWidget {
  final String date, name, comment;
  final double rating;
  final VoidCallback onTap, onPressed;
  final bool isLess;

  const ReviewUI({
    super.key,
    required this.date,
    required this.name,
    required this.comment,
    required this.rating,
    required this.onTap,
    required this.isLess,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 2,
        bottom: 2,
        left: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(onPressed: onPressed, icon: Icon(Icons.more_vert))
            ],
          ),
          Row(
            children: [
              SmoothStarRating(
                color: Colors.orange,
                borderColor: Colors.orangeAccent,
                starCount: 5,
                rating: rating,
                size: 25,
                allowHalfRating: false,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                date,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          GestureDetector(
            onTap: onTap,
            child: isLess
                ? Text(
                    comment,
                    style: TextStyle(color: Colors.black54),
                  )
                : Text(
                    comment,
                    maxLines: 3,
                    style: TextStyle(color: Colors.black54),
                    overflow: TextOverflow.ellipsis,
                  ),
          ),
        ],
      ),
    );
  }
}
