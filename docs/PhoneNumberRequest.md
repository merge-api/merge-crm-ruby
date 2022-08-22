# MergeCRMClient::PhoneNumberRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** | The phone number. | [optional] |
| **phone_number_type** | **String** | The phone number&#39;s type. | [optional] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::PhoneNumberRequest.new(
  phone_number: +3198675309,
  phone_number_type: Mobile
)
```

