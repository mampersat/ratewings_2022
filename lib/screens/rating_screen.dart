import 'package:flutter/material.dart';
import 'package:ratewings/models/rating.dart';
import 'package:ratewings/models/ratings.dart';
import 'package:provider/provider.dart';
import 'package:ratewings/components/rating_list_item.dart';

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
          return Scaffold(
              appBar: AppBar( title: Text(ratings.selected.venueName)),
              body: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(children: [
                    RatingListItem(rating: ratings.selected),
                    Row(children: [

                      Text('Notes: '),
                      Text(ratings.selected.note),
                    ]),

                    Row(children: [
                      Text('Address: '),
                      Text(ratings.selected.address),
                    ],)

                  ])));
        });
  }
}