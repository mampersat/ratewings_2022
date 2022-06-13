import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class Rating extends ChangeNotifier{
  String venueName;
  int? overallRating;

  Rating({required this.venueName}) {
    overallRating=999;
    getSingleRating();}

  void getSingleRating() {

    final _firestore = FirebaseFirestore.instance;
    final docRef = _firestore.collection("rating").doc("5rIm0s4olRLwc9V0aVtp");
    docRef.get().then(
          (DocumentSnapshot doc) {
            final data = doc.data() as Map<String, dynamic>;
            venueName = data['venu_name'];
            //notifyListeners();
      },
      onError: (e) => print("Error getting document: $e"),
    );

    //return Rating(venueName: 'testing outside of then');
  }
}