# MergeCRMClient::CustomObjectClassesApi

All URIs are relative to *https://api.merge.dev/api/crm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**custom_object_classes_generator_update**](CustomObjectClassesApi.md#custom_object_classes_generator_update) | **PUT** /custom-object-classes/generator/{generator_id} |  |
| [**custom_object_classes_list**](CustomObjectClassesApi.md#custom_object_classes_list) | **GET** /custom-object-classes |  |
| [**custom_object_classes_retrieve**](CustomObjectClassesApi.md#custom_object_classes_retrieve) | **GET** /custom-object-classes/{id} |  |


## custom_object_classes_generator_update

> <CustomObjectClass> custom_object_classes_generator_update(x_account_token, generator_id, opts)



Updates a `CustomObjectClass` object with the given `id`.

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

api_instance = MergeCRMClient::CustomObjectClassesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
generator_id = TODO # String | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.custom_object_classes_generator_update(x_account_token, generator_id, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling CustomObjectClassesApi->custom_object_classes_generator_update: #{e}"
end
```

#### Using the custom_object_classes_generator_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomObjectClass>, Integer, Hash)> custom_object_classes_generator_update_with_http_info(x_account_token, generator_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.custom_object_classes_generator_update_with_http_info(x_account_token, generator_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomObjectClass>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling CustomObjectClassesApi->custom_object_classes_generator_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **generator_id** | [**String**](.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**CustomObjectClass**](CustomObjectClass.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## custom_object_classes_list

> <PaginatedCustomObjectClassList> custom_object_classes_list(x_account_token, opts)



Returns a list of `CustomObjectClass` objects.

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

api_instance = MergeCRMClient::CustomObjectClassesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  expand: 'fields', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge after this date time will be returned.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge before this date time will be returned.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  
  result = api_instance.custom_object_classes_list(x_account_token, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling CustomObjectClassesApi->custom_object_classes_list: #{e}"
end
```

#### Using the custom_object_classes_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedCustomObjectClassList>, Integer, Hash)> custom_object_classes_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.custom_object_classes_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedCustomObjectClassList>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling CustomObjectClassesApi->custom_object_classes_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was marked as deleted by third party webhooks. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **modified_after** | **Time** | If provided, only objects synced by Merge after this date time will be returned. | [optional] |
| **modified_before** | **Time** | If provided, only objects synced by Merge before this date time will be returned. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |

### Return type

[**PaginatedCustomObjectClassList**](PaginatedCustomObjectClassList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## custom_object_classes_retrieve

> <CustomObjectClass> custom_object_classes_retrieve(x_account_token, id, opts)



Returns a `CustomObjectClass` object with the given `id`.

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

api_instance = MergeCRMClient::CustomObjectClassesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  expand: 'fields', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
}

begin
  
  result = api_instance.custom_object_classes_retrieve(x_account_token, id, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling CustomObjectClassesApi->custom_object_classes_retrieve: #{e}"
end
```

#### Using the custom_object_classes_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomObjectClass>, Integer, Hash)> custom_object_classes_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.custom_object_classes_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomObjectClass>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling CustomObjectClassesApi->custom_object_classes_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |

### Return type

[**CustomObjectClass**](CustomObjectClass.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

