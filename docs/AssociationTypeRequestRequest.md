# MergeCRMClient::AssociationTypeRequestRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_object_class** | [**ObjectClassDescriptionRequest**](ObjectClassDescriptionRequest.md) |  |  |
| **target_object_classes** | [**Array&lt;ObjectClassDescriptionRequest&gt;**](ObjectClassDescriptionRequest.md) |  |  |
| **remote_key_name** | **String** |  |  |
| **display_name** | **String** |  | [optional] |
| **cardinality** | [**CardinalityEnum**](CardinalityEnum.md) |  | [optional] |
| **is_required** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::AssociationTypeRequestRequest.new(
  source_object_class: null,
  target_object_classes: null,
  remote_key_name: null,
  display_name: null,
  cardinality: null,
  is_required: null
)
```

