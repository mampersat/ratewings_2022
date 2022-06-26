import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ratewings/models/rating.dart';

class Ratings extends ChangeNotifier {
  List data = [];

   get() {
    data.clear();
    final _firestore = FirebaseFirestore.instance;
    _firestore.collection("rating").orderBy('overall_rating', descending: true).limit(10).get().then(
        (value) {
          print(value.size);
          for (int i = 0; i < 10; ++i) {
            data.add(Rating(value.docs[i]));
            //data.add(Rating(venueName:value.docs[i]['venu_name']));
          }
          notifyListeners();
        }
    );
    }
  }
