# MergeCRMClient::Note

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner** | **String** | The note&#39;s owner. | [optional] |
| **content** | **String** | The note&#39;s content. | [optional] |
| **contact** | **String** | The note&#39;s contact. | [optional] |
| **account** | **String** | The note&#39;s account. | [optional] |
| **opportunity** | **String** | The note&#39;s opportunity. | [optional] |
| **remote_updated_at** | **Time** | When the third party&#39;s lead was updated. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s lead was created. | [optional] |
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

instance = MergeCRMClient::Note.new(
  owner: 0358cbc6-2040-430a-848e-aafacbadf3aa,
  content: Merge is hiring!,
  contact: null,
  account: fba1fbc6-67c0-4cb2-a176-7896acd2ffd5,
  opportunity: 754a244e-dd67-4731-a8d3-9bff9dc10465,
  remote_updated_at: 2022-02-10T00:00Z,
  remote_created_at: 2021-11-10T00:00Z,
  remote_was_deleted: null,
  id: null,
  remote_id: 19202938,
  modified_at: 2021-10-16T00:00Z,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: [{&quot;path&quot;:&quot;/notes&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  remote_fields: null
)
```

