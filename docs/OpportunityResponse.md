# MergeCRMClient::OpportunityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model** | [**Opportunity**](Opportunity.md) |  |  |
| **warnings** | [**Array&lt;WarningValidationProblem&gt;**](WarningValidationProblem.md) |  |  |
| **errors** | [**Array&lt;ErrorValidationProblem&gt;**](ErrorValidationProblem.md) |  |  |
| **logs** | [**Array&lt;DebugModeLog&gt;**](DebugModeLog.md) |  | [optional] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::OpportunityResponse.new(
  model: null,
  warnings: null,
  errors: null,
  logs: null
)
```

