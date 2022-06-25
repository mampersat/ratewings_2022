import 'package:flutter/material.dart';
import 'package:ratewings/models/rating.dart';
import 'package:ratewings/constants.dart';

class RatingListItem extends StatelessWidget{

  final Rating rating;

  const RatingListItem({required this.rating}) : super();

  @override
  Widget build(BuildContext context) {
    return Text(
        rating.venueName,
      style: TextStyle(
        fontSize: 20.0,
        decorationStyle: TextDecorationStyle.double,
        backgroundColor: kBackgroundColor,
      ),
    );
  }
}