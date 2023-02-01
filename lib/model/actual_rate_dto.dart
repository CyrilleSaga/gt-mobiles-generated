part of swagger.api;

class ActualRateDTO {
  double? actualRate;

  int? id;

  ActualRateDTO({
    this.actualRate,
    this.id,
  });

  @override
  String toString() {
    return 'ActualRateDTO[actualRate=$actualRate, id=$id, ]';
  }

  ActualRateDTO.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    actualRate = json['actualRate'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    return {'actualRate': actualRate, 'id': id};
  }

  static List<ActualRateDTO> listFromJson(List<dynamic>? json) {
    return json == null
        ? <ActualRateDTO>[]
        : json.map((value) => new ActualRateDTO.fromJson(value)).toList();
  }

  static Map<String, ActualRateDTO> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, ActualRateDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ActualRateDTO.fromJson(value));
    }
    return map;
  }
}
