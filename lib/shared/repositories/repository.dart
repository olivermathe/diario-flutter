import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diario/shared/mappers/mapper.dart';

class Repository<T> {

  final FirebaseFirestore db = FirebaseFirestore.instance;

  CollectionReference? collection;
  final String path;

  Repository(this.path, Mapper? mapper) {
    if (mapper == null) {
      collection = db.collection(path);
    } else {
      collection = db.collection(path).withConverter(
        fromFirestore: (json, _) => mapper.fromJson(json.data()!),
        toFirestore: (model, _) => mapper.toJson(model),
      );
    }
  }

  all() {
    return collection!.snapshots();
  }

}