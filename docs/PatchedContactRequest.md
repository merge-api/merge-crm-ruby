# MergeCRMClient::PatchedContactRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | The contact&#39;s first name. | [optional] |
| **last_name** | **String** | The contact&#39;s last name. | [optional] |
| **account** | **String** | The contact&#39;s account. | [optional] |
| **addresses** | [**Array&lt;AddressRequest&gt;**](AddressRequest.md) |  | [optional] |
| **email_addresses** | [**Array&lt;EmailAddressRequest&gt;**](EmailAddressRequest.md) |  | [optional] |
| **phone_numbers** | [**Array&lt;PhoneNumberRequest&gt;**](PhoneNumberRequest.md) |  | [optional] |
| **last_activity_at** | **Time** | When the contact&#39;s last activity occurred. | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **remote_fields** | [**Array&lt;RemoteFieldRequest&gt;**](RemoteFieldRequest.md) |  | [optional] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::PatchedContactRequest.new(
  first_name: Gil,
  last_name: Feig,
  account: 0958cbc6-6040-430a-848e-aafacbadf4ae,
  addresses: [{&quot;street_1&quot;:&quot;50 Bowling Green Dr&quot;,&quot;street_2&quot;:&quot;Golden Gate Park&quot;,&quot;city&quot;:&quot;San Francisco&quot;,&quot;state&quot;:&quot;CA&quot;,&quot;postal_code&quot;:&quot;94122&quot;,&quot;country&quot;:&quot;USA&quot;,&quot;address_type&quot;:&quot;Shipping&quot;}],
  email_addresses: [{&quot;email_address&quot;:&quot;hello@merge.dev&quot;,&quot;email_address_type&quot;:&quot;Work&quot;}],
  phone_numbers: [{&quot;phone_number&quot;:&quot;+13785579223&quot;,&quot;phone_number_type&quot;:&quot;Mobile&quot;}],
  last_activity_at: 2022-02-10T00:00Z,
  integration_params: {&quot;unique_integration_field&quot;:&quot;unique_integration_field_value&quot;},
  linked_account_params: {&quot;unique_linked_account_field&quot;:&quot;unique_linked_account_field_value&quot;},
  remote_fields: null
)
```

