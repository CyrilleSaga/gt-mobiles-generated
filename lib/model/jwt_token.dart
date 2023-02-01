part of swagger.api;

class JWTToken {
  String? idToken;

  JWTToken({
    this.idToken,
  });

  @override
  String toString() {
    return 'JWTToken [ idToken=$idToken, ]';
  }

  JWTToken.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    idToken = json['id_token'];
  }

  Map<String, dynamic> toJson() {
    return {'id_token': idToken};
  }

  static List<JWTToken> listFromJson(List<dynamic>? json) {
    return json == null
        ? <JWTToken>[]
        : json.map((value) => new JWTToken.fromJson(value)).toList();
  }

  static Map<String, JWTToken> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, JWTToken>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new JWTToken.fromJson(value));
    }
    return map;
  }
}
