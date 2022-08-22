# MergeCRMClient::Task

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **subject** | **String** | The task&#39;s subject. | [optional] |
| **content** | **String** | The task&#39;s content. | [optional] |
| **owner** | **String** |  | [optional] |
| **account** | **String** |  | [optional] |
| **completed_date** | **Time** | When the task is completed. | [optional] |
| **due_date** | **Time** | When the task is due. | [optional] |
| **status** | [**TaskStatusEnum**](TaskStatusEnum.md) | The task&#39;s status. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::Task.new(
  id: null,
  remote_id: 19202938,
  subject: Contact about Integration Strategy,
  content: Follow up to see whether they need integrations,
  owner: 0358cbc6-2040-430a-848e-aafacbadf3aa,
  account: null,
  completed_date: 2022-02-11T00:00Z,
  due_date: 2022-02-10T00:00Z,
  status: OPEN,
  remote_data: [{&quot;path&quot;:&quot;/tasks&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  remote_was_deleted: null
)
```

