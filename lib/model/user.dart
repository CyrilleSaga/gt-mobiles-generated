part of swagger.api;

class User {
  bool? activated;

  String? email;

  String? firstName;

  int? id;

  String? imageUrl;

  String? langKey;

  String? lastName;

  String? login;

  DateTime? resetDate;

  User({
    this.activated,
    this.email,
    this.firstName,
    this.id,
    this.imageUrl,
    this.langKey,
    this.lastName,
    this.login,
    this.resetDate,
  });

  @override
  String toString() {
    return 'User[activated=$activated, email=$email, firstName=$firstName, id=$id, imageUrl=$imageUrl, langKey=$langKey, lastName=$lastName, login=$login, resetDate=$resetDate, ]';
  }

  User.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    activated = json['activated'];
    email = json['email'];
    firstName = json['firstName'];
    id = json['id'];
    imageUrl = json['imageUrl'];
    langKey = json['langKey'];
    lastName = json['lastName'];
    login = json['login'];
    resetDate =
        json['resetDate'] == null ? null : DateTime.parse(json['resetDate']);
  }

  Map<String, dynamic> toJson() {
    return {
      'activated': activated,
      'email': email,
      'firstName': firstName,
      'id': id,
      'imageUrl': imageUrl,
      'langKey': langKey,
      'lastName': lastName,
      'login': login,
      'resetDate': resetDate == null ? '' : resetDate!.toUtc().toIso8601String()
    };
  }

  static List<User> listFromJson(List<dynamic>? json) {
    return json == null
        ? <User>[]
        : json.map((value) => new User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, User>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new User.fromJson(value));
    }
    return map;
  }
}
