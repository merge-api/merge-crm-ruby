# MergeCRMClient::EngagementType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **activity_type** | [**ActivityTypeEnum**](ActivityTypeEnum.md) | The engagement type&#39;s activity type.  * &#x60;CALL&#x60; - CALL * &#x60;MEETING&#x60; - MEETING * &#x60;EMAIL&#x60; - EMAIL | [optional] |
| **name** | **String** | The engagement type&#39;s name. | [optional] |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |
| **remote_fields** | [**Array&lt;RemoteField&gt;**](RemoteField.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::EngagementType.new(
  activity_type: CALL,
  name: First Call,
  id: null,
  remote_id: 19202938,
  modified_at: 2021-10-16T00:00Z,
  remote_fields: null
)
```

