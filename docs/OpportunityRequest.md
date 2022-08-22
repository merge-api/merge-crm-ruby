# MergeCRMClient::OpportunityRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **name** | **String** | The opportunity&#39;s name. | [optional] |
| **description** | **String** | The opportunity&#39;s description. | [optional] |
| **amount** | **Integer** | The opportunity&#39;s amount. | [optional] |
| **owner** | **String** |  | [optional] |
| **account** | **String** |  | [optional] |
| **stage** | **String** |  | [optional] |
| **status** | [**OpportunityStatusEnum**](OpportunityStatusEnum.md) | The opportunity&#39;s status. | [optional] |
| **last_activity_at** | **Time** | When the opportunity&#39;s last activity occurred. | [optional] |
| **close_date** | **Time** | When the opportunity was closed. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s opportunity was created. | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::OpportunityRequest.new(
  remote_id: 19202938,
  name: Needs Integrations,
  description: Needs a Unified API for Integrations!,
  amount: 100000,
  owner: 0358cbc6-2040-430a-848e-aafacbadf3aa,
  account: 0958cbc6-6040-430a-848e-aafacbadf4ae,
  stage: 1968cbc6-6040-430a-848e-aafacbadf4ad,
  status: WON,
  last_activity_at: 2022-02-10T00:00Z,
  close_date: 2022-02-10T00:00Z,
  remote_created_at: 2021-11-10T00:00Z,
  integration_params: null,
  linked_account_params: null
)
```

