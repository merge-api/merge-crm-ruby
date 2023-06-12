# MergeCRMClient::PhoneNumber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** | The phone number. | [optional] |
| **phone_number_type** | **String** | The phone number&#39;s type. | [optional] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::PhoneNumber.new(
  phone_number: +3198675309,
  phone_number_type: Mobile,
  modified_at: 2021-10-16T00:00Z
)
```

