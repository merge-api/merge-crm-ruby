# MergeCRMClient::EngagementType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **activity_type** | [**ActivityTypeEnum**](ActivityTypeEnum.md) | The engagement type&#39;s activity type. | [optional] |
| **name** | **String** | The engagement type&#39;s name. | [optional] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::EngagementType.new(
  id: null,
  remote_id: 19202938,
  activity_type: CALL,
  name: First Call
)
```

