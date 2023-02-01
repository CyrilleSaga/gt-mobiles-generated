part of swagger.api;

class PasswordChangeDTO {
  String? currentPassword;

  String? newPassword;

  PasswordChangeDTO({
    this.currentPassword,
    this.newPassword,
  });

  @override
  String toString() {
    return 'PasswordChangeDTO[currentPassword=$currentPassword, newPassword=$newPassword, ]';
  }

  PasswordChangeDTO.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    currentPassword = json['currentPassword'];
    newPassword = json['newPassword'];
  }

  Map<String, dynamic> toJson() {
    return {'currentPassword': currentPassword, 'newPassword': newPassword};
  }

  static List<PasswordChangeDTO> listFromJson(List<dynamic>? json) {
    return json == null
        ? <PasswordChangeDTO>[]
        : json.map((value) => new PasswordChangeDTO.fromJson(value)).toList();
  }

  static Map<String, PasswordChangeDTO> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, PasswordChangeDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PasswordChangeDTO.fromJson(value));
    }
    return map;
  }
}
