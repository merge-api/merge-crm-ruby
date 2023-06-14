# MergeCRMClient::TasksApi

All URIs are relative to *https://api.merge.dev/api/crm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**tasks_create**](TasksApi.md#tasks_create) | **POST** /tasks |  |
| [**tasks_list**](TasksApi.md#tasks_list) | **GET** /tasks |  |
| [**tasks_meta_patch_retrieve**](TasksApi.md#tasks_meta_patch_retrieve) | **GET** /tasks/meta/patch/{id} |  |
| [**tasks_meta_post_retrieve**](TasksApi.md#tasks_meta_post_retrieve) | **GET** /tasks/meta/post |  |
| [**tasks_partial_update**](TasksApi.md#tasks_partial_update) | **PATCH** /tasks/{id} |  |
| [**tasks_remote_field_classes_list**](TasksApi.md#tasks_remote_field_classes_list) | **GET** /tasks/remote-field-classes |  |
| [**tasks_retrieve**](TasksApi.md#tasks_retrieve) | **GET** /tasks/{id} |  |


## tasks_create

> <TaskResponse> tasks_create(x_account_token, task_endpoint_request, opts)



Creates a `Task` object with the given values.

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

api_instance = MergeCRMClient::TasksApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
task_endpoint_request = MergeCRMClient::TaskEndpointRequest.new({model: MergeCRMClient::TaskRequest.new}) # TaskEndpointRequest | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.tasks_create(x_account_token, task_endpoint_request, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling TasksApi->tasks_create: #{e}"
end
```

#### Using the tasks_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaskResponse>, Integer, Hash)> tasks_create_with_http_info(x_account_token, task_endpoint_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.tasks_create_with_http_info(x_account_token, task_endpoint_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaskResponse>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling TasksApi->tasks_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **task_endpoint_request** | [**TaskEndpointRequest**](TaskEndpointRequest.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**TaskResponse**](TaskResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## tasks_list

> <PaginatedTaskList> tasks_list(x_account_token, opts)



Returns a list of `Task` objects.

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

api_instance = MergeCRMClient::TasksApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
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
  
  result = api_instance.tasks_list(x_account_token, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling TasksApi->tasks_list: #{e}"
end
```

#### Using the tasks_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedTaskList>, Integer, Hash)> tasks_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.tasks_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedTaskList>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling TasksApi->tasks_list_with_http_info: #{e}"
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
| **include_remote_fields** | **Boolean** | Whether to include all remote fields, including fields that Merge did not map to common models, in a normalized format. | [optional] |
| **modified_after** | **Time** | If provided, only objects synced by Merge after this date time will be returned. | [optional] |
| **modified_before** | **Time** | If provided, only objects synced by Merge before this date time will be returned. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |

### Return type

[**PaginatedTaskList**](PaginatedTaskList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tasks_meta_patch_retrieve

> <MetaResponse> tasks_meta_patch_retrieve(x_account_token, id)



Returns metadata for `Task` PATCHs.

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

api_instance = MergeCRMClient::TasksApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 

begin
  
  result = api_instance.tasks_meta_patch_retrieve(x_account_token, id)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling TasksApi->tasks_meta_patch_retrieve: #{e}"
end
```

#### Using the tasks_meta_patch_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaResponse>, Integer, Hash)> tasks_meta_patch_retrieve_with_http_info(x_account_token, id)

```ruby
begin
  
  data, status_code, headers = api_instance.tasks_meta_patch_retrieve_with_http_info(x_account_token, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaResponse>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling TasksApi->tasks_meta_patch_retrieve_with_http_info: #{e}"
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


## tasks_meta_post_retrieve

> <MetaResponse> tasks_meta_post_retrieve(x_account_token)



Returns metadata for `Task` POSTs.

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

api_instance = MergeCRMClient::TasksApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.tasks_meta_post_retrieve(x_account_token)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling TasksApi->tasks_meta_post_retrieve: #{e}"
end
```

#### Using the tasks_meta_post_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaResponse>, Integer, Hash)> tasks_meta_post_retrieve_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.tasks_meta_post_retrieve_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaResponse>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling TasksApi->tasks_meta_post_retrieve_with_http_info: #{e}"
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


## tasks_partial_update

> <TaskResponse> tasks_partial_update(x_account_token, id, patched_task_endpoint_request, opts)



Updates a `Task` object with the given `id`.

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

api_instance = MergeCRMClient::TasksApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
patched_task_endpoint_request = MergeCRMClient::PatchedTaskEndpointRequest.new({model: MergeCRMClient::PatchedTaskRequest.new}) # PatchedTaskEndpointRequest | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.tasks_partial_update(x_account_token, id, patched_task_endpoint_request, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling TasksApi->tasks_partial_update: #{e}"
end
```

#### Using the tasks_partial_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaskResponse>, Integer, Hash)> tasks_partial_update_with_http_info(x_account_token, id, patched_task_endpoint_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.tasks_partial_update_with_http_info(x_account_token, id, patched_task_endpoint_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaskResponse>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling TasksApi->tasks_partial_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **patched_task_endpoint_request** | [**PatchedTaskEndpointRequest**](PatchedTaskEndpointRequest.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**TaskResponse**](TaskResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## tasks_remote_field_classes_list

> <PaginatedRemoteFieldClassList> tasks_remote_field_classes_list(x_account_token, opts)



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

api_instance = MergeCRMClient::TasksApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  include_remote_fields: true, # Boolean | Whether to include all remote fields, including fields that Merge did not map to common models, in a normalized format.
  page_size: 56 # Integer | Number of results to return per page.
}

begin
  
  result = api_instance.tasks_remote_field_classes_list(x_account_token, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling TasksApi->tasks_remote_field_classes_list: #{e}"
end
```

#### Using the tasks_remote_field_classes_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedRemoteFieldClassList>, Integer, Hash)> tasks_remote_field_classes_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.tasks_remote_field_classes_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedRemoteFieldClassList>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling TasksApi->tasks_remote_field_classes_list_with_http_info: #{e}"
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


## tasks_retrieve

> <Task> tasks_retrieve(x_account_token, id, opts)



Returns a `Task` object with the given `id`.

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

api_instance = MergeCRMClient::TasksApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  expand: 'account', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  include_remote_fields: true # Boolean | Whether to include all remote fields, including fields that Merge did not map to common models, in a normalized format.
}

begin
  
  result = api_instance.tasks_retrieve(x_account_token, id, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling TasksApi->tasks_retrieve: #{e}"
end
```

#### Using the tasks_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Task>, Integer, Hash)> tasks_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.tasks_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Task>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling TasksApi->tasks_retrieve_with_http_info: #{e}"
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

[**Task**](Task.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

