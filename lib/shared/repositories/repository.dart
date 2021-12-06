import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diario/shared/mappers/config_mapper.dart';
import 'package:diario/shared/mappers/mapper.dart';

class Repository {

  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String path;

  CollectionReference? ref;

  Repository(this.path) {
    ref = _db.collection(path);
  }

  Stream<QuerySnapshot> streamDataCollection() {
    return ref!.snapshots() ;
  }
  Future<DocumentSnapshot> getDocumentById(String id) {
    return ref!.doc(id).get();
  }
  Future<void> removeDocument(String id){
    return ref!.doc(id).delete();
  }
  Future<DocumentReference> addDocument(Map data) {
    return ref!.add(data);
  }
  Future<void> updateDocument(Map<String, Object> data , String id) {
    return ref!.doc(id).update(data) ;
  }

}