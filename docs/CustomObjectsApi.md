# MergeCRMClient::CustomObjectsApi

All URIs are relative to *https://api.merge.dev/api/crm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**custom_object_classes_custom_objects_create**](CustomObjectsApi.md#custom_object_classes_custom_objects_create) | **POST** /custom-object-classes/{custom_object_class_id}/custom-objects |  |
| [**custom_object_classes_custom_objects_list**](CustomObjectsApi.md#custom_object_classes_custom_objects_list) | **GET** /custom-object-classes/{custom_object_class_id}/custom-objects |  |
| [**custom_object_classes_custom_objects_meta_patch_retrieve**](CustomObjectsApi.md#custom_object_classes_custom_objects_meta_patch_retrieve) | **GET** /custom-object-classes/{custom_object_class_id}/custom-objects/meta/patch/{id} |  |
| [**custom_object_classes_custom_objects_meta_post_retrieve**](CustomObjectsApi.md#custom_object_classes_custom_objects_meta_post_retrieve) | **GET** /custom-object-classes/{custom_object_class_id}/custom-objects/meta/post |  |
| [**custom_object_classes_custom_objects_partial_update**](CustomObjectsApi.md#custom_object_classes_custom_objects_partial_update) | **PATCH** /custom-object-classes/{custom_object_class_id}/custom-objects/{id} |  |
| [**custom_object_classes_custom_objects_retrieve**](CustomObjectsApi.md#custom_object_classes_custom_objects_retrieve) | **GET** /custom-object-classes/{custom_object_class_id}/custom-objects/{id} |  |


## custom_object_classes_custom_objects_create

> <CRMCustomObjectResponse> custom_object_classes_custom_objects_create(x_account_token, custom_object_class_id, crm_custom_object_endpoint_request, opts)



Creates a `CustomObject` object with the given values.

### Examples

```ruby
require 'time'
require 'merge_crm_client'
# setup authorization
MergeCRMClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = MergeCRMClient::CustomObjectsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
custom_object_class_id = TODO # String | 
crm_custom_object_endpoint_request = MergeCRMClient::CRMCustomObjectEndpointRequest.new({model: MergeCRMClient::CustomObjectRequest.new({fields: { key: TODO}})}) # CRMCustomObjectEndpointRequest | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.custom_object_classes_custom_objects_create(x_account_token, custom_object_class_id, crm_custom_object_endpoint_request, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling CustomObjectsApi->custom_object_classes_custom_objects_create: #{e}"
end
```

#### Using the custom_object_classes_custom_objects_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CRMCustomObjectResponse>, Integer, Hash)> custom_object_classes_custom_objects_create_with_http_info(x_account_token, custom_object_class_id, crm_custom_object_endpoint_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.custom_object_classes_custom_objects_create_with_http_info(x_account_token, custom_object_class_id, crm_custom_object_endpoint_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CRMCustomObjectResponse>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling CustomObjectsApi->custom_object_classes_custom_objects_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **custom_object_class_id** | [**String**](.md) |  |  |
| **crm_custom_object_endpoint_request** | [**CRMCustomObjectEndpointRequest**](CRMCustomObjectEndpointRequest.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**CRMCustomObjectResponse**](CRMCustomObjectResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## custom_object_classes_custom_objects_list

> <PaginatedCustomObjectList> custom_object_classes_custom_objects_list(x_account_token, custom_object_class_id, opts)



Returns a list of `CustomObject` objects.

### Examples

```ruby
require 'time'
require 'merge_crm_client'
# setup authorization
MergeCRMClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = MergeCRMClient::CustomObjectsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
custom_object_class_id = TODO # String | 
opts = {
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  include_remote_fields: true, # Boolean | Whether to include all remote fields, including fields that Merge did not map to common models, in a normalized format.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge after this date time will be returned.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge before this date time will be returned.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  
  result = api_instance.custom_object_classes_custom_objects_list(x_account_token, custom_object_class_id, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling CustomObjectsApi->custom_object_classes_custom_objects_list: #{e}"
end
```

#### Using the custom_object_classes_custom_objects_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedCustomObjectList>, Integer, Hash)> custom_object_classes_custom_objects_list_with_http_info(x_account_token, custom_object_class_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.custom_object_classes_custom_objects_list_with_http_info(x_account_token, custom_object_class_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedCustomObjectList>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling CustomObjectsApi->custom_object_classes_custom_objects_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **custom_object_class_id** | [**String**](.md) |  |  |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was marked as deleted by third party webhooks. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **include_remote_fields** | **Boolean** | Whether to include all remote fields, including fields that Merge did not map to common models, in a normalized format. | [optional] |
| **modified_after** | **Time** | If provided, only objects synced by Merge after this date time will be returned. | [optional] |
| **modified_before** | **Time** | If provided, only objects synced by Merge before this date time will be returned. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |

### Return type

[**PaginatedCustomObjectList**](PaginatedCustomObjectList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## custom_object_classes_custom_objects_meta_patch_retrieve

> <MetaResponse> custom_object_classes_custom_objects_meta_patch_retrieve(x_account_token, custom_object_class_id, id)



Returns metadata for `CRMCustomObject` PATCHs.

### Examples

```ruby
require 'time'
require 'merge_crm_client'
# setup authorization
MergeCRMClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = MergeCRMClient::CustomObjectsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
custom_object_class_id = TODO # String | 
id = TODO # String | 

begin
  
  result = api_instance.custom_object_classes_custom_objects_meta_patch_retrieve(x_account_token, custom_object_class_id, id)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling CustomObjectsApi->custom_object_classes_custom_objects_meta_patch_retrieve: #{e}"
end
```

#### Using the custom_object_classes_custom_objects_meta_patch_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaResponse>, Integer, Hash)> custom_object_classes_custom_objects_meta_patch_retrieve_with_http_info(x_account_token, custom_object_class_id, id)

```ruby
begin
  
  data, status_code, headers = api_instance.custom_object_classes_custom_objects_meta_patch_retrieve_with_http_info(x_account_token, custom_object_class_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaResponse>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling CustomObjectsApi->custom_object_classes_custom_objects_meta_patch_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **custom_object_class_id** | [**String**](.md) |  |  |
| **id** | [**String**](.md) |  |  |

### Return type

[**MetaResponse**](MetaResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## custom_object_classes_custom_objects_meta_post_retrieve

> <MetaResponse> custom_object_classes_custom_objects_meta_post_retrieve(x_account_token, custom_object_class_id)



Returns metadata for `CRMCustomObject` POSTs.

### Examples

```ruby
require 'time'
require 'merge_crm_client'
# setup authorization
MergeCRMClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = MergeCRMClient::CustomObjectsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
custom_object_class_id = TODO # String | 

begin
  
  result = api_instance.custom_object_classes_custom_objects_meta_post_retrieve(x_account_token, custom_object_class_id)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling CustomObjectsApi->custom_object_classes_custom_objects_meta_post_retrieve: #{e}"
end
```

#### Using the custom_object_classes_custom_objects_meta_post_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaResponse>, Integer, Hash)> custom_object_classes_custom_objects_meta_post_retrieve_with_http_info(x_account_token, custom_object_class_id)

```ruby
begin
  
  data, status_code, headers = api_instance.custom_object_classes_custom_objects_meta_post_retrieve_with_http_info(x_account_token, custom_object_class_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaResponse>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling CustomObjectsApi->custom_object_classes_custom_objects_meta_post_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **custom_object_class_id** | [**String**](.md) |  |  |

### Return type

[**MetaResponse**](MetaResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## custom_object_classes_custom_objects_partial_update

> <CRMCustomObjectResponse> custom_object_classes_custom_objects_partial_update(x_account_token, custom_object_class_id, id, patched_crm_custom_object_endpoint_request, opts)



Updates a `CustomObject` object with the given `id`.

### Examples

```ruby
require 'time'
require 'merge_crm_client'
# setup authorization
MergeCRMClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = MergeCRMClient::CustomObjectsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
custom_object_class_id = TODO # String | 
id = TODO # String | 
patched_crm_custom_object_endpoint_request = MergeCRMClient::PatchedCRMCustomObjectEndpointRequest.new({model: MergeCRMClient::CustomObjectRequest.new({fields: { key: TODO}})}) # PatchedCRMCustomObjectEndpointRequest | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.custom_object_classes_custom_objects_partial_update(x_account_token, custom_object_class_id, id, patched_crm_custom_object_endpoint_request, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling CustomObjectsApi->custom_object_classes_custom_objects_partial_update: #{e}"
end
```

#### Using the custom_object_classes_custom_objects_partial_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CRMCustomObjectResponse>, Integer, Hash)> custom_object_classes_custom_objects_partial_update_with_http_info(x_account_token, custom_object_class_id, id, patched_crm_custom_object_endpoint_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.custom_object_classes_custom_objects_partial_update_with_http_info(x_account_token, custom_object_class_id, id, patched_crm_custom_object_endpoint_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CRMCustomObjectResponse>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling CustomObjectsApi->custom_object_classes_custom_objects_partial_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **custom_object_class_id** | [**String**](.md) |  |  |
| **id** | [**String**](.md) |  |  |
| **patched_crm_custom_object_endpoint_request** | [**PatchedCRMCustomObjectEndpointRequest**](PatchedCRMCustomObjectEndpointRequest.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**CRMCustomObjectResponse**](CRMCustomObjectResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## custom_object_classes_custom_objects_retrieve

> <CustomObject> custom_object_classes_custom_objects_retrieve(x_account_token, custom_object_class_id, id, opts)



Returns a `CustomObject` object with the given `id`.

### Examples

```ruby
require 'time'
require 'merge_crm_client'
# setup authorization
MergeCRMClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = MergeCRMClient::CustomObjectsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
custom_object_class_id = TODO # String | 
id = TODO # String | 
opts = {
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  include_remote_fields: true # Boolean | Whether to include all remote fields, including fields that Merge did not map to common models, in a normalized format.
}

begin
  
  result = api_instance.custom_object_classes_custom_objects_retrieve(x_account_token, custom_object_class_id, id, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling CustomObjectsApi->custom_object_classes_custom_objects_retrieve: #{e}"
end
```

#### Using the custom_object_classes_custom_objects_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomObject>, Integer, Hash)> custom_object_classes_custom_objects_retrieve_with_http_info(x_account_token, custom_object_class_id, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.custom_object_classes_custom_objects_retrieve_with_http_info(x_account_token, custom_object_class_id, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomObject>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling CustomObjectsApi->custom_object_classes_custom_objects_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **custom_object_class_id** | [**String**](.md) |  |  |
| **id** | [**String**](.md) |  |  |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **include_remote_fields** | **Boolean** | Whether to include all remote fields, including fields that Merge did not map to common models, in a normalized format. | [optional] |

### Return type

[**CustomObject**](CustomObject.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

