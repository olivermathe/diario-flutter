import 'package:cloud_firestore/cloud_firestore.dart';

abstract class Mapper<T> {
  T fromJson(DocumentSnapshot<Map<String, dynamic>> json) { throw Exception('Not implemented'); }
  Map<String, dynamic> toJson(T model) { throw Exception('Not implemented'); }
}