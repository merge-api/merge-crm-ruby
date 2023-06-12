# MergeCRMClient::EmailAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_address** | **String** | The email address. | [optional] |
| **email_address_type** | **String** | The email address&#39;s type. | [optional] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::EmailAddress.new(
  email_address: merge_is_hiring@merge.dev,
  email_address_type: Work,
  modified_at: 2021-10-16T00:00Z
)
```

