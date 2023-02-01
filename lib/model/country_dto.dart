part of swagger.api;

class CountryDTO {
  ActualRateDTO? actualRate;

  String? contryCode;

  String? contryName;

  String? currency;

  String? currencyCode;

  String? dialCode;

  int? id;

  PhoneOperatorDTO? phoneOperator;

  CountryDTO({
    this.actualRate,
    this.contryCode,
    this.contryName,
    this.currency,
    this.currencyCode,
    this.dialCode,
    this.id,
    this.phoneOperator,
  });

  @override
  String toString() {
    return 'CountryDTO[actualRate=$actualRate, contryCode=$contryCode, contryName=$contryName, currency=$currency, currencyCode=$currencyCode, dialCode=$dialCode, id=$id, phoneOperator=$phoneOperator, ]';
  }

  CountryDTO.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    actualRate = new ActualRateDTO.fromJson(json['actualRate']);
    contryCode = json['contryCode'];
    contryName = json['contryName'];
    currency = json['currency'];
    currencyCode = json['currencyCode'];
    dialCode = json['dialCode'];
    id = json['id'];
    phoneOperator = new PhoneOperatorDTO.fromJson(json['phoneOperator']);
  }

  Map<String, dynamic> toJson() {
    return {
      'actualRate': actualRate,
      'contryCode': contryCode,
      'contryName': contryName,
      'currency': currency,
      'currencyCode': currencyCode,
      'dialCode': dialCode,
      'id': id,
      'phoneOperator': phoneOperator
    };
  }

  static List<CountryDTO> listFromJson(List<dynamic>? json) {
    return json == null
        ? <CountryDTO>[]
        : json.map((value) => new CountryDTO.fromJson(value)).toList();
  }

  static Map<String, CountryDTO> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, CountryDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CountryDTO.fromJson(value));
    }
    return map;
  }
}
