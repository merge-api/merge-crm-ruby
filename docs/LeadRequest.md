# MergeCRMClient::LeadRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **owner** | **String** |  | [optional] |
| **lead_source** | **String** | The lead&#39;s source. | [optional] |
| **title** | **String** | The lead&#39;s title. | [optional] |
| **company** | **String** | The lead&#39;s company. | [optional] |
| **first_name** | **String** | The lead&#39;s first name. | [optional] |
| **last_name** | **String** | The lead&#39;s last name. | [optional] |
| **remote_updated_at** | **Time** | When the third party&#39;s lead was updated. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s lead was created. | [optional] |
| **converted_date** | **Time** | When the lead was converted. | [optional] |
| **converted_contact** | **String** |  | [optional] |
| **converted_account** | **String** |  | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::LeadRequest.new(
  remote_id: 19202938,
  owner: 0358cbc6-2040-430a-848e-aafacbadf3aa,
  lead_source: API Blogger,
  title: Co-Founder,
  company: Merge API,
  first_name: Gil,
  last_name: Feig,
  remote_updated_at: 2022-02-10T00:00Z,
  remote_created_at: 2021-11-10T00:00Z,
  converted_date: 2022-03-10T00:00Z,
  converted_contact: null,
  converted_account: 9c9de072-29cf-48e3-9578-1ca5b145b40e,
  integration_params: null,
  linked_account_params: null
)
```

