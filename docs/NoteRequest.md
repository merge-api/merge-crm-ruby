# MergeCRMClient::NoteRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner** | **String** | The note&#39;s owner. | [optional] |
| **content** | **String** | The note&#39;s content. | [optional] |
| **contact** | **String** | The note&#39;s contact. | [optional] |
| **account** | **String** | The note&#39;s account. | [optional] |
| **opportunity** | **String** | The note&#39;s opportunity. | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **remote_fields** | [**Array&lt;RemoteFieldRequest&gt;**](RemoteFieldRequest.md) |  | [optional] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::NoteRequest.new(
  owner: 0358cbc6-2040-430a-848e-aafacbadf3aa,
  content: Merge is hiring!,
  contact: null,
  account: fba1fbc6-67c0-4cb2-a176-7896acd2ffd5,
  opportunity: 754a244e-dd67-4731-a8d3-9bff9dc10465,
  integration_params: {&quot;unique_integration_field&quot;:&quot;unique_integration_field_value&quot;},
  linked_account_params: {&quot;unique_linked_account_field&quot;:&quot;unique_linked_account_field_value&quot;},
  remote_fields: null
)
```

