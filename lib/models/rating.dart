import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class Rating extends ChangeNotifier{
  String id = 'none';
  String venueName = 'New Rating';
  int overallRating = 5;
  String note = 'note';
  String address = "address";
  int heat = 5;

  Rating();

  Rating.fromSnapshot(QueryDocumentSnapshot<Map<String, dynamic>> data) {
    id = data.id;
    venueName = data['venu_name'];
    note = data['note'];
    overallRating=data['overall_rating'];
    heat=data['heat'];
    address = data['address'] ?? "no address";
    }

}