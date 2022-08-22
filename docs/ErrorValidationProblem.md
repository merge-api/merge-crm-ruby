# MergeCRMClient::ErrorValidationProblem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source** | [**ValidationProblemSource**](ValidationProblemSource.md) |  | [optional] |
| **title** | **String** |  |  |
| **detail** | **String** |  |  |
| **problem_type** | **String** |  |  |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::ErrorValidationProblem.new(
  source: null,
  title: Missing Required Field,
  detail: custom_fields is a required field on model.,
  problem_type: MISSING_REQUIRED_FIELD
)
```

