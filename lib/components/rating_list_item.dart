import 'package:flutter/material.dart';
import 'package:ratewings/models/rating.dart';
import 'package:ratewings/constants.dart';
import 'rating_icon_card.dart';

class RatingListItem extends StatelessWidget{

  final Rating rating;

  const RatingListItem({required this.rating}) : super();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Flexible(
          child: Text( rating.venueName,
            style: TextStyle(
              fontSize: 20.0,
              decorationStyle: TextDecorationStyle.double,
              backgroundColor: kBackgroundColor,
            ),
          ),
        ),
        Row(
          children: [
            RatingIconCard(icon: Icons.thumb_up, color: Colors.green, value: rating.overallRating),
            RatingIconCard(icon: Icons.whatshot, color: Colors.green, value: 5),
            RatingIconCard(icon: Icons.thumb_up, color: Colors.green, value: 5),

          ]
        )
      ]

    );
  }
}