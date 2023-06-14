# MergeCRMClient::PatchedEngagementRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner** | **String** | The engagement&#39;s owner. | [optional] |
| **content** | **String** | The engagement&#39;s content. | [optional] |
| **subject** | **String** | The engagement&#39;s subject. | [optional] |
| **direction** | [**DirectionEnum**](DirectionEnum.md) | The engagement&#39;s direction.  * &#x60;INBOUND&#x60; - INBOUND * &#x60;OUTBOUND&#x60; - OUTBOUND | [optional] |
| **engagement_type** | **String** | The engagement type of the engagement. | [optional] |
| **start_time** | **Time** | The time at which the engagement started. | [optional] |
| **end_time** | **Time** | The time at which the engagement ended. | [optional] |
| **account** | **String** | The account of the engagement. | [optional] |
| **contacts** | **Array&lt;String&gt;** |  | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **remote_fields** | [**Array&lt;RemoteFieldRequest&gt;**](RemoteFieldRequest.md) |  | [optional] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::PatchedEngagementRequest.new(
  owner: 0358cbc6-2040-430a-848e-aafacbadf3aa,
  content: Call for negotiation,
  subject: Call from customer,
  direction: INBOUND,
  engagement_type: 0358cbc6-2040-430a-848e-aafacbadf3aa,
  start_time: 2022-02-10T00:00Z,
  end_time: 2022-02-10T00:05Z,
  account: null,
  contacts: [&quot;a7c55bc6-2940-c80a-848e-bbfacbfdf4fg&quot;],
  integration_params: {&quot;unique_integration_field&quot;:&quot;unique_integration_field_value&quot;},
  linked_account_params: {&quot;unique_linked_account_field&quot;:&quot;unique_linked_account_field_value&quot;},
  remote_fields: null
)
```

