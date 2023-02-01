part of swagger.api;

class GtWalletResourceApi {
  final ApiClient apiClient;

  GtWalletResourceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// createGTWallet
  ///
  ///
  Future<GTWalletDTO?> createGTWalletUsingPOST({required GTWalletDTO body}) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/admin/gt-wallets".replaceAll("{format}", "json");

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
      return apiClient.deserialize(response.body, 'GTWalletDTO') as GTWalletDTO;
    } else {
      return null;
    }
  }

  /// deleteGTWallet
  ///
  ///
  Future deleteGTWalletUsingDELETE(int id) async {
    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/gt-wallets/{id}".replaceAll("{format}", "json").replaceAll("{" + "id" + "}", id.toString());

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

  /// getAllGTWallets
  ///
  ///
  Future<List<GTWalletDTO>?> getAllGTWalletsUsingGET({int? page, int? size, List<String>? sort}) async {
    // verify required params are set

    // create path and map variables
    String path = "/api/gt-wallets".replaceAll("{format}", "json");

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
      return (apiClient.deserialize(response.body, 'List<GTWalletDTO>') as List).map((item) => item as GTWalletDTO).toList();
    } else {
      return null;
    }
  }

  /// getGTWallet
  ///
  ///
  Future<GTWalletDTO?> getGTWalletUsingGET(int id) async {
    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/gt-wallets/{id}".replaceAll("{format}", "json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'GTWalletDTO') as GTWalletDTO;
    } else {
      return null;
    }
  }

  /// partialUpdateGTWallet
  ///
  ///
  Future<GTWalletDTO?> partialUpdateGTWalletUsingPATCH(int id, {required GTWalletDTO body}) async {
    Object postBody = body;

    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/admin/gt-wallets/{id}".replaceAll("{format}", "json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json", "application/merge-patch+json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'PATCH', queryParams, postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'GTWalletDTO') as GTWalletDTO;
    } else {
      return null;
    }
  }

  /// updateGTWallet
  ///
  ///
  Future<GTWalletDTO?> updateGTWalletUsingPUT(int id, {required GTWalletDTO body}) async {
    Object postBody = body;

    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/admin/gt-wallets/{id}".replaceAll("{format}", "json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'GTWalletDTO') as GTWalletDTO;
    } else {
      return null;
    }
  }
}
