# swagger.api.ClientResourceApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://transfert.herokuapp.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createClientUsingPOST**](ClientResourceApi.md#createClientUsingPOST) | **POST** /api/clients | createClient
[**deleteClientUsingDELETE**](ClientResourceApi.md#deleteClientUsingDELETE) | **DELETE** /api/clients/{id} | deleteClient
[**getAllClientsUsingGET**](ClientResourceApi.md#getAllClientsUsingGET) | **GET** /api/clients | getAllClients
[**getClientUsingGET**](ClientResourceApi.md#getClientUsingGET) | **GET** /api/clients/{id} | getClient
[**partialUpdateClientUsingPATCH**](ClientResourceApi.md#partialUpdateClientUsingPATCH) | **PATCH** /api/clients/{id} | partialUpdateClient
[**updateClientUsingPUT**](ClientResourceApi.md#updateClientUsingPUT) | **PUT** /api/clients/{id} | updateClient

# **createClientUsingPOST**
> ClientDTO createClientUsingPOST(body)

createClient

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ClientResourceApi();
var body = new ClientDTO(); // ClientDTO | 

try {
    var result = api_instance.createClientUsingPOST(body);
    print(result);
} catch (e) {
    print("Exception when calling ClientResourceApi->createClientUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ClientDTO**](ClientDTO.md)|  | [optional] 

### Return type

[**ClientDTO**](ClientDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteClientUsingDELETE**
> deleteClientUsingDELETE(id)

deleteClient

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ClientResourceApi();
var id = 789; // int | id

try {
    api_instance.deleteClientUsingDELETE(id);
} catch (e) {
    print("Exception when calling ClientResourceApi->deleteClientUsingDELETE: $e\n");
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

# **getAllClientsUsingGET**
> List<ClientDTO> getAllClientsUsingGET(filter, page, size, sort)

getAllClients

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ClientResourceApi();
var filter = filter_example; // String | filter
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try {
    var result = api_instance.getAllClientsUsingGET(filter, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling ClientResourceApi->getAllClientsUsingGET: $e\n");
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

[**List<ClientDTO>**](ClientDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClientUsingGET**
> ClientDTO getClientUsingGET(id)

getClient

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ClientResourceApi();
var id = 789; // int | id

try {
    var result = api_instance.getClientUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling ClientResourceApi->getClientUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 

### Return type

[**ClientDTO**](ClientDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdateClientUsingPATCH**
> ClientDTO partialUpdateClientUsingPATCH(id, body)

partialUpdateClient

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ClientResourceApi();
var id = 789; // int | id
var body = new ClientDTO(); // ClientDTO | 

try {
    var result = api_instance.partialUpdateClientUsingPATCH(id, body);
    print(result);
} catch (e) {
    print("Exception when calling ClientResourceApi->partialUpdateClientUsingPATCH: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 
 **body** | [**ClientDTO**](ClientDTO.md)|  | [optional] 

### Return type

[**ClientDTO**](ClientDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateClientUsingPUT**
> ClientDTO updateClientUsingPUT(id, body)

updateClient

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ClientResourceApi();
var id = 789; // int | id
var body = new ClientDTO(); // ClientDTO | 

try {
    var result = api_instance.updateClientUsingPUT(id, body);
    print(result);
} catch (e) {
    print("Exception when calling ClientResourceApi->updateClientUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 
 **body** | [**ClientDTO**](ClientDTO.md)|  | [optional] 

### Return type

[**ClientDTO**](ClientDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

