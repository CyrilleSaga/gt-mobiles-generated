part of swagger.api;

class AdminUserDTO {
  bool? activated;

  List<String>? authorities;

  DateTime? birthDate;

  String? email;

  String? firstName;

  int? id;

  String? imageUrl;

  String? langKey;

  String? lastName;

  String? login;

  String? phoneNumber;

  AdminUserDTO({
    this.activated,
    this.authorities = const [],
    this.birthDate,
    this.email,
    this.firstName,
    this.id,
    this.imageUrl,
    this.langKey,
    this.lastName,
    this.login,
    this.phoneNumber,
  });

  @override
  String toString() {
    return 'AdminUserDTO[activated=$activated, authorities=$authorities, birthDate=$birthDate, email=$email, firstName=$firstName, id=$id, imageUrl=$imageUrl, langKey=$langKey, lastName=$lastName, login=$login, phoneNumber=$phoneNumber, ]';
  }

  AdminUserDTO.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    activated = json['activated'];
    authorities =
        (json['authorities'] as List).map((item) => item as String).toList();
    birthDate =
        json['birthDate'] == null ? null : DateTime.parse(json['birthDate']);
    email = json['email'];
    firstName = json['firstName'];
    id = json['id'];
    imageUrl = json['imageUrl'];
    langKey = json['langKey'];
    lastName = json['lastName'];
    login = json['login'];
    phoneNumber = json['phoneNumber'];
  }

  Map<String, dynamic> toJson() {
    return {
      'activated': activated,
      'authorities': authorities,
      'birthDate':
          birthDate == null ? '' : birthDate!.toUtc().toIso8601String(),
      'email': email,
      'firstName': firstName,
      'id': id,
      'imageUrl': imageUrl,
      'langKey': langKey,
      'lastName': lastName,
      'login': login,
      'phoneNumber': phoneNumber
    };
  }

  static List<AdminUserDTO> listFromJson(List<dynamic>? json) {
    return json == null
        ? <AdminUserDTO>[]
        : json.map((value) => new AdminUserDTO.fromJson(value)).toList();
  }

  static Map<String, AdminUserDTO> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, AdminUserDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new AdminUserDTO.fromJson(value));
    }
    return map;
  }
}
