part of swagger.api;

class PhoneDTO {
  ClientDTO? client;

  CountryDTO? country;

  int? id;

  String? phoneNumber;

  String? phoneOperator;
  //enum phoneOperatorEnum {  MTNCAMEROON,  ORANGECAMEROUN,  };

  ReceiverDTO? receiver;

  PhoneDTO({
    this.client,
    this.country,
    this.id,
    this.phoneNumber,
    this.phoneOperator,
    this.receiver,
  });

  @override
  String toString() {
    return 'PhoneDTO[client=$client, country=$country, id=$id, phoneNumber=$phoneNumber, phoneOperator=$phoneOperator, receiver=$receiver, ]';
  }

  PhoneDTO.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    client = new ClientDTO.fromJson(json['client']);
    country = new CountryDTO.fromJson(json['country']);
    id = json['id'];
    phoneNumber = json['phoneNumber'];
    phoneOperator = json['phoneOperator'];
    receiver = new ReceiverDTO.fromJson(json['receiver']);
  }

  Map<String, dynamic> toJson() {
    return {
      'client': client,
      'country': country,
      'id': id,
      'phoneNumber': phoneNumber,
      'phoneOperator': phoneOperator,
      'receiver': receiver
    };
  }

  static List<PhoneDTO> listFromJson(List<dynamic>? json) {
    return json == null
        ? <PhoneDTO>[]
        : json.map((value) => new PhoneDTO.fromJson(value)).toList();
  }

  static Map<String, PhoneDTO> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, PhoneDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PhoneDTO.fromJson(value));
    }
    return map;
  }
}
