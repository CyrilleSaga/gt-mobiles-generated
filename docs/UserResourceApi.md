# swagger.api.UserResourceApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://transfert.herokuapp.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUserUsingPOST**](UserResourceApi.md#createUserUsingPOST) | **POST** /api/admin/users | createUser
[**deleteUserUsingDELETE**](UserResourceApi.md#deleteUserUsingDELETE) | **DELETE** /api/admin/users/{login} | deleteUser
[**getAllUsersUsingGET**](UserResourceApi.md#getAllUsersUsingGET) | **GET** /api/admin/users | getAllUsers
[**getUserUsingGET**](UserResourceApi.md#getUserUsingGET) | **GET** /api/admin/users/{login} | getUser
[**updateUserUsingPUT**](UserResourceApi.md#updateUserUsingPUT) | **PUT** /api/admin/users | updateUser

# **createUserUsingPOST**
> User createUserUsingPOST(body)

createUser

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserResourceApi();
var body = new AdminUserDTO(); // AdminUserDTO | 

try {
    var result = api_instance.createUserUsingPOST(body);
    print(result);
} catch (e) {
    print("Exception when calling UserResourceApi->createUserUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AdminUserDTO**](AdminUserDTO.md)|  | [optional] 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUserUsingDELETE**
> deleteUserUsingDELETE(login)

deleteUser

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserResourceApi();
var login = login_example; // String | login

try {
    api_instance.deleteUserUsingDELETE(login);
} catch (e) {
    print("Exception when calling UserResourceApi->deleteUserUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **login** | **String**| login | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllUsersUsingGET**
> List<AdminUserDTO> getAllUsersUsingGET(page, size, sort)

getAllUsers

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try {
    var result = api_instance.getAllUsersUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling UserResourceApi->getAllUsersUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] 
 **size** | **int**| Size of a page | [optional] 
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 

### Return type

[**List<AdminUserDTO>**](AdminUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserUsingGET**
> AdminUserDTO getUserUsingGET(login)

getUser

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserResourceApi();
var login = login_example; // String | login

try {
    var result = api_instance.getUserUsingGET(login);
    print(result);
} catch (e) {
    print("Exception when calling UserResourceApi->getUserUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **login** | **String**| login | 

### Return type

[**AdminUserDTO**](AdminUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserUsingPUT**
> AdminUserDTO updateUserUsingPUT(body)

updateUser

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserResourceApi();
var body = new AdminUserDTO(); // AdminUserDTO | 

try {
    var result = api_instance.updateUserUsingPUT(body);
    print(result);
} catch (e) {
    print("Exception when calling UserResourceApi->updateUserUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AdminUserDTO**](AdminUserDTO.md)|  | [optional] 

### Return type

[**AdminUserDTO**](AdminUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

