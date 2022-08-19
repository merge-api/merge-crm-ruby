# MergeCRMClient::Address

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **street_1** | **String** | Line 1 of the address&#39;s street. | [optional] |
| **street_2** | **String** | Line 2 of the address&#39;s street. | [optional] |
| **city** | **String** | The address&#39;s city. | [optional] |
| **state** | **String** | The address&#39;s state. | [optional] |
| **postal_code** | **String** | The address&#39;s postal code. | [optional] |
| **country** | [**CountryEnum**](CountryEnum.md) | The address&#39;s country. | [optional] |
| **address_type** | [**AddressTypeEnum**](AddressTypeEnum.md) | The address type. | [optional] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::Address.new(
  street_1: 50 Bowling Green Dr,
  street_2: Golden Gate Park,
  city: San Francisco,
  state: CA,
  postal_code: 94122,
  country: USA,
  address_type: Shipping
)
```

