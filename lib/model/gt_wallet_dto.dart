part of swagger.api;

class GTWalletDTO {
  ClientDTO? client;

  int? id;

  String? operation;
  //enum operationEnum {  CREDITE,  DEBIT,  };

  double? operationAmount;

  String? operationDescription;

  GTWalletDTO({
    this.client,
    this.id,
    this.operation,
    this.operationAmount,
    this.operationDescription,
  });

  @override
  String toString() {
    return 'GTWalletDTO[client=$client, id=$id, operation=$operation, operationAmount=$operationAmount, operationDescription=$operationDescription, ]';
  }

  GTWalletDTO.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    client = new ClientDTO.fromJson(json['client']);
    id = json['id'];
    operation = json['operation'];
    operationAmount = json['operationAmount'];
    operationDescription = json['operationDescription'];
  }

  Map<String, dynamic> toJson() {
    return {
      'client': client,
      'id': id,
      'operation': operation,
      'operationAmount': operationAmount,
      'operationDescription': operationDescription
    };
  }

  static List<GTWalletDTO> listFromJson(List<dynamic>? json) {
    return json == null
        ? <GTWalletDTO>[]
        : json.map((value) => new GTWalletDTO.fromJson(value)).toList();
  }

  static Map<String, GTWalletDTO> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, GTWalletDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new GTWalletDTO.fromJson(value));
    }
    return map;
  }
}
