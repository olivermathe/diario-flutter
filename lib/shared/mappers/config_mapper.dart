import 'package:diario/shared/mappers/mapper.dart';
import 'package:diario/shared/models/config.dart';

class ConfigMapper implements Mapper<Config> {

  @override
  fromJson(Map<String, dynamic> json) {
    return Config(
      double.parse(json['limit'].toString()),
      json['dueDay']
    );
  }

  @override
  Map<String, dynamic> toJson(Config model) {
    return {
      'dueDay': model.endDay,
      'limit': model.limit
    };
  }
  
}