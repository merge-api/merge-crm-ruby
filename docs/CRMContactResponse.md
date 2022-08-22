# MergeCRMClient::CRMContactResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model** | [**Contact**](Contact.md) |  |  |
| **warnings** | [**Array&lt;WarningValidationProblem&gt;**](WarningValidationProblem.md) |  |  |
| **errors** | [**Array&lt;ErrorValidationProblem&gt;**](ErrorValidationProblem.md) |  |  |
| **logs** | [**Array&lt;DebugModeLog&gt;**](DebugModeLog.md) |  | [optional] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::CRMContactResponse.new(
  model: null,
  warnings: null,
  errors: null,
  logs: null
)
```

