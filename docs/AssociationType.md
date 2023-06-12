# MergeCRMClient::AssociationType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_object_class** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **target_object_classes** | [**Array&lt;AssociationSubType&gt;**](AssociationSubType.md) |  | [optional][readonly] |
| **remote_key_name** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **cardinality** | [**CardinalityEnum**](CardinalityEnum.md) |  | [optional] |
| **is_required** | **Boolean** |  | [optional] |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::AssociationType.new(
  source_object_class: {&quot;id&quot;:&quot;ff1ff4cb-a66b-47dc-8e2a-50388049e602&quot;,&quot;origin_type&quot;:&quot;CUSTOM_OBJECT&quot;},
  target_object_classes: [{&quot;id&quot;:&quot;Opportunity&quot;,&quot;origin_type&quot;:&quot;COMMON_MODEL&quot;}],
  remote_key_name: order_to_opportunity,
  display_name: Order to Opportunity,
  cardinality: ONE_TO_MANY,
  is_required: null,
  id: 5bb73c32-3c6c-4757-ab7d-7d3540a1be31,
  remote_id: 93,
  modified_at: 2021-10-16T00:00Z
)
```

