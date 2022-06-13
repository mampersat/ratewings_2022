import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ratewings/models/rating.dart';

class Ratings extends ChangeNotifier {
  List data = [];

  void get() {
    final _firestore = FirebaseFirestore.instance;
    _firestore.collection("rating").get().then(
        (value) {
          print(value.size);
          for (int i = 0; i < 10; ++i) {

            Rating rating = Rating(venueName:value.docs[i]['venu_name']);
            print("Adding " + value.docs[i]['venu_name']);
            data.add(value.docs[i]['venu_name']);
          }

          for (int i = 0; i < 10; ++i) {
            print("X" + data[i]);
          }
        }
    );

    }
  }
