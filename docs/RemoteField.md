# MergeCRMClient::RemoteField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_field_class** | [**RemoteFieldClass**](RemoteFieldClass.md) |  |  |
| **value** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::RemoteField.new(
  remote_field_class: null,
  value: string
)
```

