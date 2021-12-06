import 'package:diario/shared/mappers/config_mapper.dart';
import 'package:diario/shared/repositories/repository.dart';
import 'package:flutter/cupertino.dart';

class Config extends ChangeNotifier {

  Repository repository = Repository('configs');

  int endDay = 30;
  double limit = 1500;

  Config() {
    this.get();
  }

  get() {
    repository.streamDataCollection().listen((config) {
      print('config.size');
      print(config.size);
    });
  }

}

