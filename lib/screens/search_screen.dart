import 'package:flutter/material.dart';
import 'package:ratewings/models/ratings.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
    Widget build(BuildContext context) {
    return Consumer<Ratings>(
            builder: (context, ratings, child) {
              if (ratings.data.length == 0) {
                return( Text("No ratings"));
              }
              return(
                  Column(
                    children: [
                      Text('Top Text'),
                      Expanded(
                          child: ListView.builder(
                              itemCount: ratings.data.length,
                              itemBuilder: (context, index) {
                                return Text(ratings.data[index]);
                              }))
                    ],
                  )

              );
            });
  }
}
