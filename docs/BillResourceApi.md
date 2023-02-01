# swagger.api.BillResourceApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://transfert.herokuapp.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBillUsingPOST**](BillResourceApi.md#createBillUsingPOST) | **POST** /api/bills | createBill
[**deleteBillUsingDELETE**](BillResourceApi.md#deleteBillUsingDELETE) | **DELETE** /api/bills/{id} | deleteBill
[**getAllBillsUsingGET**](BillResourceApi.md#getAllBillsUsingGET) | **GET** /api/bills | getAllBills
[**getBillUsingGET**](BillResourceApi.md#getBillUsingGET) | **GET** /api/bills/{id} | getBill
[**partialUpdateBillUsingPATCH**](BillResourceApi.md#partialUpdateBillUsingPATCH) | **PATCH** /api/bills/{id} | partialUpdateBill
[**updateBillUsingPUT**](BillResourceApi.md#updateBillUsingPUT) | **PUT** /api/bills/{id} | updateBill

# **createBillUsingPOST**
> BillDTO createBillUsingPOST(body)

createBill

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BillResourceApi();
var body = new BillDTO(); // BillDTO | 

try {
    var result = api_instance.createBillUsingPOST(body);
    print(result);
} catch (e) {
    print("Exception when calling BillResourceApi->createBillUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BillDTO**](BillDTO.md)|  | [optional] 

### Return type

[**BillDTO**](BillDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBillUsingDELETE**
> deleteBillUsingDELETE(id)

deleteBill

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BillResourceApi();
var id = 789; // int | id

try {
    api_instance.deleteBillUsingDELETE(id);
} catch (e) {
    print("Exception when calling BillResourceApi->deleteBillUsingDELETE: $e\n");
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

# **getAllBillsUsingGET**
> List<BillDTO> getAllBillsUsingGET(page, size, sort)

getAllBills

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BillResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try {
    var result = api_instance.getAllBillsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling BillResourceApi->getAllBillsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] 
 **size** | **int**| Size of a page | [optional] 
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 

### Return type

[**List<BillDTO>**](BillDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBillUsingGET**
> BillDTO getBillUsingGET(id)

getBill

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BillResourceApi();
var id = 789; // int | id

try {
    var result = api_instance.getBillUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling BillResourceApi->getBillUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 

### Return type

[**BillDTO**](BillDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdateBillUsingPATCH**
> BillDTO partialUpdateBillUsingPATCH(id, body)

partialUpdateBill

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BillResourceApi();
var id = 789; // int | id
var body = new BillDTO(); // BillDTO | 

try {
    var result = api_instance.partialUpdateBillUsingPATCH(id, body);
    print(result);
} catch (e) {
    print("Exception when calling BillResourceApi->partialUpdateBillUsingPATCH: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 
 **body** | [**BillDTO**](BillDTO.md)|  | [optional] 

### Return type

[**BillDTO**](BillDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBillUsingPUT**
> BillDTO updateBillUsingPUT(id, body)

updateBill

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BillResourceApi();
var id = 789; // int | id
var body = new BillDTO(); // BillDTO | 

try {
    var result = api_instance.updateBillUsingPUT(id, body);
    print(result);
} catch (e) {
    print("Exception when calling BillResourceApi->updateBillUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 
 **body** | [**BillDTO**](BillDTO.md)|  | [optional] 

### Return type

[**BillDTO**](BillDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

