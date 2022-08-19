# MergeCRMClient::Engagement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **owner** | **String** |  | [optional] |
| **content** | **String** | The engagement&#39;s content. | [optional] |
| **subject** | **String** | The engagement&#39;s subject. | [optional] |
| **direction** | [**DirectionEnum**](DirectionEnum.md) | The engagement&#39;s direction. | [optional] |
| **engagement_type** | **String** |  | [optional] |
| **start_time** | **Time** | The time at which the engagement started. | [optional] |
| **end_time** | **Time** | The time at which the engagement ended. | [optional] |
| **account** | **String** |  | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::Engagement.new(
  id: null,
  remote_id: 19202938,
  owner: 0358cbc6-2040-430a-848e-aafacbadf3aa,
  content: Call for negotiation,
  subject: Call from customer,
  direction: INBOUND,
  engagement_type: 0358cbc6-2040-430a-848e-aafacbadf3aa,
  start_time: 2022-02-10T00:00Z,
  end_time: 2022-02-10T00:05Z,
  account: null,
  remote_data: [{&quot;path&quot;:&quot;/engagements&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  remote_was_deleted: null
)
```

