# swagger.api.GtWalletResourceApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://transfert.herokuapp.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGTWalletUsingPOST**](GtWalletResourceApi.md#createGTWalletUsingPOST) | **POST** /api/admin/gt-wallets | createGTWallet
[**deleteGTWalletUsingDELETE**](GtWalletResourceApi.md#deleteGTWalletUsingDELETE) | **DELETE** /api/gt-wallets/{id} | deleteGTWallet
[**getAllGTWalletsUsingGET**](GtWalletResourceApi.md#getAllGTWalletsUsingGET) | **GET** /api/gt-wallets | getAllGTWallets
[**getGTWalletUsingGET**](GtWalletResourceApi.md#getGTWalletUsingGET) | **GET** /api/gt-wallets/{id} | getGTWallet
[**partialUpdateGTWalletUsingPATCH**](GtWalletResourceApi.md#partialUpdateGTWalletUsingPATCH) | **PATCH** /api/admin/gt-wallets/{id} | partialUpdateGTWallet
[**updateGTWalletUsingPUT**](GtWalletResourceApi.md#updateGTWalletUsingPUT) | **PUT** /api/admin/gt-wallets/{id} | updateGTWallet

# **createGTWalletUsingPOST**
> GTWalletDTO createGTWalletUsingPOST(body)

createGTWallet

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GtWalletResourceApi();
var body = new GTWalletDTO(); // GTWalletDTO | 

try {
    var result = api_instance.createGTWalletUsingPOST(body);
    print(result);
} catch (e) {
    print("Exception when calling GtWalletResourceApi->createGTWalletUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GTWalletDTO**](GTWalletDTO.md)|  | [optional] 

### Return type

[**GTWalletDTO**](GTWalletDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGTWalletUsingDELETE**
> deleteGTWalletUsingDELETE(id)

deleteGTWallet

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GtWalletResourceApi();
var id = 789; // int | id

try {
    api_instance.deleteGTWalletUsingDELETE(id);
} catch (e) {
    print("Exception when calling GtWalletResourceApi->deleteGTWalletUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllGTWalletsUsingGET**
> List<GTWalletDTO> getAllGTWalletsUsingGET(page, size, sort)

getAllGTWallets

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GtWalletResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try {
    var result = api_instance.getAllGTWalletsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling GtWalletResourceApi->getAllGTWalletsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] 
 **size** | **int**| Size of a page | [optional] 
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 

### Return type

[**List<GTWalletDTO>**](GTWalletDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGTWalletUsingGET**
> GTWalletDTO getGTWalletUsingGET(id)

getGTWallet

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GtWalletResourceApi();
var id = 789; // int | id

try {
    var result = api_instance.getGTWalletUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling GtWalletResourceApi->getGTWalletUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 

### Return type

[**GTWalletDTO**](GTWalletDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdateGTWalletUsingPATCH**
> GTWalletDTO partialUpdateGTWalletUsingPATCH(id, body)

partialUpdateGTWallet

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GtWalletResourceApi();
var id = 789; // int | id
var body = new GTWalletDTO(); // GTWalletDTO | 

try {
    var result = api_instance.partialUpdateGTWalletUsingPATCH(id, body);
    print(result);
} catch (e) {
    print("Exception when calling GtWalletResourceApi->partialUpdateGTWalletUsingPATCH: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 
 **body** | [**GTWalletDTO**](GTWalletDTO.md)|  | [optional] 

### Return type

[**GTWalletDTO**](GTWalletDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGTWalletUsingPUT**
> GTWalletDTO updateGTWalletUsingPUT(id, body)

updateGTWallet

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GtWalletResourceApi();
var id = 789; // int | id
var body = new GTWalletDTO(); // GTWalletDTO | 

try {
    var result = api_instance.updateGTWalletUsingPUT(id, body);
    print(result);
} catch (e) {
    print("Exception when calling GtWalletResourceApi->updateGTWalletUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 
 **body** | [**GTWalletDTO**](GTWalletDTO.md)|  | [optional] 

### Return type

[**GTWalletDTO**](GTWalletDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

