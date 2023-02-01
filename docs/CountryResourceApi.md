# swagger.api.CountryResourceApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://transfert.herokuapp.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCountryUsingPOST**](CountryResourceApi.md#createCountryUsingPOST) | **POST** /api/countries | createCountry
[**deleteCountryUsingDELETE**](CountryResourceApi.md#deleteCountryUsingDELETE) | **DELETE** /api/countries/{id} | deleteCountry
[**getAllCountriesUsingGET**](CountryResourceApi.md#getAllCountriesUsingGET) | **GET** /api/countries | getAllCountries
[**getCountryUsingGET**](CountryResourceApi.md#getCountryUsingGET) | **GET** /api/countries/{id} | getCountry
[**partialUpdateCountryUsingPATCH**](CountryResourceApi.md#partialUpdateCountryUsingPATCH) | **PATCH** /api/countries/{id} | partialUpdateCountry
[**updateCountryUsingPUT**](CountryResourceApi.md#updateCountryUsingPUT) | **PUT** /api/countries/{id} | updateCountry

# **createCountryUsingPOST**
> CountryDTO createCountryUsingPOST(body)

createCountry

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new CountryResourceApi();
var body = new CountryDTO(); // CountryDTO | 

try {
    var result = api_instance.createCountryUsingPOST(body);
    print(result);
} catch (e) {
    print("Exception when calling CountryResourceApi->createCountryUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CountryDTO**](CountryDTO.md)|  | [optional] 

### Return type

[**CountryDTO**](CountryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCountryUsingDELETE**
> deleteCountryUsingDELETE(id)

deleteCountry

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new CountryResourceApi();
var id = 789; // int | id

try {
    api_instance.deleteCountryUsingDELETE(id);
} catch (e) {
    print("Exception when calling CountryResourceApi->deleteCountryUsingDELETE: $e\n");
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

# **getAllCountriesUsingGET**
> List<CountryDTO> getAllCountriesUsingGET(page, size, sort)

getAllCountries

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new CountryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try {
    var result = api_instance.getAllCountriesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling CountryResourceApi->getAllCountriesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] 
 **size** | **int**| Size of a page | [optional] 
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 

### Return type

[**List<CountryDTO>**](CountryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCountryUsingGET**
> CountryDTO getCountryUsingGET(id)

getCountry

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new CountryResourceApi();
var id = 789; // int | id

try {
    var result = api_instance.getCountryUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling CountryResourceApi->getCountryUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 

### Return type

[**CountryDTO**](CountryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdateCountryUsingPATCH**
> CountryDTO partialUpdateCountryUsingPATCH(id, body)

partialUpdateCountry

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new CountryResourceApi();
var id = 789; // int | id
var body = new CountryDTO(); // CountryDTO | 

try {
    var result = api_instance.partialUpdateCountryUsingPATCH(id, body);
    print(result);
} catch (e) {
    print("Exception when calling CountryResourceApi->partialUpdateCountryUsingPATCH: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 
 **body** | [**CountryDTO**](CountryDTO.md)|  | [optional] 

### Return type

[**CountryDTO**](CountryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCountryUsingPUT**
> CountryDTO updateCountryUsingPUT(id, body)

updateCountry

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new CountryResourceApi();
var id = 789; // int | id
var body = new CountryDTO(); // CountryDTO | 

try {
    var result = api_instance.updateCountryUsingPUT(id, body);
    print(result);
} catch (e) {
    print("Exception when calling CountryResourceApi->updateCountryUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 
 **body** | [**CountryDTO**](CountryDTO.md)|  | [optional] 

### Return type

[**CountryDTO**](CountryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

