import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ratewings/models/ratings.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  @override
  Widget build(BuildContext context) {
    return Consumer<Ratings>(
      builder: (context, ratings, child) {
        return Scaffold(
            body: Center(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

                    FittedBox(
                        fit:BoxFit.cover,
                        child: Text('Rate\nWings',
                            style: TextStyle(fontFamily: 'Courier'))
                    ),
                    ElevatedButton(onPressed : () {
                      ratings.get();
                      Navigator.pushNamed(context, '/n');},
                        child: Text('Rate')),
                    ElevatedButton(onPressed : () {
                      ratings.get();
                      Navigator.pushNamed(context, '/s');},
                      child: Text('Search')),
                ]
        ),
              ),
            )

            );
      }
    );
  }
}

