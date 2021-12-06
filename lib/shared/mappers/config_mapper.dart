import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diario/shared/mappers/mapper.dart';
import 'package:diario/shared/models/config.dart';

class ConfigMapper implements Mapper<Config> {
  @override
  fromJson(DocumentSnapshot<Map<String, dynamic>> json) {
    return Config();
  }

  @override
  Map<String, dynamic> toJson(model) {
    return {
      "limit": model.limit,
      "endDay": model.endDay
    };
  }

}
