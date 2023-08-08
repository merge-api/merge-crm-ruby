# MergeCRMClient::Opportunity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The opportunity&#39;s name. | [optional] |
| **description** | **String** | The opportunity&#39;s description. | [optional] |
| **amount** | **Integer** | The opportunity&#39;s amount. | [optional] |
| **owner** | **String** | The opportunity&#39;s owner. | [optional] |
| **account** | **String** | The account of the opportunity. | [optional] |
| **stage** | **String** | The stage of the opportunity. | [optional] |
| **status** | [**OpportunityStatusEnum**](OpportunityStatusEnum.md) | The opportunity&#39;s status.  * &#x60;OPEN&#x60; - OPEN * &#x60;WON&#x60; - WON * &#x60;LOST&#x60; - LOST | [optional] |
| **last_activity_at** | **Time** | When the opportunity&#39;s last activity occurred. | [optional] |
| **close_date** | **Time** | When the opportunity was closed. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s opportunity was created. | [optional] |
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

instance = MergeCRMClient::Opportunity.new(
  name: Needs Integrations,
  description: Needs a Unified API for Integrations!,
  amount: 100000,
  owner: 0358cbc6-2040-430a-848e-aafacbadf3aa,
  account: 0958cbc6-6040-430a-848e-aafacbadf4ae,
  stage: 1968cbc6-6040-430a-848e-aafacbadf4ad,
  status: WON,
  last_activity_at: 2022-02-10T00:00Z,
  close_date: 2022-02-10T00:00Z,
  remote_created_at: 2021-11-10T00:00Z,
  remote_was_deleted: null,
  id: null,
  remote_id: 19202938,
  modified_at: 2021-10-16T00:00Z,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: [{&quot;path&quot;:&quot;/opportunities&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  remote_fields: null
)
```

