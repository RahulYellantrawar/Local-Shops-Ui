import 'package:flutter/cupertino.dart';
import 'package:shop_map/providers/review_model.dart';

class ReviewsList with ChangeNotifier {
  final reviewList = [
    ReviewModal(
      name: "John Travolta",
      rating: 3.5,
      date: "01 Jan 2021",
      comment:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    ),
    ReviewModal(
      name: "Scarlett Johansson",
      rating: 2.5,
      date: "21 Feb 2021",
      comment:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    ),
    ReviewModal(
      name: "Jennifer Lawrence",
      rating: 4.5,
      date: "17 Mar 2021",
      comment:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    ),
    ReviewModal(
      name: "Michael Jordan",
      rating: 1.5,
      date: "12 Apr 2021",
      comment:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    ),
    ReviewModal(
      name: "Nicole Kidman",
      rating: 2.0,
      date: "28 May 2021",
      comment:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    ),
    ReviewModal(
      name: "James Franco",
      rating: 4.0,
      date: "14 Nov 2020",
      comment:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    ),
    ReviewModal(
      name: "Margot Robbie",
      rating: 1.0,
      date: "14 Nov 2020",
      comment:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    ),
    ReviewModal(
      name: "Nicolas Cage",
      rating: 3.0,
      date: "14 Nov 2020",
      comment:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    ),
    ReviewModal(
      name: "Emma Stone",
      rating: 5.0,
      date: "14 Nov 2020",
      comment:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    ),
    ReviewModal(
      name: "Johnny Depp",
      rating: 3.5,
      date: "14 Nov 2020",
      comment:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    ),
    ReviewModal(
      name: "Natalie Portman",
      rating: 3.5,
      date: "14 Nov 2020",
      comment:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    ),
    ReviewModal(
      name: "Anne Hathaway",
      rating: 3.5,
      date: "14 Nov 2020",
      comment:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    ),
    ReviewModal(
      name: "Charlize Theron",
      rating: 3.5,
      date: "14 Nov 2020",
      comment:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    ),
  ];

  List<ReviewModal> get reviewsList {
    return [...reviewList];
  }
}