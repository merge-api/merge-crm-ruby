# MergeCRMClient::Association

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_object** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **target_object** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **association_type** | **String** |  | [optional] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::Association.new(
  source_object: a8f5d29f-4e50-473f-8f12-27128ffcd37a,
  target_object: da0b1963-be70-469c-9f8c-06a81d0fe759,
  association_type: 88a71b5c-a3cc-4bce-84ff-d18b049a4081,
  modified_at: 2021-10-16T00:00Z
)
```

