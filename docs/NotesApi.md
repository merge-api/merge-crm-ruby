# MergeCRMClient::NotesApi

All URIs are relative to *https://api.merge.dev/api/crm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**notes_create**](NotesApi.md#notes_create) | **POST** /notes |  |
| [**notes_list**](NotesApi.md#notes_list) | **GET** /notes |  |
| [**notes_meta_post_retrieve**](NotesApi.md#notes_meta_post_retrieve) | **GET** /notes/meta/post |  |
| [**notes_remote_field_classes_list**](NotesApi.md#notes_remote_field_classes_list) | **GET** /notes/remote-field-classes |  |
| [**notes_retrieve**](NotesApi.md#notes_retrieve) | **GET** /notes/{id} |  |


## notes_create

> <NoteResponse> notes_create(x_account_token, note_endpoint_request, opts)



Creates a `Note` object with the given values.

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

api_instance = MergeCRMClient::NotesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
note_endpoint_request = MergeCRMClient::NoteEndpointRequest.new({model: MergeCRMClient::NoteRequest.new}) # NoteEndpointRequest | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.notes_create(x_account_token, note_endpoint_request, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling NotesApi->notes_create: #{e}"
end
```

#### Using the notes_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteResponse>, Integer, Hash)> notes_create_with_http_info(x_account_token, note_endpoint_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.notes_create_with_http_info(x_account_token, note_endpoint_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteResponse>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling NotesApi->notes_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **note_endpoint_request** | [**NoteEndpointRequest**](NoteEndpointRequest.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**NoteResponse**](NoteResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## notes_list

> <PaginatedNoteList> notes_list(x_account_token, opts)



Returns a list of `Note` objects.

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

api_instance = MergeCRMClient::NotesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  account_id: 'account_id_example', # String | If provided, will only return notes with this account.
  contact_id: 'contact_id_example', # String | If provided, will only return notes with this contact.
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  expand: 'account', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  include_remote_fields: true, # Boolean | Whether to include all remote fields, including fields that Merge did not map to common models, in a normalized format.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge after this date time will be returned.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge before this date time will be returned.
  opportunity_id: 'opportunity_id_example', # String | If provided, will only return notes with this opportunity.
  owner_id: 'owner_id_example', # String | If provided, will only return notes with this owner.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  
  result = api_instance.notes_list(x_account_token, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling NotesApi->notes_list: #{e}"
end
```

#### Using the notes_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedNoteList>, Integer, Hash)> notes_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.notes_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedNoteList>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling NotesApi->notes_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **account_id** | **String** | If provided, will only return notes with this account. | [optional] |
| **contact_id** | **String** | If provided, will only return notes with this contact. | [optional] |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was marked as deleted by third party webhooks. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **include_remote_fields** | **Boolean** | Whether to include all remote fields, including fields that Merge did not map to common models, in a normalized format. | [optional] |
| **modified_after** | **Time** | If provided, only objects synced by Merge after this date time will be returned. | [optional] |
| **modified_before** | **Time** | If provided, only objects synced by Merge before this date time will be returned. | [optional] |
| **opportunity_id** | **String** | If provided, will only return notes with this opportunity. | [optional] |
| **owner_id** | **String** | If provided, will only return notes with this owner. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |

### Return type

[**PaginatedNoteList**](PaginatedNoteList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## notes_meta_post_retrieve

> <MetaResponse> notes_meta_post_retrieve(x_account_token)



Returns metadata for `Note` POSTs.

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

api_instance = MergeCRMClient::NotesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.notes_meta_post_retrieve(x_account_token)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling NotesApi->notes_meta_post_retrieve: #{e}"
end
```

#### Using the notes_meta_post_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaResponse>, Integer, Hash)> notes_meta_post_retrieve_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.notes_meta_post_retrieve_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaResponse>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling NotesApi->notes_meta_post_retrieve_with_http_info: #{e}"
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


## notes_remote_field_classes_list

> <PaginatedRemoteFieldClassList> notes_remote_field_classes_list(x_account_token, opts)



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

api_instance = MergeCRMClient::NotesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  include_remote_fields: true, # Boolean | Whether to include all remote fields, including fields that Merge did not map to common models, in a normalized format.
  page_size: 56 # Integer | Number of results to return per page.
}

begin
  
  result = api_instance.notes_remote_field_classes_list(x_account_token, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling NotesApi->notes_remote_field_classes_list: #{e}"
end
```

#### Using the notes_remote_field_classes_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedRemoteFieldClassList>, Integer, Hash)> notes_remote_field_classes_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.notes_remote_field_classes_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedRemoteFieldClassList>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling NotesApi->notes_remote_field_classes_list_with_http_info: #{e}"
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


## notes_retrieve

> <Note> notes_retrieve(x_account_token, id, opts)



Returns a `Note` object with the given `id`.

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

api_instance = MergeCRMClient::NotesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  expand: 'account', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  include_remote_fields: true # Boolean | Whether to include all remote fields, including fields that Merge did not map to common models, in a normalized format.
}

begin
  
  result = api_instance.notes_retrieve(x_account_token, id, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling NotesApi->notes_retrieve: #{e}"
end
```

#### Using the notes_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Note>, Integer, Hash)> notes_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.notes_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Note>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling NotesApi->notes_retrieve_with_http_info: #{e}"
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

[**Note**](Note.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

