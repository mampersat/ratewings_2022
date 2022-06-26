import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ratewings/models/rating.dart';
import 'package:ratewings/models/ratings.dart';
import 'package:ratewings/constants.dart';
import 'rating_icon_card.dart';

class RatingListItem extends StatelessWidget{

  final Rating rating;

  const RatingListItem({required this.rating}) : super();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Provider.of<Ratings>(context, listen: false).selected = rating;
        Navigator.pushNamed(context, '/r');}, // TODO Would be nice if  '/r/${rating.id}' worked as a route
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
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
              RatingIconCard(icon: Icons.whatshot, color: Colors.green, value: rating.heat),
              //TODO add distance calculation
              // RatingIconCard(icon: Icons.thumb_up, color: Colors.green, value: 5),

            ]
          )
        ]

      ),
    );
  }
}