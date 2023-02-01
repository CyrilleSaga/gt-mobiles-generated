part of swagger.api;

class DocumentDTO {
  ClientDTO? client;

  String? docCode;

  String? docStatut;
  //enum docStatutEnum {  ADDED,  MISSING,  VALIDE,  };

  int? id;

  String? typeDocument;
  //enum typeDocumentEnum {  CANADIANDRIVELICENCE,  CANADIANRESIDENTCARD,  ODEROFFICIALDOCUMENT,  PASSPORT,  };

  DocumentDTO(
    {this.client,
    this.docCode,
    this.docStatut,
    this.id,
    this.typeDocument,}
  );

  @override
  String toString() {
    return 'DocumentDTO[client=$client, docCode=$docCode, docStatut=$docStatut, id=$id, typeDocument=$typeDocument, ]';
  }

  DocumentDTO.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    client = new ClientDTO.fromJson(json['client']);
    docCode = json['docCode'];
    docStatut = json['docStatut'];
    id = json['id'];
    typeDocument = json['typeDocument'];
  }

  Map<String, dynamic> toJson() {
    return {
      'client': client,
      'docCode': docCode,
      'docStatut': docStatut,
      'id': id,
      'typeDocument': typeDocument
    };
  }

  static List<DocumentDTO> listFromJson(List<dynamic>? json) {
    return json == null
        ? <DocumentDTO>[]
        : json.map((value) => new DocumentDTO.fromJson(value)).toList();
  }

  static Map<String, DocumentDTO> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, DocumentDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new DocumentDTO.fromJson(value));
    }
    return map;
  }
}
