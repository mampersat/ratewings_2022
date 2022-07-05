import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ratewings/models/rating.dart';

class Ratings extends ChangeNotifier {
  List data = [];
  Rating selected = Rating();

   get() {
    data.clear();
    final _firestore = FirebaseFirestore.instance;
    _firestore.collection("rating").orderBy('overall_rating', descending: true).limit(20).get().then(
        (value) {
          print(value.size);
          for (int i = 0; i < value.docs.length; ++i) {
            data.add(Rating.fromSnapshot(value.docs[i]));
            //data.add(Rating(venueName:value.docs[i]['venu_name']));
          }
          notifyListeners();
        }
    );
    }
  }
