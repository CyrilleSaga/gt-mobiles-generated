# swagger.api.ActualRateResourceApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://transfert.herokuapp.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createActualRateUsingPOST**](ActualRateResourceApi.md#createActualRateUsingPOST) | **POST** /api/actual-rates | createActualRate
[**deleteActualRateUsingDELETE**](ActualRateResourceApi.md#deleteActualRateUsingDELETE) | **DELETE** /api/actual-rates/{id} | deleteActualRate
[**getActualRateUsingGET**](ActualRateResourceApi.md#getActualRateUsingGET) | **GET** /api/actual-rates/{id} | getActualRate
[**getAllActualRatesUsingGET**](ActualRateResourceApi.md#getAllActualRatesUsingGET) | **GET** /api/actual-rates | getAllActualRates
[**partialUpdateActualRateUsingPATCH**](ActualRateResourceApi.md#partialUpdateActualRateUsingPATCH) | **PATCH** /api/actual-rates/{id} | partialUpdateActualRate
[**updateActualRateUsingPUT**](ActualRateResourceApi.md#updateActualRateUsingPUT) | **PUT** /api/actual-rates/{id} | updateActualRate

# **createActualRateUsingPOST**
> ActualRateDTO createActualRateUsingPOST(body)

createActualRate

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActualRateResourceApi();
var body = new ActualRateDTO(); // ActualRateDTO | 

try {
    var result = api_instance.createActualRateUsingPOST(body);
    print(result);
} catch (e) {
    print("Exception when calling ActualRateResourceApi->createActualRateUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ActualRateDTO**](ActualRateDTO.md)|  | [optional] 

### Return type

[**ActualRateDTO**](ActualRateDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteActualRateUsingDELETE**
> deleteActualRateUsingDELETE(id)

deleteActualRate

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActualRateResourceApi();
var id = 789; // int | id

try {
    api_instance.deleteActualRateUsingDELETE(id);
} catch (e) {
    print("Exception when calling ActualRateResourceApi->deleteActualRateUsingDELETE: $e\n");
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

# **getActualRateUsingGET**
> ActualRateDTO getActualRateUsingGET(id)

getActualRate

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActualRateResourceApi();
var id = 789; // int | id

try {
    var result = api_instance.getActualRateUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling ActualRateResourceApi->getActualRateUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 

### Return type

[**ActualRateDTO**](ActualRateDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllActualRatesUsingGET**
> List<ActualRateDTO> getAllActualRatesUsingGET(filter, page, size, sort)

getAllActualRates

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActualRateResourceApi();
var filter = filter_example; // String | filter
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try {
    var result = api_instance.getAllActualRatesUsingGET(filter, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling ActualRateResourceApi->getAllActualRatesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**| filter | [optional] 
 **page** | **int**| Page number of the requested page | [optional] 
 **size** | **int**| Size of a page | [optional] 
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 

### Return type

[**List<ActualRateDTO>**](ActualRateDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdateActualRateUsingPATCH**
> ActualRateDTO partialUpdateActualRateUsingPATCH(id, body)

partialUpdateActualRate

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActualRateResourceApi();
var id = 789; // int | id
var body = new ActualRateDTO(); // ActualRateDTO | 

try {
    var result = api_instance.partialUpdateActualRateUsingPATCH(id, body);
    print(result);
} catch (e) {
    print("Exception when calling ActualRateResourceApi->partialUpdateActualRateUsingPATCH: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 
 **body** | [**ActualRateDTO**](ActualRateDTO.md)|  | [optional] 

### Return type

[**ActualRateDTO**](ActualRateDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateActualRateUsingPUT**
> ActualRateDTO updateActualRateUsingPUT(id, body)

updateActualRate

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActualRateResourceApi();
var id = 789; // int | id
var body = new ActualRateDTO(); // ActualRateDTO | 

try {
    var result = api_instance.updateActualRateUsingPUT(id, body);
    print(result);
} catch (e) {
    print("Exception when calling ActualRateResourceApi->updateActualRateUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 
 **body** | [**ActualRateDTO**](ActualRateDTO.md)|  | [optional] 

### Return type

[**ActualRateDTO**](ActualRateDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

