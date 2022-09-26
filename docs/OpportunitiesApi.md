# MergeCRMClient::OpportunitiesApi

All URIs are relative to *https://api.merge.dev/api/crm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**opportunities_create**](OpportunitiesApi.md#opportunities_create) | **POST** /opportunities |  |
| [**opportunities_list**](OpportunitiesApi.md#opportunities_list) | **GET** /opportunities |  |
| [**opportunities_meta_patch_retrieve**](OpportunitiesApi.md#opportunities_meta_patch_retrieve) | **GET** /opportunities/meta/patch/{id} |  |
| [**opportunities_meta_post_retrieve**](OpportunitiesApi.md#opportunities_meta_post_retrieve) | **GET** /opportunities/meta/post |  |
| [**opportunities_partial_update**](OpportunitiesApi.md#opportunities_partial_update) | **PATCH** /opportunities/{id} |  |
| [**opportunities_retrieve**](OpportunitiesApi.md#opportunities_retrieve) | **GET** /opportunities/{id} |  |


## opportunities_create

> <OpportunityResponse> opportunities_create(x_account_token, opportunity_endpoint_request, opts)



Creates an `Opportunity` object with the given values.

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

api_instance = MergeCRMClient::OpportunitiesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opportunity_endpoint_request = MergeCRMClient::OpportunityEndpointRequest.new({model: MergeCRMClient::OpportunityRequest.new}) # OpportunityEndpointRequest | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.opportunities_create(x_account_token, opportunity_endpoint_request, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling OpportunitiesApi->opportunities_create: #{e}"
end
```

#### Using the opportunities_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OpportunityResponse>, Integer, Hash)> opportunities_create_with_http_info(x_account_token, opportunity_endpoint_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.opportunities_create_with_http_info(x_account_token, opportunity_endpoint_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OpportunityResponse>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling OpportunitiesApi->opportunities_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **opportunity_endpoint_request** | [**OpportunityEndpointRequest**](OpportunityEndpointRequest.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**OpportunityResponse**](OpportunityResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## opportunities_list

> <PaginatedOpportunityList> opportunities_list(x_account_token, opts)



Returns a list of `Opportunity` objects.

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

api_instance = MergeCRMClient::OpportunitiesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  account_id: 'account_id_example', # String | If provided, will only return opportunities with this account.
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  expand: 'account', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified after this datetime.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified before this datetime.
  owner_id: 'owner_id_example', # String | If provided, will only return opportunities with this owner.
  page_size: 56, # Integer | Number of results to return per page.
  remote_fields: 'status', # String | Which fields should be returned in non-normalized form.
  remote_id: 'remote_id_example', # String | The API provider's ID for the given object.
  stage_id: 'stage_id_example', # String | If provided, will only return opportunities with this stage.
  status: 'LOST' # String | If provided, will only return opportunities with this status. Options: ('OPEN', 'WON', 'LOST')
}

begin
  
  result = api_instance.opportunities_list(x_account_token, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling OpportunitiesApi->opportunities_list: #{e}"
end
```

#### Using the opportunities_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedOpportunityList>, Integer, Hash)> opportunities_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.opportunities_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedOpportunityList>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling OpportunitiesApi->opportunities_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **account_id** | **String** | If provided, will only return opportunities with this account. | [optional] |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was marked as deleted by third party webhooks. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **modified_after** | **Time** | If provided, will only return objects modified after this datetime. | [optional] |
| **modified_before** | **Time** | If provided, will only return objects modified before this datetime. | [optional] |
| **owner_id** | **String** | If provided, will only return opportunities with this owner. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_fields** | **String** | Which fields should be returned in non-normalized form. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |
| **stage_id** | **String** | If provided, will only return opportunities with this stage. | [optional] |
| **status** | **String** | If provided, will only return opportunities with this status. Options: (&#39;OPEN&#39;, &#39;WON&#39;, &#39;LOST&#39;) | [optional] |

### Return type

[**PaginatedOpportunityList**](PaginatedOpportunityList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## opportunities_meta_patch_retrieve

> <MetaResponse> opportunities_meta_patch_retrieve(x_account_token, id)



Returns metadata for `Opportunity` PATCHs.

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

api_instance = MergeCRMClient::OpportunitiesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 

begin
  
  result = api_instance.opportunities_meta_patch_retrieve(x_account_token, id)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling OpportunitiesApi->opportunities_meta_patch_retrieve: #{e}"
end
```

#### Using the opportunities_meta_patch_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaResponse>, Integer, Hash)> opportunities_meta_patch_retrieve_with_http_info(x_account_token, id)

```ruby
begin
  
  data, status_code, headers = api_instance.opportunities_meta_patch_retrieve_with_http_info(x_account_token, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaResponse>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling OpportunitiesApi->opportunities_meta_patch_retrieve_with_http_info: #{e}"
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


## opportunities_meta_post_retrieve

> <MetaResponse> opportunities_meta_post_retrieve(x_account_token)



Returns metadata for `Opportunity` POSTs.

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

api_instance = MergeCRMClient::OpportunitiesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.opportunities_meta_post_retrieve(x_account_token)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling OpportunitiesApi->opportunities_meta_post_retrieve: #{e}"
end
```

#### Using the opportunities_meta_post_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaResponse>, Integer, Hash)> opportunities_meta_post_retrieve_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.opportunities_meta_post_retrieve_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaResponse>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling OpportunitiesApi->opportunities_meta_post_retrieve_with_http_info: #{e}"
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


## opportunities_partial_update

> <OpportunityResponse> opportunities_partial_update(x_account_token, id, patched_opportunity_endpoint_request, opts)



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

api_instance = MergeCRMClient::OpportunitiesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
patched_opportunity_endpoint_request = MergeCRMClient::PatchedOpportunityEndpointRequest.new({model: MergeCRMClient::PatchedOpportunityRequest.new}) # PatchedOpportunityEndpointRequest | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.opportunities_partial_update(x_account_token, id, patched_opportunity_endpoint_request, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling OpportunitiesApi->opportunities_partial_update: #{e}"
end
```

#### Using the opportunities_partial_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OpportunityResponse>, Integer, Hash)> opportunities_partial_update_with_http_info(x_account_token, id, patched_opportunity_endpoint_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.opportunities_partial_update_with_http_info(x_account_token, id, patched_opportunity_endpoint_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OpportunityResponse>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling OpportunitiesApi->opportunities_partial_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **patched_opportunity_endpoint_request** | [**PatchedOpportunityEndpointRequest**](PatchedOpportunityEndpointRequest.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**OpportunityResponse**](OpportunityResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## opportunities_retrieve

> <Opportunity> opportunities_retrieve(x_account_token, id, opts)



Returns an `Opportunity` object with the given `id`.

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

api_instance = MergeCRMClient::OpportunitiesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  expand: 'account', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  remote_fields: 'status' # String | Which fields should be returned in non-normalized form.
}

begin
  
  result = api_instance.opportunities_retrieve(x_account_token, id, opts)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Error when calling OpportunitiesApi->opportunities_retrieve: #{e}"
end
```

#### Using the opportunities_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Opportunity>, Integer, Hash)> opportunities_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.opportunities_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Opportunity>
rescue MergeCRMClient::ApiError => e
  puts "Error when calling OpportunitiesApi->opportunities_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **remote_fields** | **String** | Which fields should be returned in non-normalized form. | [optional] |

### Return type

[**Opportunity**](Opportunity.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

