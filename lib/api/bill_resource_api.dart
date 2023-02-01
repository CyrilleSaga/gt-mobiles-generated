part of swagger.api;

class BillResourceApi {
  final ApiClient apiClient;

  BillResourceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// createBill
  ///
  ///
  Future<BillDTO?> createBillUsingPOST({required BillDTO body}) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/bills".replaceAll("{format}", "json");

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
      return apiClient.deserialize(response.body, 'BillDTO') as BillDTO;
    } else {
      return null;
    }
  }

  /// deleteBill
  ///
  ///
  Future deleteBillUsingDELETE(int id) async {
    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/bills/{id}".replaceAll("{format}", "json").replaceAll("{" + "id" + "}", id.toString());

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

  /// getAllBills
  ///
  ///
  Future<List<BillDTO>?> getAllBillsUsingGET({int? page, int? size, List<String>? sort}) async {
    // verify required params are set

    // create path and map variables
    String path = "/api/bills".replaceAll("{format}", "json");

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
      return (apiClient.deserialize(response.body, 'List<BillDTO>') as List).map((item) => item as BillDTO).toList();
    } else {
      return null;
    }
  }

  /// getBill
  ///
  ///
  Future<BillDTO?> getBillUsingGET(int id) async {
    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/bills/{id}".replaceAll("{format}", "json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'BillDTO') as BillDTO;
    } else {
      return null;
    }
  }

  /// partialUpdateBill
  ///
  ///
  Future<BillDTO?> partialUpdateBillUsingPATCH(int id, {required BillDTO body}) async {
    Object postBody = body;

    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/bills/{id}".replaceAll("{format}", "json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'BillDTO') as BillDTO;
    } else {
      return null;
    }
  }

  /// updateBill
  ///
  ///
  Future<BillDTO?> updateBillUsingPUT(int id, {required BillDTO body}) async {
    Object postBody = body;

    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/bills/{id}".replaceAll("{format}", "json").replaceAll("{" + "id" + "}", id.toString());

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
      return apiClient.deserialize(response.body, 'BillDTO') as BillDTO;
    } else {
      return null;
    }
  }
}
