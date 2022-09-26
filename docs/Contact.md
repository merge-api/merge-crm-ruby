# MergeCRMClient::Contact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **first_name** | **String** | The contact&#39;s first name. | [optional] |
| **last_name** | **String** | The contact&#39;s last name. | [optional] |
| **account** | **String** |  | [optional] |
| **addresses** | [**Array&lt;Address&gt;**](Address.md) |  | [optional] |
| **email_addresses** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  | [optional] |
| **phone_numbers** | [**Array&lt;PhoneNumber&gt;**](PhoneNumber.md) |  | [optional] |
| **last_activity_at** | **Time** | When the contact&#39;s last activity occurred. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s contact was created. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **remote_was_deleted** | **Boolean** |  | [optional][readonly] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::Contact.new(
  id: null,
  remote_id: 19202938,
  first_name: Gil,
  last_name: Feig,
  account: 0958cbc6-6040-430a-848e-aafacbadf4ae,
  addresses: [{&quot;street_1&quot;:&quot;50 Bowling Green Dr&quot;,&quot;street_2&quot;:&quot;Golden Gate Park&quot;,&quot;city&quot;:&quot;San Francisco&quot;,&quot;state&quot;:&quot;CA&quot;,&quot;postal_code&quot;:&quot;94122&quot;,&quot;country&quot;:&quot;USA&quot;,&quot;address_type&quot;:&quot;Shipping&quot;}],
  email_addresses: [{&quot;email_address&quot;:&quot;hello@merge.dev&quot;,&quot;email_address_type&quot;:&quot;Work&quot;}],
  phone_numbers: [{&quot;phone_number&quot;:&quot;+13785579223&quot;,&quot;phone_number_type&quot;:&quot;Mobile&quot;}],
  last_activity_at: 2022-02-10T00:00Z,
  remote_created_at: 2021-11-10T00:00Z,
  remote_data: [{&quot;path&quot;:&quot;/contacts&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  remote_was_deleted: null
)
```

