part of swagger.api;

class PublicUserResourceApi {
  final ApiClient apiClient;

  PublicUserResourceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// getAllPublicUsers
  ///
  ///
  Future<List<UserDTO>?> getAllPublicUsersUsingGET({int? page, int? size, List<String>? sort}) async {
    // verify required params are set

    // create path and map variables
    String path = "/api/users".replaceAll("{format}", "json");

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

    // if (contentType.startsWith("multipart/form-data")) {
    //   bool hasFields = false;
    //   MultipartRequest mp = new MultipartRequest(null, null);
    //   if (hasFields) postBody = mp;
    // } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, null, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return (apiClient.deserialize(response.body, 'List<UserDTO>') as List).map((item) => item as UserDTO).toList();
    } else {
      return null;
    }
  }

  /// getAuthorities
  ///
  ///
  Future<List<String>?> getAuthoritiesUsingGET() async {
    // verify required params are set

    // create path and map variables
    String path = "/api/authorities".replaceAll("{format}", "json");

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
      return (apiClient.deserialize(response.body, 'List<String>') as List).map((item) => item as String).toList();
    } else {
      return null;
    }
  }
}
