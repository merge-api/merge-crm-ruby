# MergeCRMClient::LeadsApi

All URIs are relative to *https://api.merge.dev/api/crm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**leads_create**](LeadsApi.md#leads_create) | **POST** /leads |  |
| [**leads_list**](LeadsApi.md#leads_list) | **GET** /leads |  |
| [**leads_meta_post_retrieve**](LeadsApi.md#leads_meta_post_retrieve) | **GET** /leads/meta/post |  |
| [**leads_retrieve**](LeadsApi.md#leads_retrieve) | **GET** /leads/{id} |  |


## leads_create

> <LeadResponse> leads_create(x_account_token, lead_endpoint_request, opts)



Creates a `Lead` object with the given values.

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

api_instance = MergeCRMClient::LeadsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
lead_endpoint_request = MergeCRMClient::LeadEndpointRequest.new({model: MergeCRMClient::LeadRequest.new}) # LeadEndpointRequest | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.leads_create(x_account_token, lead_endpoint_request, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling LeadsApi->leads_create: #{e}"
end
```

#### Using the leads_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeadResponse>, Integer, Hash)> leads_create_with_http_info(x_account_token, lead_endpoint_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.leads_create_with_http_info(x_account_token, lead_endpoint_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeadResponse>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling LeadsApi->leads_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **lead_endpoint_request** | [**LeadEndpointRequest**](LeadEndpointRequest.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**LeadResponse**](LeadResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## leads_list

> <PaginatedLeadList> leads_list(x_account_token, opts)



Returns a list of `Lead` objects.

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

api_instance = MergeCRMClient::LeadsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  converted_account_id: 'converted_account_id_example', # String | If provided, will only return leads with this account.
  converted_contact_id: 'converted_contact_id_example', # String | If provided, will only return leads with this contact.
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  expand: 'converted_account', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified after this datetime.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified before this datetime.
  owner_id: 'owner_id_example', # String | If provided, will only return leads with this owner.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  
  result = api_instance.leads_list(x_account_token, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling LeadsApi->leads_list: #{e}"
end
```

#### Using the leads_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedLeadList>, Integer, Hash)> leads_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.leads_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedLeadList>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling LeadsApi->leads_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **converted_account_id** | **String** | If provided, will only return leads with this account. | [optional] |
| **converted_contact_id** | **String** | If provided, will only return leads with this contact. | [optional] |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was marked as deleted by third party webhooks. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **modified_after** | **Time** | If provided, will only return objects modified after this datetime. | [optional] |
| **modified_before** | **Time** | If provided, will only return objects modified before this datetime. | [optional] |
| **owner_id** | **String** | If provided, will only return leads with this owner. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |

### Return type

[**PaginatedLeadList**](PaginatedLeadList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## leads_meta_post_retrieve

> <MetaResponse> leads_meta_post_retrieve(x_account_token)



Returns metadata for `Lead` POSTs.

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

api_instance = MergeCRMClient::LeadsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.leads_meta_post_retrieve(x_account_token)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling LeadsApi->leads_meta_post_retrieve: #{e}"
end
```

#### Using the leads_meta_post_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaResponse>, Integer, Hash)> leads_meta_post_retrieve_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.leads_meta_post_retrieve_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaResponse>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling LeadsApi->leads_meta_post_retrieve_with_http_info: #{e}"
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


## leads_retrieve

> <Lead> leads_retrieve(x_account_token, id, opts)



Returns a `Lead` object with the given `id`.

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

api_instance = MergeCRMClient::LeadsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  expand: 'converted_account', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
}

begin
  
  result = api_instance.leads_retrieve(x_account_token, id, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling LeadsApi->leads_retrieve: #{e}"
end
```

#### Using the leads_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Lead>, Integer, Hash)> leads_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.leads_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Lead>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling LeadsApi->leads_retrieve_with_http_info: #{e}"
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

[**Lead**](Lead.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

