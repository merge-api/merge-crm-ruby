# MergeCRMClient::CustomObjectClass

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **labels** | **Hash&lt;String, String&gt;** |  | [optional][readonly] |
| **fields** | [**Array&lt;RemoteFieldClassForCustomObjectClass&gt;**](RemoteFieldClassForCustomObjectClass.md) |  | [optional][readonly] |
| **association_types** | **Array&lt;Hash&lt;String, AnyType&gt;&gt;** |  | [optional][readonly] |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **modified_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::CustomObjectClass.new(
  name: order,
  description: Order object,
  labels: {&quot;singular&quot;:&quot;Order&quot;,&quot;plural&quot;:&quot;Orders&quot;},
  fields: [{&quot;display_name&quot;:&quot;Order ID&quot;,&quot;remote_key_name&quot;:&quot;order_id&quot;,&quot;description&quot;:&quot;The unique ID for the order.&quot;,&quot;is_required&quot;:true,&quot;is_nested_list&quot;:false,&quot;field_type&quot;:&quot;string&quot;,&quot;field_format&quot;:null,&quot;field_choices&quot;:[],&quot;item_schema&quot;:null},{&quot;display_name&quot;:&quot;Order Quantity&quot;,&quot;remote_key_name&quot;:&quot;order_quantity&quot;,&quot;description&quot;:&quot;The number of items ordered.&quot;,&quot;is_required&quot;:true,&quot;is_nested_list&quot;:false,&quot;field_type&quot;:&quot;number&quot;,&quot;field_format&quot;:null,&quot;field_choices&quot;:[],&quot;item_schema&quot;:null},{&quot;display_name&quot;:&quot;Customer Type&quot;,&quot;remote_key_name&quot;:&quot;customer_type&quot;,&quot;description&quot;:&quot;The type of customer.&quot;,&quot;is_required&quot;:true,&quot;is_nested_list&quot;:false,&quot;field_type&quot;:&quot;string&quot;,&quot;field_format&quot;:null,&quot;field_choices&quot;:[&quot;New&quot;,&quot;Returning&quot;],&quot;item_schema&quot;:null}],
  association_types: null,
  id: ff1ff4cb-a66b-47dc-8e2a-50388049e602,
  remote_id: 9579977,
  modified_at: 2021-10-16T00:00Z
)
```

