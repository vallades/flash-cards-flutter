import 'package:cloud_firestore/cloud_firestore.dart';

class WordData {
  String category;
  String id;
  String wordPt;
  String wordEn;
  String image;

  WordData.fromDocument(DocumentSnapshot snapshot) {
    id = snapshot.documentID;
    wordEn = snapshot.data["word-en"];
    wordPt = snapshot.data["word-pt"];
    image = snapshot.data["image"];
  }
}