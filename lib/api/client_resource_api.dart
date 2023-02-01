part of swagger.api;

class ClientResourceApi {
  final ApiClient apiClient;

  ClientResourceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// createClient
  ///
  ///
  Future<ClientDTO?> createClientUsingPOST({required ClientDTO body}) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/clients".replaceAll("{format}", "json");

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
      return apiClient.deserialize(response.body, 'ClientDTO') as ClientDTO;
    } else {
      return null;
    }
  }

  /// deleteClient
  ///
  ///
  Future deleteClientUsingDELETE(int id) async {
    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/clients/{id}".replaceAll("{format}", "json").replaceAll("{" + "id" + "}", id.toString());

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

  /// getAllClients
  ///
  ///
  Future<List<ClientDTO>?> getAllClientsUsingGET({String? filter, int? page, int? size, List<String>? sort}) async {
    // verify required params are set

    // create path and map variables
    String path = "/api/clients".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter", filter));
    }
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
      return (apiClient.deserialize(response.body, 'List<ClientDTO>') as List).map((item) => item as ClientDTO).toList();
    } else {
      return null;
    }
  }

  /// getClient
  ///
  ///
  Future<ClientDTO?> getClientUsingGET(int id) async {
    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/clients/{id}".replaceAll("{format}", "json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'ClientDTO') as ClientDTO;
    } else {
      return null;
    }
  }

  /// partialUpdateClient
  ///
  ///
  Future<ClientDTO?> partialUpdateClientUsingPATCH(int id, {required ClientDTO body}) async {
    Object postBody = body;

    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/clients/{id}".replaceAll("{format}", "json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'ClientDTO') as ClientDTO;
    } else {
      return null;
    }
  }

  /// updateClient
  ///
  ///
  Future<ClientDTO?> updateClientUsingPUT(int id, {required ClientDTO body}) async {
    Object postBody = body;

    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/clients/{id}".replaceAll("{format}", "json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'ClientDTO') as ClientDTO;
    } else {
      return null;
    }
  }
}
