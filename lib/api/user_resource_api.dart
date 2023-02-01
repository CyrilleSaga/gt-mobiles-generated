part of swagger.api;

class UserResourceApi {
  final ApiClient apiClient;

  UserResourceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// createUser
  ///
  ///
  Future<User?> createUserUsingPOST({required AdminUserDTO adminUserDTO}) async {
    Object postBody = adminUserDTO;

    // verify required params are set

    // create path and map variables
    String path = "/api/admin/users".replaceAll("{format}", "json");

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
      return apiClient.deserialize(response.body, 'User') as User;
    } else {
      return null;
    }
  }

  /// deleteUser
  ///
  ///
  Future deleteUserUsingDELETE(String login) async {
    Object postBody = login;

    // verify required params are set
    if (login.isEmpty) {
      throw new ApiException(400, "Missing required param: login");
    }

    // create path and map variables
    String path = "/api/admin/users/{login}".replaceAll("{format}", "json").replaceAll("{" + "login" + "}", login.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    var response = await apiClient.invokeAPI(path, 'DELETE', queryParams, postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return;
    } else {
      return;
    }
  }

  /// getAllUsers
  ///
  ///
  Future<List<AdminUserDTO>?> getAllUsersUsingGET({int? page, int? size, List<String>? sort}) async {
    Object? postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/admin/users".replaceAll("{format}", "json");

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

    var response = await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentType,
      authNames,
    );

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return (apiClient.deserialize(response.body, 'List<AdminUserDTO>') as List).map((item) => item as AdminUserDTO).toList();
    } else {
      return null;
    }
  }

  /// getUser
  ///
  ///
  Future<AdminUserDTO?> getUserUsingGET(String login) async {
    // verify required params are set
    if (login == null) {
      throw new ApiException(400, "Missing required param: login");
    }

    // create path and map variables
    String path = "/api/admin/users/{login}".replaceAll("{format}", "json").replaceAll("{" + "login" + "}", login.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    var response = await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      null,
      headerParams,
      formParams,
      contentType,
      authNames,
    );

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'AdminUserDTO') as AdminUserDTO;
    } else {
      return null;
    }
  }

  /// updateUser
  ///
  ///
  Future<AdminUserDTO?> updateUserUsingPUT({required AdminUserDTO body}) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/admin/users".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    var response = await apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentType,
      authNames,
    );

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'AdminUserDTO') as AdminUserDTO;
    } else {
      return null;
    }
  }
}
