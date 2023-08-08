# MergeCRMClient::Task

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject** | **String** | The task&#39;s subject. | [optional] |
| **content** | **String** | The task&#39;s content. | [optional] |
| **owner** | **String** | The task&#39;s owner. | [optional] |
| **account** | **String** | The task&#39;s account. | [optional] |
| **opportunity** | **String** | The task&#39;s opportunity. | [optional] |
| **completed_date** | **Time** | When the task is completed. | [optional] |
| **due_date** | **Time** | When the task is due. | [optional] |
| **status** | [**TaskStatusEnum**](TaskStatusEnum.md) | The task&#39;s status.  * &#x60;OPEN&#x60; - OPEN * &#x60;CLOSED&#x60; - CLOSED | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |
| **field_mappings** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **remote_fields** | [**Array&lt;RemoteField&gt;**](RemoteField.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::Task.new(
  subject: Contact about Integration Strategy,
  content: Follow up to see whether they need integrations,
  owner: 0358cbc6-2040-430a-848e-aafacbadf3aa,
  account: 3fa85f64-5717-4562-b3fc-2c963f66afa6,
  opportunity: null,
  completed_date: 2022-02-11T00:00Z,
  due_date: 2022-02-10T00:00Z,
  status: OPEN,
  remote_was_deleted: null,
  id: null,
  remote_id: 19202938,
  modified_at: 2021-10-16T00:00Z,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: [{&quot;path&quot;:&quot;/tasks&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  remote_fields: null
)
```

