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

        return Column(
          children: [
            Text('dashboard'),
            ElevatedButton(onPressed : () {
              ratings.get();
              Navigator.pushNamed(context, '/s');},
                child: Text('search'))
          ],
        );
      }
    );
  }
}

