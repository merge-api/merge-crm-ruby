# MergeCRMClient::CRMAccountResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model** | [**Account**](Account.md) |  |  |
| **warnings** | [**Array&lt;WarningValidationProblem&gt;**](WarningValidationProblem.md) |  |  |
| **errors** | [**Array&lt;ErrorValidationProblem&gt;**](ErrorValidationProblem.md) |  |  |
| **logs** | [**Array&lt;DebugModeLog&gt;**](DebugModeLog.md) |  | [optional] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::CRMAccountResponse.new(
  model: null,
  warnings: null,
  errors: null,
  logs: null
)
```

