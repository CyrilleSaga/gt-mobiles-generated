part of swagger.api;

class TransactionDTO {
  double? amount;

  ClientDTO? client;

  int? id;

  ReceiverDTO? receiver;

  DateTime? transactionDate;

  int? transactionId;

  String? transactionInfo;

  String? transactionStatus;
  //enum transactionStatusEnum {  DONE,  INIT,  PEDDINT,  };

  String? transactionType;
  //enum transactionTypeEnum {  BANKTRANSFERE,  BILLPAY,  MOBILETRANSFERE,  };

  TransactionDTO({
    this.amount,
    this.client,
    this.id,
    this.receiver,
    this.transactionDate,
    this.transactionId,
    this.transactionInfo,
    this.transactionStatus,
    this.transactionType,
  });

  @override
  String toString() {
    return 'TransactionDTO[amount=$amount, client=$client, id=$id, receiver=$receiver, transactionDate=$transactionDate, transactionId=$transactionId, transactionInfo=$transactionInfo, transactionStatus=$transactionStatus, transactionType=$transactionType, ]';
  }

  TransactionDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    amount = json['amount'];
    client = new ClientDTO.fromJson(json['client']);
    id = json['id'];
    receiver = new ReceiverDTO.fromJson(json['receiver']);
    transactionDate = json['transactionDate'] == null
        ? null
        : DateTime.parse(json['transactionDate']);
    transactionId = json['transactionId'];
    transactionInfo = json['transactionInfo'];
    transactionStatus = json['transactionStatus'];
    transactionType = json['transactionType'];
  }

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'client': client,
      'id': id,
      'receiver': receiver,
      'transactionDate': transactionDate == null
          ? ''
          : transactionDate?.toUtc().toIso8601String(),
      'transactionId': transactionId,
      'transactionInfo': transactionInfo,
      'transactionStatus': transactionStatus,
      'transactionType': transactionType
    };
  }

  static List<TransactionDTO> listFromJson(List<dynamic>? json) {
    return json == null
        ? <TransactionDTO>[]
        : json.map((value) => new TransactionDTO.fromJson(value)).toList();
  }

  static Map<String, TransactionDTO> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, TransactionDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new TransactionDTO.fromJson(value));
    }
    return map;
  }
}
