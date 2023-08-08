# MergeCRMClient::Account

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner** | **String** | The account&#39;s owner. | [optional] |
| **name** | **String** | The account&#39;s name. | [optional] |
| **description** | **String** | The account&#39;s description. | [optional] |
| **industry** | **String** | The account&#39;s industry. | [optional] |
| **website** | **String** | The account&#39;s website. | [optional] |
| **number_of_employees** | **Integer** | The account&#39;s number of employees. | [optional] |
| **addresses** | [**Array&lt;Address&gt;**](Address.md) |  | [optional][readonly] |
| **phone_numbers** | [**Array&lt;PhoneNumber&gt;**](PhoneNumber.md) |  | [optional][readonly] |
| **last_activity_at** | **Time** | The last date (either most recent or furthest in the future) of when an activity occurs in an account. | [optional] |
| **remote_updated_at** | **Time** | When the CRM system account data was last modified by a user with a login. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s account was created. | [optional] |
| **remote_was_deleted** | **Boolean** |  | [optional][readonly] |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |
| **field_mappings** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **remote_fields** | [**Array&lt;RemoteField&gt;**](RemoteField.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::Account.new(
  owner: 0258cbc6-6020-430a-848e-aafacbadf4ae,
  name: Merge API,
  description: One API for all integrations,
  industry: API&#39;s,
  website: https://merge.dev/,
  number_of_employees: 276000,
  addresses: [{&quot;street_1&quot;:&quot;50 Bowling Green Dr&quot;,&quot;street_2&quot;:&quot;Golden Gate Park&quot;,&quot;city&quot;:&quot;San Francisco&quot;,&quot;state&quot;:&quot;CA&quot;,&quot;postal_code&quot;:&quot;94122&quot;,&quot;country&quot;:&quot;US&quot;,&quot;address_type&quot;:&quot;Shipping&quot;}],
  phone_numbers: [{&quot;phone_number&quot;:&quot;+16788879833&quot;,&quot;phone_number_type&quot;:&quot;Mobile&quot;}],
  last_activity_at: 2022-02-10T00:00Z,
  remote_updated_at: 2022-01-09T00:00Z,
  remote_created_at: 2021-11-10T00:00Z,
  remote_was_deleted: null,
  id: 0958cbc6-6040-430a-848e-aafacbadf4ae,
  remote_id: 19202938,
  modified_at: 2021-10-16T00:00Z,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: [{&quot;path&quot;:&quot;/accounts&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  remote_fields: null
)
```

