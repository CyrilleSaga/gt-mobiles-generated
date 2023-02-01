part of swagger.api;

class UserDTO {
  int? id;

  String? login;

  UserDTO({
    this.id,
    this.login,
  });

  @override
  String toString() {
    return 'UserDTO[id=$id, login=$login, ]';
  }

  UserDTO.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    id = json['id'];
    login = json['login'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'login': login};
  }

  static List<UserDTO> listFromJson(List<dynamic>? json) {
    return json == null
        ? <UserDTO>[]
        : json.map((value) => new UserDTO.fromJson(value)).toList();
  }

  static Map<String, UserDTO> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, UserDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UserDTO.fromJson(value));
    }
    return map;
  }
}
