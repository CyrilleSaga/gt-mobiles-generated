part of swagger.api;

class AccountResourceApi {
  final ApiClient apiClient;

  AccountResourceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// activateAccount
  ///
  ///
  Future activateAccountUsingGET(String key, String email) async {
    // verify required params are set
    if (key == null) {
      throw new ApiException(400, "Missing required param: key");
    }
    if (email == null) {
      throw new ApiException(400, "Missing required param: email");
    }

    // create path and map variables
    String path = "/api/activate".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams.addAll(_convertParametersForCollectionFormat("", "key", key));
    queryParams.addAll(_convertParametersForCollectionFormat("", "email", email));

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, null, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return;
    } else {
      return;
    }
  }

  /// changePassword
  ///
  ///
  Future changePasswordUsingPOST({required PasswordChangeDTO body}) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/account/change-password".replaceAll("{format}", "json");

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
      return;
    } else {
      return;
    }
  }

  /// finishPasswordReset
  ///
  ///
  Future finishPasswordResetUsingPOST({required KeyAndPasswordVM body}) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/account/reset-password/finish".replaceAll("{format}", "json");

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
      return;
    } else {
      return;
    }
  }

  /// getAccount
  ///
  ///
  Future<AdminUserDTO?> getAccountUsingGET() async {
    // verify required params are set

    // create path and map variables
    String path = "/api/account".replaceAll("{format}", "json");

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
      return apiClient.deserialize(response.body, 'AdminUserDTO') as AdminUserDTO;
    } else {
      return null;
    }
  }

  /// isAuthenticated
  ///
  ///
  Future<String?> isAuthenticatedUsingGET() async {
    // verify required params are set

    // create path and map variables
    String path = "/api/authenticate".replaceAll("{format}", "json");

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
      return apiClient.deserialize(response.body, 'String') as String;
    } else {
      return null;
    }
  }

  /// registerAccount
  ///
  ///
  Future registerAccountUsingPOST({required ManagedUserVM body}) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/register".replaceAll("{format}", "json");

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
      return;
    } else {
      return;
    }
  }

  /// requestPasswordReset
  ///
  ///
  Future requestPasswordResetUsingPOST({required String body}) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/account/reset-password/init".replaceAll("{format}", "json");

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
      return;
    } else {
      return;
    }
  }

  /// saveAccount
  ///
  ///
  Future saveAccountUsingPOST({required AdminUserDTO body}) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/account".replaceAll("{format}", "json");

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
      return;
    } else {
      return;
    }
  }
}
