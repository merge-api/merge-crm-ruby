# MergeCRMClient::LeadRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner** | **String** | The lead&#39;s owner. | [optional] |
| **lead_source** | **String** | The lead&#39;s source. | [optional] |
| **title** | **String** | The lead&#39;s title. | [optional] |
| **company** | **String** | The lead&#39;s company. | [optional] |
| **first_name** | **String** | The lead&#39;s first name. | [optional] |
| **last_name** | **String** | The lead&#39;s last name. | [optional] |
| **addresses** | [**Array&lt;AddressRequest&gt;**](AddressRequest.md) |  | [optional] |
| **email_addresses** | [**Array&lt;EmailAddressRequest&gt;**](EmailAddressRequest.md) |  | [optional] |
| **phone_numbers** | [**Array&lt;PhoneNumberRequest&gt;**](PhoneNumberRequest.md) |  | [optional] |
| **converted_date** | **Time** | When the lead was converted. | [optional] |
| **converted_contact** | **String** | The contact of the converted lead. | [optional] |
| **converted_account** | **String** | The account of the converted lead. | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **remote_fields** | [**Array&lt;RemoteFieldRequest&gt;**](RemoteFieldRequest.md) |  | [optional] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::LeadRequest.new(
  owner: 0358cbc6-2040-430a-848e-aafacbadf3aa,
  lead_source: API Blogger,
  title: Co-Founder,
  company: Merge API,
  first_name: Gil,
  last_name: Feig,
  addresses: [{&quot;street_1&quot;:&quot;50 Bowling Green Dr&quot;,&quot;street_2&quot;:&quot;Golden Gate Park&quot;,&quot;city&quot;:&quot;San Francisco&quot;,&quot;state&quot;:&quot;CA&quot;,&quot;postal_code&quot;:&quot;94122&quot;,&quot;country&quot;:&quot;USA&quot;,&quot;address_type&quot;:&quot;Shipping&quot;}],
  email_addresses: [{&quot;email_address&quot;:&quot;hello@merge.dev&quot;,&quot;email_address_type&quot;:&quot;Work&quot;}],
  phone_numbers: [{&quot;phone_number&quot;:&quot;+16789932455&quot;,&quot;phone_number_type&quot;:&quot;Mobile&quot;}],
  converted_date: 2022-03-10T00:00Z,
  converted_contact: null,
  converted_account: 9c9de072-29cf-48e3-9578-1ca5b145b40e,
  integration_params: {&quot;unique_integration_field&quot;:&quot;unique_integration_field_value&quot;},
  linked_account_params: {&quot;unique_linked_account_field&quot;:&quot;unique_linked_account_field_value&quot;},
  remote_fields: null
)
```

