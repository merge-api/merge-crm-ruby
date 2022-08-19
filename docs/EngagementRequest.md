# MergeCRMClient::EngagementRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **owner** | **String** |  | [optional] |
| **content** | **String** | The engagement&#39;s content. | [optional] |
| **subject** | **String** | The engagement&#39;s subject. | [optional] |
| **direction** | [**DirectionEnum**](DirectionEnum.md) | The engagement&#39;s direction. | [optional] |
| **engagement_type** | **String** |  | [optional] |
| **start_time** | **Time** | The time at which the engagement started. | [optional] |
| **end_time** | **Time** | The time at which the engagement ended. | [optional] |
| **account** | **String** |  | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::EngagementRequest.new(
  remote_id: 19202938,
  owner: 0358cbc6-2040-430a-848e-aafacbadf3aa,
  content: Call for negotiation,
  subject: Call from customer,
  direction: INBOUND,
  engagement_type: 0358cbc6-2040-430a-848e-aafacbadf3aa,
  start_time: 2022-02-10T00:00Z,
  end_time: 2022-02-10T00:05Z,
  account: null,
  integration_params: null,
  linked_account_params: null
)
```

