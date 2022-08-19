# MergeCRMClient::EmailAddressRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_address** | **String** | The email address. | [optional] |
| **email_address_type** | **String** | The email address&#39;s type. | [optional] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::EmailAddressRequest.new(
  email_address: merge_is_hiring@merge.dev,
  email_address_type: Work
)
```

