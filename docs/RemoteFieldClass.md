# MergeCRMClient::RemoteFieldClass

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **remote_key_name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **is_custom** | **Boolean** |  | [optional] |
| **is_required** | **Boolean** |  | [optional] |
| **field_type** | [**FieldTypeEnum**](FieldTypeEnum.md) |  | [optional] |
| **field_format** | [**FieldFormatEnum**](FieldFormatEnum.md) |  | [optional] |
| **field_choices** | **Array&lt;String&gt;** |  | [optional] |
| **item_schema** | [**ItemSchema**](ItemSchema.md) |  | [optional] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::RemoteFieldClass.new(
  id: null,
  display_name: null,
  remote_key_name: null,
  description: null,
  is_custom: null,
  is_required: null,
  field_type: null,
  field_format: null,
  field_choices: null,
  item_schema: null
)
```

