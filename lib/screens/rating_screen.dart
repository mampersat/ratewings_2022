import 'package:flutter/material.dart';
import 'package:ratewings/models/rating.dart';
import 'package:provider/provider.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({Key? key}) : super(key: key);

  @override
  _RatingScreenState createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {

  @override
  Widget build(BuildContext context) {
    return Consumer<Rating>(
      builder: (context, rating, child) {
        return Text(rating.venueName);
    }
    );
    Rating rating = Rating(venueName: 'testing');
    rating.getSingleRating();
    print(rating.venueName);
    return Text(rating.venueName);
  }
}