part of swagger.api;

class ClientDTO {
  DateTime? birthDate;

  String? email;

  String? firstName;

  int? id;

  String? language;
  // enum languageEnum {  EN,  FR,  };

  String? lastName;

  ClientDTO(
    {this.birthDate,
    this.email,
    this.firstName,
    this.id,
    this.language,
    this.lastName,}
  );

  @override
  String toString() {
    return 'ClientDTO[birthDate=$birthDate, email=$email, firstName=$firstName, id=$id, language=$language, lastName=$lastName, ]';
  }

  ClientDTO.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    birthDate =
        json['birthDate'] == null ? null : DateTime.parse(json['birthDate']);
    email = json['email'];
    firstName = json['firstName'];
    id = json['id'];
    language = json['language'];
    lastName = json['lastName'];
  }

  Map<String, dynamic> toJson() {
    return {
      'birthDate':
          birthDate == null ? '' : birthDate!.toUtc().toIso8601String(),
      'email': email,
      'firstName': firstName,
      'id': id,
      'language': language,
      'lastName': lastName
    };
  }

  static List<ClientDTO> listFromJson(List<dynamic>? json) {
    return json == null
        ? <ClientDTO>[]
        : json.map((value) => new ClientDTO.fromJson(value)).toList();
  }

  static Map<String, ClientDTO> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, ClientDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ClientDTO.fromJson(value));
    }
    return map;
  }
}
