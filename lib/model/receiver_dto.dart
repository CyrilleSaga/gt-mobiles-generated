part of swagger.api;

class ReceiverDTO {
  String? email;

  String? firstName;

  int? id;

  String? lastName;

  ReceiverDTO({
    this.email,
    this.firstName,
    this.id,
    this.lastName,
  });

  @override
  String toString() {
    return 'ReceiverDTO[email=$email, firstName=$firstName, id=$id, lastName=$lastName, ]';
  }

  ReceiverDTO.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    email = json['email'];
    firstName = json['firstName'];
    id = json['id'];
    lastName = json['lastName'];
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'firstName': firstName,
      'id': id,
      'lastName': lastName
    };
  }

  static List<ReceiverDTO> listFromJson(List<dynamic>? json) {
    return json == null
        ? <ReceiverDTO>[]
        : json.map((value) => new ReceiverDTO.fromJson(value)).toList();
  }

  static Map<String, ReceiverDTO> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, ReceiverDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ReceiverDTO.fromJson(value));
    }
    return map;
  }
}
