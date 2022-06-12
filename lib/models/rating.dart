import 'package:cloud_firestore/cloud_firestore.dart';

class Rating {
  String venueName;
  int? overallRating;

  Rating({required this.venueName});

  factory Rating.fromFirestore(DocumentSnapshot<Map<String, dynamic>> snapshot,)
      //SnapshotOptions? options,)
    {
    final data = snapshot.data();
    return Rating(
      venueName: data?['name'],
    );
  }

  static getSingleRating() {

    final _firestore = FirebaseFirestore.instance;
    final docRef = _firestore.collection("rating").doc("5rIm0s4olRLwc9V0aVtp");
    docRef.get().then(
          (DocumentSnapshot doc) {
        final data = doc.data() as DocumentSnapshot<Map<String, dynamic>>;
        return Rating.fromFirestore(data);
      },
      onError: (e) => print("Error getting document: $e"),
    );
  }
}