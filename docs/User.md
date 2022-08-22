# MergeCRMClient::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **name** | **String** | The user&#39;s name. | [optional] |
| **email** | **String** | The user&#39;s email address. | [optional] |
| **is_active** | **Boolean** | Whether or not the user is active. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::User.new(
  id: 0358cbc6-2040-430a-848e-aafacbadf3aa,
  remote_id: 19202938,
  name: Gil Feig,
  email: merge_is_hiring@merge.dev,
  is_active: true,
  remote_data: [{&quot;path&quot;:&quot;/users&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  remote_was_deleted: null
)
```

