# MergeCRMClient::RemoteFieldClassForCustomObjectClass

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** |  | [optional] |
| **remote_key_name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **is_required** | **Boolean** |  | [optional] |
| **field_type** | [**FieldTypeEnum**](FieldTypeEnum.md) |  | [optional][readonly] |
| **field_format** | [**FieldFormatEnum**](FieldFormatEnum.md) |  | [optional][readonly] |
| **field_choices** | **Array&lt;String&gt;** |  | [optional][readonly] |
| **item_schema** | [**RemoteFieldClassForCustomObjectClassItemSchema**](RemoteFieldClassForCustomObjectClassItemSchema.md) |  | [optional] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::RemoteFieldClassForCustomObjectClass.new(
  display_name: null,
  remote_key_name: null,
  description: null,
  is_required: null,
  field_type: null,
  field_format: null,
  field_choices: null,
  item_schema: null,
  modified_at: null
)
```

