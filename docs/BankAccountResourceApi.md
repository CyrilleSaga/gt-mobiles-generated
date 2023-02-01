# swagger.api.BankAccountResourceApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://transfert.herokuapp.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBankAccountUsingPOST**](BankAccountResourceApi.md#createBankAccountUsingPOST) | **POST** /api/bank-accounts | createBankAccount
[**deleteBankAccountUsingDELETE**](BankAccountResourceApi.md#deleteBankAccountUsingDELETE) | **DELETE** /api/bank-accounts/{id} | deleteBankAccount
[**getAllBankAccountsUsingGET**](BankAccountResourceApi.md#getAllBankAccountsUsingGET) | **GET** /api/bank-accounts | getAllBankAccounts
[**getBankAccountUsingGET**](BankAccountResourceApi.md#getBankAccountUsingGET) | **GET** /api/bank-accounts/{id} | getBankAccount
[**partialUpdateBankAccountUsingPATCH**](BankAccountResourceApi.md#partialUpdateBankAccountUsingPATCH) | **PATCH** /api/bank-accounts/{id} | partialUpdateBankAccount
[**updateBankAccountUsingPUT**](BankAccountResourceApi.md#updateBankAccountUsingPUT) | **PUT** /api/bank-accounts/{id} | updateBankAccount

# **createBankAccountUsingPOST**
> BankAccountDTO createBankAccountUsingPOST(body)

createBankAccount

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BankAccountResourceApi();
var body = new BankAccountDTO(); // BankAccountDTO | 

try {
    var result = api_instance.createBankAccountUsingPOST(body);
    print(result);
} catch (e) {
    print("Exception when calling BankAccountResourceApi->createBankAccountUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BankAccountDTO**](BankAccountDTO.md)|  | [optional] 

### Return type

[**BankAccountDTO**](BankAccountDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBankAccountUsingDELETE**
> deleteBankAccountUsingDELETE(id)

deleteBankAccount

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BankAccountResourceApi();
var id = 789; // int | id

try {
    api_instance.deleteBankAccountUsingDELETE(id);
} catch (e) {
    print("Exception when calling BankAccountResourceApi->deleteBankAccountUsingDELETE: $e\n");
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

# **getAllBankAccountsUsingGET**
> List<BankAccountDTO> getAllBankAccountsUsingGET(page, size, sort)

getAllBankAccounts

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BankAccountResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try {
    var result = api_instance.getAllBankAccountsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling BankAccountResourceApi->getAllBankAccountsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] 
 **size** | **int**| Size of a page | [optional] 
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 

### Return type

[**List<BankAccountDTO>**](BankAccountDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBankAccountUsingGET**
> BankAccountDTO getBankAccountUsingGET(id)

getBankAccount

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BankAccountResourceApi();
var id = 789; // int | id

try {
    var result = api_instance.getBankAccountUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling BankAccountResourceApi->getBankAccountUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 

### Return type

[**BankAccountDTO**](BankAccountDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdateBankAccountUsingPATCH**
> BankAccountDTO partialUpdateBankAccountUsingPATCH(id, body)

partialUpdateBankAccount

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BankAccountResourceApi();
var id = 789; // int | id
var body = new BankAccountDTO(); // BankAccountDTO | 

try {
    var result = api_instance.partialUpdateBankAccountUsingPATCH(id, body);
    print(result);
} catch (e) {
    print("Exception when calling BankAccountResourceApi->partialUpdateBankAccountUsingPATCH: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 
 **body** | [**BankAccountDTO**](BankAccountDTO.md)|  | [optional] 

### Return type

[**BankAccountDTO**](BankAccountDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBankAccountUsingPUT**
> BankAccountDTO updateBankAccountUsingPUT(id, body)

updateBankAccount

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BankAccountResourceApi();
var id = 789; // int | id
var body = new BankAccountDTO(); // BankAccountDTO | 

try {
    var result = api_instance.updateBankAccountUsingPUT(id, body);
    print(result);
} catch (e) {
    print("Exception when calling BankAccountResourceApi->updateBankAccountUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 
 **body** | [**BankAccountDTO**](BankAccountDTO.md)|  | [optional] 

### Return type

[**BankAccountDTO**](BankAccountDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

