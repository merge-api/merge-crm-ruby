# MergeCRMClient::MetaResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_schema** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  |  |
| **status** | [**LinkedAccountStatus**](LinkedAccountStatus.md) |  | [optional] |
| **has_conditional_params** | **Boolean** |  |  |
| **has_required_linked_account_params** | **Boolean** |  |  |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::MetaResponse.new(
  request_schema: null,
  status: null,
  has_conditional_params: null,
  has_required_linked_account_params: null
)
```

