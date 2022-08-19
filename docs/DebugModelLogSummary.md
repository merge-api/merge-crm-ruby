# MergeCRMClient::DebugModelLogSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  |  |
| **method** | **String** |  |  |
| **status_code** | **Integer** |  |  |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::DebugModelLogSummary.new(
  url: https://harvest.greenhouse.io/v1/candidates/,
  method: POST,
  status_code: 200
)
```

