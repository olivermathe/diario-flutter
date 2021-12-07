
abstract class Mapper<T> {

  T fromJson(Map<String, dynamic> json) {
    throw UnimplementedError();
  }

  Map<String, dynamic> toJson(T model) {
    throw UnimplementedError();
  }
}