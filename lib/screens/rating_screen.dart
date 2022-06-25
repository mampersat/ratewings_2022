import 'package:flutter/material.dart';
import 'package:ratewings/models/ratings.dart';
import 'package:provider/provider.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({Key? key}) : super(key: key);

  @override
  _RatingScreenState createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {

  @override
  Widget build(BuildContext context) {
    return Consumer<Ratings>(
      builder: (context, ratings, child) {
        ratings.get();
        return ListView.builder(

            itemBuilder: (context, index) {
              return Text(ratings.data[index]);
        });
    }
    );
  }
}