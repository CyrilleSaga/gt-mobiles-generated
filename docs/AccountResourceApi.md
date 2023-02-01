# swagger.api.AccountResourceApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://transfert.herokuapp.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activateAccountUsingGET**](AccountResourceApi.md#activateAccountUsingGET) | **GET** /api/activate | activateAccount
[**changePasswordUsingPOST**](AccountResourceApi.md#changePasswordUsingPOST) | **POST** /api/account/change-password | changePassword
[**finishPasswordResetUsingPOST**](AccountResourceApi.md#finishPasswordResetUsingPOST) | **POST** /api/account/reset-password/finish | finishPasswordReset
[**getAccountUsingGET**](AccountResourceApi.md#getAccountUsingGET) | **GET** /api/account | getAccount
[**isAuthenticatedUsingGET**](AccountResourceApi.md#isAuthenticatedUsingGET) | **GET** /api/authenticate | isAuthenticated
[**registerAccountUsingPOST**](AccountResourceApi.md#registerAccountUsingPOST) | **POST** /api/register | registerAccount
[**requestPasswordResetUsingPOST**](AccountResourceApi.md#requestPasswordResetUsingPOST) | **POST** /api/account/reset-password/init | requestPasswordReset
[**saveAccountUsingPOST**](AccountResourceApi.md#saveAccountUsingPOST) | **POST** /api/account | saveAccount

# **activateAccountUsingGET**
> activateAccountUsingGET(key, email)

activateAccount

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AccountResourceApi();
var key = key_example; // String | key
var email = email_example; // String | email

try {
    api_instance.activateAccountUsingGET(key, email);
} catch (e) {
    print("Exception when calling AccountResourceApi->activateAccountUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| key | 
 **email** | **String**| email | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **changePasswordUsingPOST**
> changePasswordUsingPOST(body)

changePassword

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AccountResourceApi();
var body = new PasswordChangeDTO(); // PasswordChangeDTO | 

try {
    api_instance.changePasswordUsingPOST(body);
} catch (e) {
    print("Exception when calling AccountResourceApi->changePasswordUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PasswordChangeDTO**](PasswordChangeDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **finishPasswordResetUsingPOST**
> finishPasswordResetUsingPOST(body)

finishPasswordReset

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AccountResourceApi();
var body = new KeyAndPasswordVM(); // KeyAndPasswordVM | 

try {
    api_instance.finishPasswordResetUsingPOST(body);
} catch (e) {
    print("Exception when calling AccountResourceApi->finishPasswordResetUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**KeyAndPasswordVM**](KeyAndPasswordVM.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountUsingGET**
> AdminUserDTO getAccountUsingGET()

getAccount

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AccountResourceApi();

try {
    var result = api_instance.getAccountUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling AccountResourceApi->getAccountUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AdminUserDTO**](AdminUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **isAuthenticatedUsingGET**
> String isAuthenticatedUsingGET()

isAuthenticated

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AccountResourceApi();

try {
    var result = api_instance.isAuthenticatedUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling AccountResourceApi->isAuthenticatedUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerAccountUsingPOST**
> registerAccountUsingPOST(body)

registerAccount

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AccountResourceApi();
var body = new ManagedUserVM(); // ManagedUserVM | 

try {
    api_instance.registerAccountUsingPOST(body);
} catch (e) {
    print("Exception when calling AccountResourceApi->registerAccountUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ManagedUserVM**](ManagedUserVM.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestPasswordResetUsingPOST**
> requestPasswordResetUsingPOST(body)

requestPasswordReset

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AccountResourceApi();
var body = new String(); // String | 

try {
    api_instance.requestPasswordResetUsingPOST(body);
} catch (e) {
    print("Exception when calling AccountResourceApi->requestPasswordResetUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**String**](String.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveAccountUsingPOST**
> saveAccountUsingPOST(body)

saveAccount

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AccountResourceApi();
var body = new AdminUserDTO(); // AdminUserDTO | 

try {
    api_instance.saveAccountUsingPOST(body);
} catch (e) {
    print("Exception when calling AccountResourceApi->saveAccountUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AdminUserDTO**](AdminUserDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

