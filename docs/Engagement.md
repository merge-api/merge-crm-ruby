# MergeCRMClient::Engagement

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
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **field_mappings** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **remote_fields** | [**Array&lt;RemoteField&gt;**](RemoteField.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::Engagement.new(
  owner: 0358cbc6-2040-430a-848e-aafacbadf3aa,
  content: Call for negotiation,
  subject: Call from customer,
  direction: INBOUND,
  engagement_type: 0358cbc6-2040-430a-848e-aafacbadf3aa,
  start_time: 2022-02-10T00:00Z,
  end_time: 2022-02-10T00:05Z,
  account: null,
  contacts: [&quot;a7c55bc6-2940-c80a-848e-bbfacbfdf4fg&quot;],
  remote_was_deleted: null,
  id: null,
  remote_id: 19202938,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  modified_at: 2021-10-16T00:00Z,
  remote_data: [{&quot;path&quot;:&quot;/engagements&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  remote_fields: null
)
```

