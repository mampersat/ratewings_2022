import 'package:flutter/material.dart';
import 'package:ratewings/models/rating.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({Key? key}) : super(key: key);

  @override
  _RatingScreenState createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  //Rating rating = Rating(venueName: 'testing');
  Rating rating = Rating.getSingleRating();
  @override
  Widget build(BuildContext context) {
    return Text(rating.venueName);
  }
}