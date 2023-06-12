# MergeCRMClient::LinkedAccountSelectiveSyncConfigurationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **linked_account_conditions** | [**Array&lt;LinkedAccountConditionRequest&gt;**](LinkedAccountConditionRequest.md) | The conditions belonging to a selective sync. |  |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::LinkedAccountSelectiveSyncConfigurationRequest.new(
  linked_account_conditions: null
)
```

