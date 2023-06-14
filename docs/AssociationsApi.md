# MergeCRMClient::AssociationsApi

All URIs are relative to *https://api.merge.dev/api/crm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**custom_object_classes_custom_objects_associations_list**](AssociationsApi.md#custom_object_classes_custom_objects_associations_list) | **GET** /custom-object-classes/{custom_object_class_id}/custom-objects/{object_id}/associations |  |
| [**custom_object_classes_custom_objects_associations_update**](AssociationsApi.md#custom_object_classes_custom_objects_associations_update) | **PUT** /custom-object-classes/{source_class_id}/custom-objects/{source_object_id}/associations/{target_class_id}/{target_object_id}/{association_type_id} |  |


## custom_object_classes_custom_objects_associations_list

> <PaginatedAssociationList> custom_object_classes_custom_objects_associations_list(x_account_token, custom_object_class_id, object_id, opts)



Returns a list of `Association` objects.

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

api_instance = MergeCRMClient::AssociationsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
custom_object_class_id = TODO # String | 
object_id = TODO # String | 
opts = {
  association_type_id: 'association_type_id_example', # String | If provided, will only return opportunities with this association_type.
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  expand: 'association_type', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge after this date time will be returned.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge before this date time will be returned.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  
  result = api_instance.custom_object_classes_custom_objects_associations_list(x_account_token, custom_object_class_id, object_id, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling AssociationsApi->custom_object_classes_custom_objects_associations_list: #{e}"
end
```

#### Using the custom_object_classes_custom_objects_associations_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedAssociationList>, Integer, Hash)> custom_object_classes_custom_objects_associations_list_with_http_info(x_account_token, custom_object_class_id, object_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.custom_object_classes_custom_objects_associations_list_with_http_info(x_account_token, custom_object_class_id, object_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedAssociationList>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling AssociationsApi->custom_object_classes_custom_objects_associations_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **custom_object_class_id** | [**String**](.md) |  |  |
| **object_id** | [**String**](.md) |  |  |
| **association_type_id** | **String** | If provided, will only return opportunities with this association_type. | [optional] |
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

[**PaginatedAssociationList**](PaginatedAssociationList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## custom_object_classes_custom_objects_associations_update

> <Association> custom_object_classes_custom_objects_associations_update(x_account_token, association_type_id, source_class_id, source_object_id, target_class_id, target_object_id, opts)



Creates an Association between `source_object_id` and `target_object_id` of type `association_type_id`.

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

api_instance = MergeCRMClient::AssociationsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
association_type_id = TODO # String | 
source_class_id = TODO # String | 
source_object_id = TODO # String | 
target_class_id = 'target_class_id_example' # String | 
target_object_id = TODO # String | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.custom_object_classes_custom_objects_associations_update(x_account_token, association_type_id, source_class_id, source_object_id, target_class_id, target_object_id, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling AssociationsApi->custom_object_classes_custom_objects_associations_update: #{e}"
end
```

#### Using the custom_object_classes_custom_objects_associations_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Association>, Integer, Hash)> custom_object_classes_custom_objects_associations_update_with_http_info(x_account_token, association_type_id, source_class_id, source_object_id, target_class_id, target_object_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.custom_object_classes_custom_objects_associations_update_with_http_info(x_account_token, association_type_id, source_class_id, source_object_id, target_class_id, target_object_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Association>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling AssociationsApi->custom_object_classes_custom_objects_associations_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **association_type_id** | [**String**](.md) |  |  |
| **source_class_id** | [**String**](.md) |  |  |
| **source_object_id** | [**String**](.md) |  |  |
| **target_class_id** | **String** |  |  |
| **target_object_id** | [**String**](.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**Association**](Association.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

