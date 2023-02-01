# swagger.api.PublicUserResourceApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://transfert.herokuapp.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllPublicUsersUsingGET**](PublicUserResourceApi.md#getAllPublicUsersUsingGET) | **GET** /api/users | getAllPublicUsers
[**getAuthoritiesUsingGET**](PublicUserResourceApi.md#getAuthoritiesUsingGET) | **GET** /api/authorities | getAuthorities

# **getAllPublicUsersUsingGET**
> List<UserDTO> getAllPublicUsersUsingGET(page, size, sort)

getAllPublicUsers

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PublicUserResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try {
    var result = api_instance.getAllPublicUsersUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling PublicUserResourceApi->getAllPublicUsersUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] 
 **size** | **int**| Size of a page | [optional] 
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 

### Return type

[**List<UserDTO>**](UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuthoritiesUsingGET**
> List<String> getAuthoritiesUsingGET()

getAuthorities

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PublicUserResourceApi();

try {
    var result = api_instance.getAuthoritiesUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling PublicUserResourceApi->getAuthoritiesUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

