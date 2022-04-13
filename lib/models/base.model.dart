abstract class BaseModel {
  Map<String, dynamic>? toJson() {
    return null;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
