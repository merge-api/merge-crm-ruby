# MergeCRMClient::TaskRequest

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
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **remote_fields** | [**Array&lt;RemoteFieldRequest&gt;**](RemoteFieldRequest.md) |  | [optional] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::TaskRequest.new(
  subject: Contact about Integration Strategy,
  content: Follow up to see whether they need integrations,
  owner: 0358cbc6-2040-430a-848e-aafacbadf3aa,
  account: 3fa85f64-5717-4562-b3fc-2c963f66afa6,
  opportunity: null,
  completed_date: 2022-02-11T00:00Z,
  due_date: 2022-02-10T00:00Z,
  status: OPEN,
  integration_params: {&quot;unique_integration_field&quot;:&quot;unique_integration_field_value&quot;},
  linked_account_params: {&quot;unique_linked_account_field&quot;:&quot;unique_linked_account_field_value&quot;},
  remote_fields: null
)
```

