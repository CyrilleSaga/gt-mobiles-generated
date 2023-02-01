part of swagger.api;

class BillDTO {
  double? amount;

  String? billNumber;

  CountryDTO? country;

  int? id;

  TransactionDTO? transaction;

  String? typeService;
  //enum typeServiceEnum {  CAMWATER,  CANALPLUS,  ENEO,  };

  BillDTO(
    {this.amount,
    this.billNumber,
    this.country,
    this.id,
    this.transaction,
    this.typeService,}
  );

  @override
  String toString() {
    return 'BillDTO[amount=$amount, billNumber=$billNumber, country=$country, id=$id, transaction=$transaction, typeService=$typeService, ]';
  }

  BillDTO.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    amount = json['amount'];
    billNumber = json['billNumber'];
    country = new CountryDTO.fromJson(json['country']);
    id = json['id'];
    transaction = new TransactionDTO.fromJson(json['transaction']);
    typeService = json['typeService'];
  }

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'billNumber': billNumber,
      'country': country,
      'id': id,
      'transaction': transaction,
      'typeService': typeService
    };
  }

  static List<BillDTO> listFromJson(List<dynamic>? json) {
    return json == null
        ? <BillDTO>[]
        : json.map((value) => new BillDTO.fromJson(value)).toList();
  }

  static Map<String, BillDTO> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, BillDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new BillDTO.fromJson(value));
    }
    return map;
  }
}
