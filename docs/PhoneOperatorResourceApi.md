# swagger.api.PhoneOperatorResourceApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://transfert.herokuapp.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPhoneOperatorUsingPOST**](PhoneOperatorResourceApi.md#createPhoneOperatorUsingPOST) | **POST** /api/phone-operators | createPhoneOperator
[**deletePhoneOperatorUsingDELETE**](PhoneOperatorResourceApi.md#deletePhoneOperatorUsingDELETE) | **DELETE** /api/phone-operators/{id} | deletePhoneOperator
[**getAllPhoneOperatorsUsingGET**](PhoneOperatorResourceApi.md#getAllPhoneOperatorsUsingGET) | **GET** /api/phone-operators | getAllPhoneOperators
[**getPhoneOperatorUsingGET**](PhoneOperatorResourceApi.md#getPhoneOperatorUsingGET) | **GET** /api/phone-operators/{id} | getPhoneOperator
[**partialUpdatePhoneOperatorUsingPATCH**](PhoneOperatorResourceApi.md#partialUpdatePhoneOperatorUsingPATCH) | **PATCH** /api/phone-operators/{id} | partialUpdatePhoneOperator
[**updatePhoneOperatorUsingPUT**](PhoneOperatorResourceApi.md#updatePhoneOperatorUsingPUT) | **PUT** /api/phone-operators/{id} | updatePhoneOperator

# **createPhoneOperatorUsingPOST**
> PhoneOperatorDTO createPhoneOperatorUsingPOST(body)

createPhoneOperator

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PhoneOperatorResourceApi();
var body = new PhoneOperatorDTO(); // PhoneOperatorDTO | 

try {
    var result = api_instance.createPhoneOperatorUsingPOST(body);
    print(result);
} catch (e) {
    print("Exception when calling PhoneOperatorResourceApi->createPhoneOperatorUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PhoneOperatorDTO**](PhoneOperatorDTO.md)|  | [optional] 

### Return type

[**PhoneOperatorDTO**](PhoneOperatorDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePhoneOperatorUsingDELETE**
> deletePhoneOperatorUsingDELETE(id)

deletePhoneOperator

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PhoneOperatorResourceApi();
var id = 789; // int | id

try {
    api_instance.deletePhoneOperatorUsingDELETE(id);
} catch (e) {
    print("Exception when calling PhoneOperatorResourceApi->deletePhoneOperatorUsingDELETE: $e\n");
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

# **getAllPhoneOperatorsUsingGET**
> List<PhoneOperatorDTO> getAllPhoneOperatorsUsingGET(page, size, sort)

getAllPhoneOperators

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PhoneOperatorResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try {
    var result = api_instance.getAllPhoneOperatorsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling PhoneOperatorResourceApi->getAllPhoneOperatorsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] 
 **size** | **int**| Size of a page | [optional] 
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 

### Return type

[**List<PhoneOperatorDTO>**](PhoneOperatorDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPhoneOperatorUsingGET**
> PhoneOperatorDTO getPhoneOperatorUsingGET(id)

getPhoneOperator

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PhoneOperatorResourceApi();
var id = 789; // int | id

try {
    var result = api_instance.getPhoneOperatorUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling PhoneOperatorResourceApi->getPhoneOperatorUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 

### Return type

[**PhoneOperatorDTO**](PhoneOperatorDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdatePhoneOperatorUsingPATCH**
> PhoneOperatorDTO partialUpdatePhoneOperatorUsingPATCH(id, body)

partialUpdatePhoneOperator

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PhoneOperatorResourceApi();
var id = 789; // int | id
var body = new PhoneOperatorDTO(); // PhoneOperatorDTO | 

try {
    var result = api_instance.partialUpdatePhoneOperatorUsingPATCH(id, body);
    print(result);
} catch (e) {
    print("Exception when calling PhoneOperatorResourceApi->partialUpdatePhoneOperatorUsingPATCH: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 
 **body** | [**PhoneOperatorDTO**](PhoneOperatorDTO.md)|  | [optional] 

### Return type

[**PhoneOperatorDTO**](PhoneOperatorDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePhoneOperatorUsingPUT**
> PhoneOperatorDTO updatePhoneOperatorUsingPUT(id, body)

updatePhoneOperator

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PhoneOperatorResourceApi();
var id = 789; // int | id
var body = new PhoneOperatorDTO(); // PhoneOperatorDTO | 

try {
    var result = api_instance.updatePhoneOperatorUsingPUT(id, body);
    print(result);
} catch (e) {
    print("Exception when calling PhoneOperatorResourceApi->updatePhoneOperatorUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 
 **body** | [**PhoneOperatorDTO**](PhoneOperatorDTO.md)|  | [optional] 

### Return type

[**PhoneOperatorDTO**](PhoneOperatorDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

