# MergeCRMClient::CommonModelScopesBodyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_id** | **String** |  |  |
| **enabled_actions** | [**Array&lt;EnabledActionsEnum&gt;**](EnabledActionsEnum.md) |  |  |
| **disabled_fields** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::CommonModelScopesBodyRequest.new(
  model_id: hris.Employee,
  enabled_actions: [&quot;READ&quot;,&quot;WRITE&quot;],
  disabled_fields: [&quot;first_name&quot;]
)
```

