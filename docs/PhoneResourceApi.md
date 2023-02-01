# swagger.api.PhoneResourceApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://transfert.herokuapp.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPhoneUsingPOST**](PhoneResourceApi.md#createPhoneUsingPOST) | **POST** /api/phones | createPhone
[**deletePhoneUsingDELETE**](PhoneResourceApi.md#deletePhoneUsingDELETE) | **DELETE** /api/phones/{id} | deletePhone
[**getAllPhonesUsingGET**](PhoneResourceApi.md#getAllPhonesUsingGET) | **GET** /api/phones | getAllPhones
[**getPhoneUsingGET**](PhoneResourceApi.md#getPhoneUsingGET) | **GET** /api/phones/{id} | getPhone
[**partialUpdatePhoneUsingPATCH**](PhoneResourceApi.md#partialUpdatePhoneUsingPATCH) | **PATCH** /api/phones/{id} | partialUpdatePhone
[**updatePhoneUsingPUT**](PhoneResourceApi.md#updatePhoneUsingPUT) | **PUT** /api/phones/{id} | updatePhone

# **createPhoneUsingPOST**
> PhoneDTO createPhoneUsingPOST(body)

createPhone

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PhoneResourceApi();
var body = new PhoneDTO(); // PhoneDTO | 

try {
    var result = api_instance.createPhoneUsingPOST(body);
    print(result);
} catch (e) {
    print("Exception when calling PhoneResourceApi->createPhoneUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PhoneDTO**](PhoneDTO.md)|  | [optional] 

### Return type

[**PhoneDTO**](PhoneDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePhoneUsingDELETE**
> deletePhoneUsingDELETE(id)

deletePhone

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PhoneResourceApi();
var id = 789; // int | id

try {
    api_instance.deletePhoneUsingDELETE(id);
} catch (e) {
    print("Exception when calling PhoneResourceApi->deletePhoneUsingDELETE: $e\n");
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

# **getAllPhonesUsingGET**
> List<PhoneDTO> getAllPhonesUsingGET(page, size, sort)

getAllPhones

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PhoneResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try {
    var result = api_instance.getAllPhonesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling PhoneResourceApi->getAllPhonesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] 
 **size** | **int**| Size of a page | [optional] 
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 

### Return type

[**List<PhoneDTO>**](PhoneDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPhoneUsingGET**
> PhoneDTO getPhoneUsingGET(id)

getPhone

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PhoneResourceApi();
var id = 789; // int | id

try {
    var result = api_instance.getPhoneUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling PhoneResourceApi->getPhoneUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 

### Return type

[**PhoneDTO**](PhoneDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdatePhoneUsingPATCH**
> PhoneDTO partialUpdatePhoneUsingPATCH(id, body)

partialUpdatePhone

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PhoneResourceApi();
var id = 789; // int | id
var body = new PhoneDTO(); // PhoneDTO | 

try {
    var result = api_instance.partialUpdatePhoneUsingPATCH(id, body);
    print(result);
} catch (e) {
    print("Exception when calling PhoneResourceApi->partialUpdatePhoneUsingPATCH: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 
 **body** | [**PhoneDTO**](PhoneDTO.md)|  | [optional] 

### Return type

[**PhoneDTO**](PhoneDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePhoneUsingPUT**
> PhoneDTO updatePhoneUsingPUT(id, body)

updatePhone

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PhoneResourceApi();
var id = 789; // int | id
var body = new PhoneDTO(); // PhoneDTO | 

try {
    var result = api_instance.updatePhoneUsingPUT(id, body);
    print(result);
} catch (e) {
    print("Exception when calling PhoneResourceApi->updatePhoneUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 
 **body** | [**PhoneDTO**](PhoneDTO.md)|  | [optional] 

### Return type

[**PhoneDTO**](PhoneDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

