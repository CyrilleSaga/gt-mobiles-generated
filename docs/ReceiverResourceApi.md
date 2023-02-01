# swagger.api.ReceiverResourceApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://transfert.herokuapp.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createReceiverUsingPOST**](ReceiverResourceApi.md#createReceiverUsingPOST) | **POST** /api/receivers | createReceiver
[**deleteReceiverUsingDELETE**](ReceiverResourceApi.md#deleteReceiverUsingDELETE) | **DELETE** /api/receivers/{id} | deleteReceiver
[**getAllReceiversUsingGET**](ReceiverResourceApi.md#getAllReceiversUsingGET) | **GET** /api/receivers | getAllReceivers
[**getReceiverUsingGET**](ReceiverResourceApi.md#getReceiverUsingGET) | **GET** /api/receivers/{id} | getReceiver
[**partialUpdateReceiverUsingPATCH**](ReceiverResourceApi.md#partialUpdateReceiverUsingPATCH) | **PATCH** /api/receivers/{id} | partialUpdateReceiver
[**updateReceiverUsingPUT**](ReceiverResourceApi.md#updateReceiverUsingPUT) | **PUT** /api/receivers/{id} | updateReceiver

# **createReceiverUsingPOST**
> ReceiverDTO createReceiverUsingPOST(body)

createReceiver

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReceiverResourceApi();
var body = new ReceiverDTO(); // ReceiverDTO | 

try {
    var result = api_instance.createReceiverUsingPOST(body);
    print(result);
} catch (e) {
    print("Exception when calling ReceiverResourceApi->createReceiverUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ReceiverDTO**](ReceiverDTO.md)|  | [optional] 

### Return type

[**ReceiverDTO**](ReceiverDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteReceiverUsingDELETE**
> deleteReceiverUsingDELETE(id)

deleteReceiver

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReceiverResourceApi();
var id = 789; // int | id

try {
    api_instance.deleteReceiverUsingDELETE(id);
} catch (e) {
    print("Exception when calling ReceiverResourceApi->deleteReceiverUsingDELETE: $e\n");
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

# **getAllReceiversUsingGET**
> List<ReceiverDTO> getAllReceiversUsingGET(page, size, sort)

getAllReceivers

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReceiverResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try {
    var result = api_instance.getAllReceiversUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling ReceiverResourceApi->getAllReceiversUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] 
 **size** | **int**| Size of a page | [optional] 
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 

### Return type

[**List<ReceiverDTO>**](ReceiverDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReceiverUsingGET**
> ReceiverDTO getReceiverUsingGET(id)

getReceiver

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReceiverResourceApi();
var id = 789; // int | id

try {
    var result = api_instance.getReceiverUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling ReceiverResourceApi->getReceiverUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 

### Return type

[**ReceiverDTO**](ReceiverDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdateReceiverUsingPATCH**
> ReceiverDTO partialUpdateReceiverUsingPATCH(id, body)

partialUpdateReceiver

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReceiverResourceApi();
var id = 789; // int | id
var body = new ReceiverDTO(); // ReceiverDTO | 

try {
    var result = api_instance.partialUpdateReceiverUsingPATCH(id, body);
    print(result);
} catch (e) {
    print("Exception when calling ReceiverResourceApi->partialUpdateReceiverUsingPATCH: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 
 **body** | [**ReceiverDTO**](ReceiverDTO.md)|  | [optional] 

### Return type

[**ReceiverDTO**](ReceiverDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateReceiverUsingPUT**
> ReceiverDTO updateReceiverUsingPUT(id, body)

updateReceiver

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReceiverResourceApi();
var id = 789; // int | id
var body = new ReceiverDTO(); // ReceiverDTO | 

try {
    var result = api_instance.updateReceiverUsingPUT(id, body);
    print(result);
} catch (e) {
    print("Exception when calling ReceiverResourceApi->updateReceiverUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 
 **body** | [**ReceiverDTO**](ReceiverDTO.md)|  | [optional] 

### Return type

[**ReceiverDTO**](ReceiverDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

