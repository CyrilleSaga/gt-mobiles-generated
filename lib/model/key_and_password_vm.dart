part of swagger.api;

class KeyAndPasswordVM {
  String? key;

  String? newPassword;

  KeyAndPasswordVM({
    this.key,
    this.newPassword,
  });

  @override
  String toString() {
    return 'KeyAndPasswordVM[key=$key, newPassword=$newPassword, ]';
  }

  KeyAndPasswordVM.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    key = json['key'];
    newPassword = json['newPassword'];
  }

  Map<String, dynamic> toJson() {
    return {'key': key, 'newPassword': newPassword};
  }

  static List<KeyAndPasswordVM> listFromJson(List<dynamic>? json) {
    return json == null
        ? <KeyAndPasswordVM>[]
        : json.map((value) => new KeyAndPasswordVM.fromJson(value)).toList();
  }

  static Map<String, KeyAndPasswordVM> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, KeyAndPasswordVM>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new KeyAndPasswordVM.fromJson(value));
    }
    return map;
  }
}
