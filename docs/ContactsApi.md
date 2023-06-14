# MergeCRMClient::ContactsApi

All URIs are relative to *https://api.merge.dev/api/crm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**contacts_create**](ContactsApi.md#contacts_create) | **POST** /contacts |  |
| [**contacts_ignore_create**](ContactsApi.md#contacts_ignore_create) | **POST** /contacts/ignore/{model_id} |  |
| [**contacts_list**](ContactsApi.md#contacts_list) | **GET** /contacts |  |
| [**contacts_meta_patch_retrieve**](ContactsApi.md#contacts_meta_patch_retrieve) | **GET** /contacts/meta/patch/{id} |  |
| [**contacts_meta_post_retrieve**](ContactsApi.md#contacts_meta_post_retrieve) | **GET** /contacts/meta/post |  |
| [**contacts_partial_update**](ContactsApi.md#contacts_partial_update) | **PATCH** /contacts/{id} |  |
| [**contacts_remote_field_classes_list**](ContactsApi.md#contacts_remote_field_classes_list) | **GET** /contacts/remote-field-classes |  |
| [**contacts_retrieve**](ContactsApi.md#contacts_retrieve) | **GET** /contacts/{id} |  |


## contacts_create

> <CRMContactResponse> contacts_create(x_account_token, crm_contact_endpoint_request, opts)



Creates a `Contact` object with the given values.

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

api_instance = MergeCRMClient::ContactsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
crm_contact_endpoint_request = MergeCRMClient::CRMContactEndpointRequest.new({model: MergeCRMClient::ContactRequest.new}) # CRMContactEndpointRequest | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.contacts_create(x_account_token, crm_contact_endpoint_request, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling ContactsApi->contacts_create: #{e}"
end
```

#### Using the contacts_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CRMContactResponse>, Integer, Hash)> contacts_create_with_http_info(x_account_token, crm_contact_endpoint_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.contacts_create_with_http_info(x_account_token, crm_contact_endpoint_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CRMContactResponse>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling ContactsApi->contacts_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **crm_contact_endpoint_request** | [**CRMContactEndpointRequest**](CRMContactEndpointRequest.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**CRMContactResponse**](CRMContactResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## contacts_ignore_create

> contacts_ignore_create(x_account_token, model_id, ignore_common_model_request)



Ignores a specific row based on the `model_id` in the url. These records will have their properties set to null, and will not be updated in future syncs. The \"reason\" and \"message\" fields in the request body will be stored for audit purposes.

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

api_instance = MergeCRMClient::ContactsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
model_id = TODO # String | 
ignore_common_model_request = MergeCRMClient::IgnoreCommonModelRequest.new({reason: MergeCRMClient::ReasonEnum::GENERAL_CUSTOMER_REQUEST}) # IgnoreCommonModelRequest | 

begin
  
  api_instance.contacts_ignore_create(x_account_token, model_id, ignore_common_model_request)
rescue MergeCRMClient::ApiError => e
  puts "Error when calling ContactsApi->contacts_ignore_create: #{e}"
end
```

#### Using the contacts_ignore_create_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> contacts_ignore_create_with_http_info(x_account_token, model_id, ignore_common_model_request)

```ruby
begin
  
  data, status_code, headers = api_instance.contacts_ignore_create_with_http_info(x_account_token, model_id, ignore_common_model_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MergeCRMClient::ApiError => e
  puts "Error when calling ContactsApi->contacts_ignore_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **model_id** | [**String**](.md) |  |  |
| **ignore_common_model_request** | [**IgnoreCommonModelRequest**](IgnoreCommonModelRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: Not defined


## contacts_list

> <PaginatedContactList> contacts_list(x_account_token, opts)



Returns a list of `Contact` objects.

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

api_instance = MergeCRMClient::ContactsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  account_id: 'account_id_example', # String | If provided, will only return contacts with this account.
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  expand: 'account', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  include_remote_fields: true, # Boolean | Whether to include all remote fields, including fields that Merge did not map to common models, in a normalized format.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge after this date time will be returned.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge before this date time will be returned.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  
  result = api_instance.contacts_list(x_account_token, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling ContactsApi->contacts_list: #{e}"
end
```

#### Using the contacts_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedContactList>, Integer, Hash)> contacts_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.contacts_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedContactList>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling ContactsApi->contacts_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **account_id** | **String** | If provided, will only return contacts with this account. | [optional] |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was marked as deleted by third party webhooks. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **include_remote_fields** | **Boolean** | Whether to include all remote fields, including fields that Merge did not map to common models, in a normalized format. | [optional] |
| **modified_after** | **Time** | If provided, only objects synced by Merge after this date time will be returned. | [optional] |
| **modified_before** | **Time** | If provided, only objects synced by Merge before this date time will be returned. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |

### Return type

[**PaginatedContactList**](PaginatedContactList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## contacts_meta_patch_retrieve

> <MetaResponse> contacts_meta_patch_retrieve(x_account_token, id)



Returns metadata for `CRMContact` PATCHs.

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

api_instance = MergeCRMClient::ContactsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 

begin
  
  result = api_instance.contacts_meta_patch_retrieve(x_account_token, id)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling ContactsApi->contacts_meta_patch_retrieve: #{e}"
end
```

#### Using the contacts_meta_patch_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaResponse>, Integer, Hash)> contacts_meta_patch_retrieve_with_http_info(x_account_token, id)

```ruby
begin
  
  data, status_code, headers = api_instance.contacts_meta_patch_retrieve_with_http_info(x_account_token, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaResponse>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling ContactsApi->contacts_meta_patch_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |

### Return type

[**MetaResponse**](MetaResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## contacts_meta_post_retrieve

> <MetaResponse> contacts_meta_post_retrieve(x_account_token)



Returns metadata for `CRMContact` POSTs.

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

api_instance = MergeCRMClient::ContactsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.contacts_meta_post_retrieve(x_account_token)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling ContactsApi->contacts_meta_post_retrieve: #{e}"
end
```

#### Using the contacts_meta_post_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaResponse>, Integer, Hash)> contacts_meta_post_retrieve_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.contacts_meta_post_retrieve_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaResponse>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling ContactsApi->contacts_meta_post_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |

### Return type

[**MetaResponse**](MetaResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## contacts_partial_update

> <CRMContactResponse> contacts_partial_update(x_account_token, id, patched_crm_contact_endpoint_request, opts)



Updates a `Contact` object with the given `id`.

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

api_instance = MergeCRMClient::ContactsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
patched_crm_contact_endpoint_request = MergeCRMClient::PatchedCRMContactEndpointRequest.new({model: MergeCRMClient::PatchedContactRequest.new}) # PatchedCRMContactEndpointRequest | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.contacts_partial_update(x_account_token, id, patched_crm_contact_endpoint_request, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling ContactsApi->contacts_partial_update: #{e}"
end
```

#### Using the contacts_partial_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CRMContactResponse>, Integer, Hash)> contacts_partial_update_with_http_info(x_account_token, id, patched_crm_contact_endpoint_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.contacts_partial_update_with_http_info(x_account_token, id, patched_crm_contact_endpoint_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CRMContactResponse>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling ContactsApi->contacts_partial_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **patched_crm_contact_endpoint_request** | [**PatchedCRMContactEndpointRequest**](PatchedCRMContactEndpointRequest.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**CRMContactResponse**](CRMContactResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## contacts_remote_field_classes_list

> <PaginatedRemoteFieldClassList> contacts_remote_field_classes_list(x_account_token, opts)



Returns a list of `RemoteFieldClass` objects.

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

api_instance = MergeCRMClient::ContactsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  include_remote_fields: true, # Boolean | Whether to include all remote fields, including fields that Merge did not map to common models, in a normalized format.
  page_size: 56 # Integer | Number of results to return per page.
}

begin
  
  result = api_instance.contacts_remote_field_classes_list(x_account_token, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling ContactsApi->contacts_remote_field_classes_list: #{e}"
end
```

#### Using the contacts_remote_field_classes_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedRemoteFieldClassList>, Integer, Hash)> contacts_remote_field_classes_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.contacts_remote_field_classes_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedRemoteFieldClassList>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling ContactsApi->contacts_remote_field_classes_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was marked as deleted by third party webhooks. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **include_remote_fields** | **Boolean** | Whether to include all remote fields, including fields that Merge did not map to common models, in a normalized format. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |

### Return type

[**PaginatedRemoteFieldClassList**](PaginatedRemoteFieldClassList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## contacts_retrieve

> <Contact> contacts_retrieve(x_account_token, id, opts)



Returns a `Contact` object with the given `id`.

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

api_instance = MergeCRMClient::ContactsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  expand: 'account', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  include_remote_fields: true # Boolean | Whether to include all remote fields, including fields that Merge did not map to common models, in a normalized format.
}

begin
  
  result = api_instance.contacts_retrieve(x_account_token, id, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling ContactsApi->contacts_retrieve: #{e}"
end
```

#### Using the contacts_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Contact>, Integer, Hash)> contacts_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.contacts_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Contact>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling ContactsApi->contacts_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **include_remote_fields** | **Boolean** | Whether to include all remote fields, including fields that Merge did not map to common models, in a normalized format. | [optional] |

### Return type

[**Contact**](Contact.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

