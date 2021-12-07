import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

class Config extends ChangeNotifier {

  final double limit;
  final int endDay;

  Config(this.limit, this.endDay);

}