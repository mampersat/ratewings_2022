import 'package:flutter/material.dart';
import 'package:ratewings/models/ratings.dart';
import 'package:provider/provider.dart';
import 'package:ratewings/components/rating_list_item.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
    Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( title: Text('Search Results')),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Consumer<Ratings>(
                builder: (context, ratings, child) {
                  if (ratings.data.length == 0) {
                    return( Text("No results (or loading)"));
                  }
                  return(
                      Column(
                        children: [
                          Expanded(
                              child: ListView.builder(
                                  itemCount: ratings.data.length,
                                  itemBuilder: (context, index) {
                                    //return Text(ratings.data[index]);
                                    return RatingListItem(rating: ratings.data[index]);
                                  }))
                        ],
                      )

                  );
                }),
        ),
      );
  }
}
