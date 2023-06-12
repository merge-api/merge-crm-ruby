# MergeCRMClient::CustomObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object_class** | **String** |  | [optional] |
| **fields** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **id** | **String** |  | [optional][readonly] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |
| **remote_fields** | [**Array&lt;RemoteField&gt;**](RemoteField.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::CustomObject.new(
  object_class: ff1ff4cb-a66b-47dc-8e2a-50388049e602,
  fields: {&quot;order_id&quot;:&quot;4183634295&quot;,&quot;order_quantity&quot;:50.0,&quot;customer_type&quot;:&quot;Returning&quot;},
  remote_id: 4183634295,
  id: da0b1963-be70-469c-9f8c-06a81d0fe759,
  modified_at: 2021-10-16T00:00Z,
  remote_fields: null
)
```

