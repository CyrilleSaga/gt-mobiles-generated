part of swagger.api;

class BankAccountDTO {
  int? accountKey;

  int? accountNumber;

  int? bankBranch;

  int? bankId;

  String? bankName;

  CountryDTO? country;

  int? id;

  ReceiverDTO? receiver;

  BankAccountDTO();

  @override
  String toString() {
    return 'BankAccountDTO[accountKey=$accountKey, accountNumber=$accountNumber, bankBranch=$bankBranch, bankId=$bankId, bankName=$bankName, country=$country, id=$id, receiver=$receiver, ]';
  }

  BankAccountDTO.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    accountKey = json['accountKey'];
    accountNumber = json['accountNumber'];
    bankBranch = json['bankBranch'];
    bankId = json['bankId'];
    bankName = json['bankName'];
    country = new CountryDTO.fromJson(json['country']);
    id = json['id'];
    receiver = new ReceiverDTO.fromJson(json['receiver']);
  }

  Map<String, dynamic> toJson() {
    return {
      'accountKey': accountKey,
      'accountNumber': accountNumber,
      'bankBranch': bankBranch,
      'bankId': bankId,
      'bankName': bankName,
      'country': country,
      'id': id,
      'receiver': receiver
    };
  }

  static List<BankAccountDTO> listFromJson(List<dynamic>? json) {
    return json == null
        ? <BankAccountDTO>[]
        : json.map((value) => new BankAccountDTO.fromJson(value)).toList();
  }

  static Map<String, BankAccountDTO> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, BankAccountDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new BankAccountDTO.fromJson(value));
    }
    return map;
  }
}
