import 'package:cloud_firestore/cloud_firestore.dart';

class Rating {
  String venueName;
  int? overallRating;

  Rating({required this.venueName});

  factory Rating.fromFirestore(Map<String, dynamic> snapshot,)
      //SnapshotOptions? options,)
    {

    return Rating(
      venueName: snapshot['venu_name'],
    );
  }

  void getSingleRating() {

    final _firestore = FirebaseFirestore.instance;
    final docRef = _firestore.collection("rating").doc("5rIm0s4olRLwc9V0aVtp");
    print("Calling get()");
    docRef.get().then(
          (DocumentSnapshot doc) {
            final data = doc.data() as Map<String, dynamic>;
            print("Inside then()");
            venueName = data['venu_name'];
            //return Rating.fromFirestore(data);
      },
      onError: (e) => print("Error getting document: $e"),
    );

    //return Rating(venueName: 'testing outside of then');
  }
}