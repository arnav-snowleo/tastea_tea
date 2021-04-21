import 'package:cloud_firestore/cloud_firestore.dart';

CollectionReference beverageRef = Firestore.instance
    .collection('recipes')
    .document('categories')
    .collection('beverages');

CollectionReference desertRef = Firestore.instance
    .collection('recipes')
    .document('categories')
    .collection('desert');

CollectionReference fastfoodRef = Firestore.instance
    .collection('recipes')
    .document('categories')
    .collection('fastfood');

CollectionReference bookmarkRef = Firestore.instance
    .collection('recipes')
    .document('bookmarks')
    .collection('defaultCollection');
