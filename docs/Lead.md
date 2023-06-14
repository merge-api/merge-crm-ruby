# MergeCRMClient::Lead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner** | **String** | The lead&#39;s owner. | [optional] |
| **lead_source** | **String** | The lead&#39;s source. | [optional] |
| **title** | **String** | The lead&#39;s title. | [optional] |
| **company** | **String** | The lead&#39;s company. | [optional] |
| **first_name** | **String** | The lead&#39;s first name. | [optional] |
| **last_name** | **String** | The lead&#39;s last name. | [optional] |
| **addresses** | [**Array&lt;Address&gt;**](Address.md) |  | [optional][readonly] |
| **email_addresses** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  | [optional][readonly] |
| **phone_numbers** | [**Array&lt;PhoneNumber&gt;**](PhoneNumber.md) |  | [optional][readonly] |
| **remote_updated_at** | **Time** | When the third party&#39;s lead was updated. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s lead was created. | [optional] |
| **converted_date** | **Time** | When the lead was converted. | [optional] |
| **converted_contact** | **String** | The contact of the converted lead. | [optional] |
| **converted_account** | **String** | The account of the converted lead. | [optional] |
| **remote_was_deleted** | **Boolean** |  | [optional][readonly] |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **field_mappings** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **remote_fields** | [**Array&lt;RemoteField&gt;**](RemoteField.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::Lead.new(
  owner: 0358cbc6-2040-430a-848e-aafacbadf3aa,
  lead_source: API Blogger,
  title: Co-Founder,
  company: Merge API,
  first_name: Gil,
  last_name: Feig,
  addresses: [{&quot;street_1&quot;:&quot;50 Bowling Green Dr&quot;,&quot;street_2&quot;:&quot;Golden Gate Park&quot;,&quot;city&quot;:&quot;San Francisco&quot;,&quot;state&quot;:&quot;CA&quot;,&quot;postal_code&quot;:&quot;94122&quot;,&quot;country&quot;:&quot;USA&quot;,&quot;address_type&quot;:&quot;Shipping&quot;}],
  email_addresses: [{&quot;email_address&quot;:&quot;hello@merge.dev&quot;,&quot;email_address_type&quot;:&quot;Work&quot;}],
  phone_numbers: [{&quot;phone_number&quot;:&quot;+16789932455&quot;,&quot;phone_number_type&quot;:&quot;Mobile&quot;}],
  remote_updated_at: 2022-02-10T00:00Z,
  remote_created_at: 2021-11-10T00:00Z,
  converted_date: 2022-03-10T00:00Z,
  converted_contact: null,
  converted_account: 9c9de072-29cf-48e3-9578-1ca5b145b40e,
  remote_was_deleted: null,
  id: null,
  remote_id: 19202938,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  modified_at: 2021-10-16T00:00Z,
  remote_data: [{&quot;path&quot;:&quot;/leads&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  remote_fields: null
)
```

