# MergeCRMClient::AssociationTypesApi

All URIs are relative to *https://api.merge.dev/api/crm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**custom_object_classes_association_types_create**](AssociationTypesApi.md#custom_object_classes_association_types_create) | **POST** /custom-object-classes/{custom_object_class_id}/association-types |  |
| [**custom_object_classes_association_types_list**](AssociationTypesApi.md#custom_object_classes_association_types_list) | **GET** /custom-object-classes/{custom_object_class_id}/association-types |  |
| [**custom_object_classes_association_types_meta_post_retrieve**](AssociationTypesApi.md#custom_object_classes_association_types_meta_post_retrieve) | **GET** /custom-object-classes/{custom_object_class_id}/association-types/meta/post |  |
| [**custom_object_classes_association_types_retrieve**](AssociationTypesApi.md#custom_object_classes_association_types_retrieve) | **GET** /custom-object-classes/{custom_object_class_id}/association-types/{id} |  |


## custom_object_classes_association_types_create

> <CRMAssociationTypeResponse> custom_object_classes_association_types_create(x_account_token, custom_object_class_id, crm_association_type_endpoint_request, opts)



Creates an `AssociationType` object with the given values.

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

api_instance = MergeCRMClient::AssociationTypesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
custom_object_class_id = TODO # String | 
crm_association_type_endpoint_request = MergeCRMClient::CRMAssociationTypeEndpointRequest.new({model: MergeCRMClient::AssociationTypeRequestRequest.new({source_object_class: MergeCRMClient::ObjectClassDescriptionRequest.new({id: 'id_example', origin_type: MergeCRMClient::OriginTypeEnum::CUSTOM_OBJECT}), target_object_classes: [MergeCRMClient::ObjectClassDescriptionRequest.new({id: 'id_example', origin_type: MergeCRMClient::OriginTypeEnum::CUSTOM_OBJECT})], remote_key_name: 'remote_key_name_example'})}) # CRMAssociationTypeEndpointRequest | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.custom_object_classes_association_types_create(x_account_token, custom_object_class_id, crm_association_type_endpoint_request, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling AssociationTypesApi->custom_object_classes_association_types_create: #{e}"
end
```

#### Using the custom_object_classes_association_types_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CRMAssociationTypeResponse>, Integer, Hash)> custom_object_classes_association_types_create_with_http_info(x_account_token, custom_object_class_id, crm_association_type_endpoint_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.custom_object_classes_association_types_create_with_http_info(x_account_token, custom_object_class_id, crm_association_type_endpoint_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CRMAssociationTypeResponse>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling AssociationTypesApi->custom_object_classes_association_types_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **custom_object_class_id** | [**String**](.md) |  |  |
| **crm_association_type_endpoint_request** | [**CRMAssociationTypeEndpointRequest**](CRMAssociationTypeEndpointRequest.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**CRMAssociationTypeResponse**](CRMAssociationTypeResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## custom_object_classes_association_types_list

> <PaginatedAssociationTypeList> custom_object_classes_association_types_list(x_account_token, custom_object_class_id, opts)



Returns a list of `AssociationType` objects.

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

api_instance = MergeCRMClient::AssociationTypesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
custom_object_class_id = TODO # String | 
opts = {
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  expand: 'target_object_classes', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge after this date time will be returned.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge before this date time will be returned.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  
  result = api_instance.custom_object_classes_association_types_list(x_account_token, custom_object_class_id, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling AssociationTypesApi->custom_object_classes_association_types_list: #{e}"
end
```

#### Using the custom_object_classes_association_types_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedAssociationTypeList>, Integer, Hash)> custom_object_classes_association_types_list_with_http_info(x_account_token, custom_object_class_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.custom_object_classes_association_types_list_with_http_info(x_account_token, custom_object_class_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedAssociationTypeList>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling AssociationTypesApi->custom_object_classes_association_types_list_with_http_info: #{e}"
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
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was marked as deleted by third party webhooks. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **modified_after** | **Time** | If provided, only objects synced by Merge after this date time will be returned. | [optional] |
| **modified_before** | **Time** | If provided, only objects synced by Merge before this date time will be returned. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |

### Return type

[**PaginatedAssociationTypeList**](PaginatedAssociationTypeList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## custom_object_classes_association_types_meta_post_retrieve

> <MetaResponse> custom_object_classes_association_types_meta_post_retrieve(x_account_token, custom_object_class_id)



Returns metadata for `CRMAssociationType` POSTs.

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

api_instance = MergeCRMClient::AssociationTypesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
custom_object_class_id = TODO # String | 

begin
  
  result = api_instance.custom_object_classes_association_types_meta_post_retrieve(x_account_token, custom_object_class_id)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling AssociationTypesApi->custom_object_classes_association_types_meta_post_retrieve: #{e}"
end
```

#### Using the custom_object_classes_association_types_meta_post_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaResponse>, Integer, Hash)> custom_object_classes_association_types_meta_post_retrieve_with_http_info(x_account_token, custom_object_class_id)

```ruby
begin
  
  data, status_code, headers = api_instance.custom_object_classes_association_types_meta_post_retrieve_with_http_info(x_account_token, custom_object_class_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaResponse>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling AssociationTypesApi->custom_object_classes_association_types_meta_post_retrieve_with_http_info: #{e}"
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


## custom_object_classes_association_types_retrieve

> <AssociationType> custom_object_classes_association_types_retrieve(x_account_token, custom_object_class_id, id, opts)



Returns an `AssociationType` object with the given `id`.

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

api_instance = MergeCRMClient::AssociationTypesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
custom_object_class_id = TODO # String | 
id = TODO # String | 
opts = {
  expand: 'target_object_classes', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
}

begin
  
  result = api_instance.custom_object_classes_association_types_retrieve(x_account_token, custom_object_class_id, id, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling AssociationTypesApi->custom_object_classes_association_types_retrieve: #{e}"
end
```

#### Using the custom_object_classes_association_types_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationType>, Integer, Hash)> custom_object_classes_association_types_retrieve_with_http_info(x_account_token, custom_object_class_id, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.custom_object_classes_association_types_retrieve_with_http_info(x_account_token, custom_object_class_id, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationType>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling AssociationTypesApi->custom_object_classes_association_types_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **custom_object_class_id** | [**String**](.md) |  |  |
| **id** | [**String**](.md) |  |  |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |

### Return type

[**AssociationType**](AssociationType.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

