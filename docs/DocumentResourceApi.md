# swagger.api.DocumentResourceApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://transfert.herokuapp.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDocumentUsingPOST**](DocumentResourceApi.md#createDocumentUsingPOST) | **POST** /api/documents | createDocument
[**deleteDocumentUsingDELETE**](DocumentResourceApi.md#deleteDocumentUsingDELETE) | **DELETE** /api/documents/{id} | deleteDocument
[**getAllDocumentsUsingGET**](DocumentResourceApi.md#getAllDocumentsUsingGET) | **GET** /api/documents | getAllDocuments
[**getDocumentUsingGET**](DocumentResourceApi.md#getDocumentUsingGET) | **GET** /api/documents/{id} | getDocument
[**partialUpdateDocumentUsingPATCH**](DocumentResourceApi.md#partialUpdateDocumentUsingPATCH) | **PATCH** /api/documents/{id} | partialUpdateDocument
[**updateDocumentUsingPUT**](DocumentResourceApi.md#updateDocumentUsingPUT) | **PUT** /api/documents/{id} | updateDocument

# **createDocumentUsingPOST**
> DocumentDTO createDocumentUsingPOST(body)

createDocument

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new DocumentResourceApi();
var body = new DocumentDTO(); // DocumentDTO | 

try {
    var result = api_instance.createDocumentUsingPOST(body);
    print(result);
} catch (e) {
    print("Exception when calling DocumentResourceApi->createDocumentUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DocumentDTO**](DocumentDTO.md)|  | [optional] 

### Return type

[**DocumentDTO**](DocumentDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDocumentUsingDELETE**
> deleteDocumentUsingDELETE(id)

deleteDocument

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new DocumentResourceApi();
var id = 789; // int | id

try {
    api_instance.deleteDocumentUsingDELETE(id);
} catch (e) {
    print("Exception when calling DocumentResourceApi->deleteDocumentUsingDELETE: $e\n");
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

# **getAllDocumentsUsingGET**
> List<DocumentDTO> getAllDocumentsUsingGET(page, size, sort)

getAllDocuments

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new DocumentResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try {
    var result = api_instance.getAllDocumentsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling DocumentResourceApi->getAllDocumentsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] 
 **size** | **int**| Size of a page | [optional] 
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 

### Return type

[**List<DocumentDTO>**](DocumentDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDocumentUsingGET**
> DocumentDTO getDocumentUsingGET(id)

getDocument

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new DocumentResourceApi();
var id = 789; // int | id

try {
    var result = api_instance.getDocumentUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling DocumentResourceApi->getDocumentUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 

### Return type

[**DocumentDTO**](DocumentDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdateDocumentUsingPATCH**
> DocumentDTO partialUpdateDocumentUsingPATCH(id, body)

partialUpdateDocument

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new DocumentResourceApi();
var id = 789; // int | id
var body = new DocumentDTO(); // DocumentDTO | 

try {
    var result = api_instance.partialUpdateDocumentUsingPATCH(id, body);
    print(result);
} catch (e) {
    print("Exception when calling DocumentResourceApi->partialUpdateDocumentUsingPATCH: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 
 **body** | [**DocumentDTO**](DocumentDTO.md)|  | [optional] 

### Return type

[**DocumentDTO**](DocumentDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDocumentUsingPUT**
> DocumentDTO updateDocumentUsingPUT(id, body)

updateDocument

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new DocumentResourceApi();
var id = 789; // int | id
var body = new DocumentDTO(); // DocumentDTO | 

try {
    var result = api_instance.updateDocumentUsingPUT(id, body);
    print(result);
} catch (e) {
    print("Exception when calling DocumentResourceApi->updateDocumentUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 
 **body** | [**DocumentDTO**](DocumentDTO.md)|  | [optional] 

### Return type

[**DocumentDTO**](DocumentDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

