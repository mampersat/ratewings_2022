import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('dashboard'),
        ElevatedButton(onPressed : () {Navigator.pushNamed(context, '/r');},
            child: Text('rating'))

      ],

    );
  }
}

