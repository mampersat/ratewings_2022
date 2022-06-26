import 'package:flutter/material.dart';

class RatingIconCard extends StatelessWidget {
  final Color color;
  final IconData icon;
  final int value;

  RatingIconCard({required this.color, required this.icon, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      color: color,
      child: Padding(
        padding: EdgeInsets.only(left: 5),
        child: Row(
          children: <Widget>[
            Icon(icon),
            Container(
              width: 20.0,
              height: 20.0,
              child: Center(
                child: FittedBox(
                  child: Text(
                    value.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 21.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}