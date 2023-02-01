part of swagger.api;

class PhoneOperatorDTO {
  int? id;

  String? operatorName;

  PhoneOperatorDTO({
    this.id,
    this.operatorName,
  });

  @override
  String toString() {
    return 'PhoneOperatorDTO[id=$id, operatorName=$operatorName, ]';
  }

  PhoneOperatorDTO.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    id = json['id'];
    operatorName = json['operatorName'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'operatorName': operatorName};
  }

  static List<PhoneOperatorDTO> listFromJson(List<dynamic>? json) {
    return json == null
        ? <PhoneOperatorDTO>[]
        : json.map((value) => new PhoneOperatorDTO.fromJson(value)).toList();
  }

  static Map<String, PhoneOperatorDTO> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, PhoneOperatorDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PhoneOperatorDTO.fromJson(value));
    }
    return map;
  }
}
