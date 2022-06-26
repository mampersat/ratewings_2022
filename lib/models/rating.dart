import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class Rating extends ChangeNotifier{
  String venueName = 'empty';
  int overallRating = 0;
  int heat = 0;
  String id = 'none';

  Rating();

  Rating.fromSnapshot(QueryDocumentSnapshot<Map<String, dynamic>> data) {
    venueName = data['venu_name'];
    overallRating=data['overall_rating'];
    heat=data['heat'];
    id = data.id;

    }

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