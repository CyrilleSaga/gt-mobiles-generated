# swagger.api.TransactionResourceApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://transfert.herokuapp.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTransactionUsingPOST**](TransactionResourceApi.md#createTransactionUsingPOST) | **POST** /api/transactions | createTransaction
[**deleteTransactionUsingDELETE**](TransactionResourceApi.md#deleteTransactionUsingDELETE) | **DELETE** /api/transactions/{id} | deleteTransaction
[**getAllTransactionsUsingGET**](TransactionResourceApi.md#getAllTransactionsUsingGET) | **GET** /api/transactions | getAllTransactions
[**getTransactionUsingGET**](TransactionResourceApi.md#getTransactionUsingGET) | **GET** /api/transactions/{id} | getTransaction
[**partialUpdateTransactionUsingPATCH**](TransactionResourceApi.md#partialUpdateTransactionUsingPATCH) | **PATCH** /api/transactions/{id} | partialUpdateTransaction
[**updateTransactionUsingPUT**](TransactionResourceApi.md#updateTransactionUsingPUT) | **PUT** /api/transactions/{id} | updateTransaction

# **createTransactionUsingPOST**
> TransactionDTO createTransactionUsingPOST(body)

createTransaction

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TransactionResourceApi();
var body = new TransactionDTO(); // TransactionDTO | 

try {
    var result = api_instance.createTransactionUsingPOST(body);
    print(result);
} catch (e) {
    print("Exception when calling TransactionResourceApi->createTransactionUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TransactionDTO**](TransactionDTO.md)|  | [optional] 

### Return type

[**TransactionDTO**](TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTransactionUsingDELETE**
> deleteTransactionUsingDELETE(id)

deleteTransaction

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TransactionResourceApi();
var id = 789; // int | id

try {
    api_instance.deleteTransactionUsingDELETE(id);
} catch (e) {
    print("Exception when calling TransactionResourceApi->deleteTransactionUsingDELETE: $e\n");
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

# **getAllTransactionsUsingGET**
> List<TransactionDTO> getAllTransactionsUsingGET(filter, page, size, sort)

getAllTransactions

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TransactionResourceApi();
var filter = filter_example; // String | filter
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try {
    var result = api_instance.getAllTransactionsUsingGET(filter, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling TransactionResourceApi->getAllTransactionsUsingGET: $e\n");
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

[**List<TransactionDTO>**](TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactionUsingGET**
> TransactionDTO getTransactionUsingGET(id)

getTransaction

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TransactionResourceApi();
var id = 789; // int | id

try {
    var result = api_instance.getTransactionUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling TransactionResourceApi->getTransactionUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 

### Return type

[**TransactionDTO**](TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdateTransactionUsingPATCH**
> TransactionDTO partialUpdateTransactionUsingPATCH(id, body)

partialUpdateTransaction

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TransactionResourceApi();
var id = 789; // int | id
var body = new TransactionDTO(); // TransactionDTO | 

try {
    var result = api_instance.partialUpdateTransactionUsingPATCH(id, body);
    print(result);
} catch (e) {
    print("Exception when calling TransactionResourceApi->partialUpdateTransactionUsingPATCH: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 
 **body** | [**TransactionDTO**](TransactionDTO.md)|  | [optional] 

### Return type

[**TransactionDTO**](TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTransactionUsingPUT**
> TransactionDTO updateTransactionUsingPUT(id, body)

updateTransaction

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TransactionResourceApi();
var id = 789; // int | id
var body = new TransactionDTO(); // TransactionDTO | 

try {
    var result = api_instance.updateTransactionUsingPUT(id, body);
    print(result);
} catch (e) {
    print("Exception when calling TransactionResourceApi->updateTransactionUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 
 **body** | [**TransactionDTO**](TransactionDTO.md)|  | [optional] 

### Return type

[**TransactionDTO**](TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

