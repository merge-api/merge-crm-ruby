# MergeCRMClient::PatchedOpportunityRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The opportunity&#39;s name. | [optional] |
| **description** | **String** | The opportunity&#39;s description. | [optional] |
| **amount** | **Integer** | The opportunity&#39;s amount. | [optional] |
| **owner** | **String** | The opportunity&#39;s owner. | [optional] |
| **account** | **String** | The account of the opportunity. | [optional] |
| **stage** | **String** | The stage of the opportunity. | [optional] |
| **status** | [**OpportunityStatusEnum**](OpportunityStatusEnum.md) | The opportunity&#39;s status.  * &#x60;OPEN&#x60; - OPEN * &#x60;WON&#x60; - WON * &#x60;LOST&#x60; - LOST | [optional] |
| **last_activity_at** | **Time** | When the opportunity&#39;s last activity occurred. | [optional] |
| **close_date** | **Time** | When the opportunity was closed. | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **remote_fields** | [**Array&lt;RemoteFieldRequest&gt;**](RemoteFieldRequest.md) |  | [optional] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::PatchedOpportunityRequest.new(
  name: Needs Integrations,
  description: Needs a Unified API for Integrations!,
  amount: 100000,
  owner: 0358cbc6-2040-430a-848e-aafacbadf3aa,
  account: 0958cbc6-6040-430a-848e-aafacbadf4ae,
  stage: 1968cbc6-6040-430a-848e-aafacbadf4ad,
  status: WON,
  last_activity_at: 2022-02-10T00:00Z,
  close_date: 2022-02-10T00:00Z,
  integration_params: {&quot;unique_integration_field&quot;:&quot;unique_integration_field_value&quot;},
  linked_account_params: {&quot;unique_linked_account_field&quot;:&quot;unique_linked_account_field_value&quot;},
  remote_fields: null
)
```

