# swagger.api.UserJwtControllerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://transfert.herokuapp.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authorizeUsingPOST**](UserJwtControllerApi.md#authorizeUsingPOST) | **POST** /api/authenticate | authorize

# **authorizeUsingPOST**
> JWTToken authorizeUsingPOST(body)

authorize

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserJwtControllerApi();
var body = new LoginVM(); // LoginVM | 

try {
    var result = api_instance.authorizeUsingPOST(body);
    print(result);
} catch (e) {
    print("Exception when calling UserJwtControllerApi->authorizeUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LoginVM**](LoginVM.md)|  | [optional] 

### Return type

[**JWTToken**](JWTToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

