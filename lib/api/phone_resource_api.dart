part of swagger.api;

class PhoneResourceApi {
  final ApiClient apiClient;

  PhoneResourceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// createPhone
  ///
  ///
  Future<PhoneDTO?> createPhoneUsingPOST({required PhoneDTO body}) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/phones".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    var response = await apiClient.invokeAPI(path, 'POST', queryParams, postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'PhoneDTO') as PhoneDTO;
    } else {
      return null;
    }
  }

  /// deletePhone
  ///
  ///
  Future deletePhoneUsingDELETE(int id) async {
    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/phones/{id}".replaceAll("{format}", "json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    var response = await apiClient.invokeAPI(path, 'DELETE', queryParams, null, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return;
    } else {
      return;
    }
  }

  /// getAllPhones
  ///
  ///
  Future<List<PhoneDTO>?> getAllPhonesUsingGET({int? page, int? size, List<String>? sort}) async {
    // verify required params are set

    // create path and map variables
    String path = "/api/phones".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if (size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "size", size));
    }
    if (sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "sort", sort));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, null, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return (apiClient.deserialize(response.body, 'List<PhoneDTO>') as List).map((item) => item as PhoneDTO).toList();
    } else {
      return null;
    }
  }

  /// getPhone
  ///
  ///
  Future<PhoneDTO?> getPhoneUsingGET(int id) async {
    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/phones/{id}".replaceAll("{format}", "json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, null, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'PhoneDTO') as PhoneDTO;
    } else {
      return null;
    }
  }

  /// partialUpdatePhone
  ///
  ///
  Future<PhoneDTO?> partialUpdatePhoneUsingPATCH(int id, {required PhoneDTO body}) async {
    Object postBody = body;

    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/phones/{id}".replaceAll("{format}", "json").replaceAll(RegExp(r'{id}'), id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json", "application/merge-patch+json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    var response = await apiClient.invokeAPI(path, 'PATCH', queryParams, postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'PhoneDTO') as PhoneDTO;
    } else {
      return null;
    }
  }

  /// updatePhone
  ///
  ///
  Future<PhoneDTO?> updatePhoneUsingPUT(int id, {required PhoneDTO body}) async {
    Object postBody = body;

    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/phones/{id}".replaceAll("{format}", "json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    var response = await apiClient.invokeAPI(path, 'PUT', queryParams, postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'PhoneDTO') as PhoneDTO;
    } else {
      return null;
    }
  }
}
