# MergeCRMClient::Note

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **owner** | **String** |  | [optional] |
| **content** | **String** | The note&#39;s content. | [optional] |
| **contact** | **String** |  | [optional] |
| **account** | **String** |  | [optional] |
| **opportunity** | **String** |  | [optional] |
| **remote_updated_at** | **Time** | When the third party&#39;s lead was updated. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s lead was created. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **remote_was_deleted** | **Boolean** |  | [optional][readonly] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::Note.new(
  id: null,
  remote_id: 19202938,
  owner: 0358cbc6-2040-430a-848e-aafacbadf3aa,
  content: Merge is hiring!,
  contact: null,
  account: fba1fbc6-67c0-4cb2-a176-7896acd2ffd5,
  opportunity: 754a244e-dd67-4731-a8d3-9bff9dc10465,
  remote_updated_at: 2022-02-10T00:00Z,
  remote_created_at: 2021-11-10T00:00Z,
  remote_data: [{&quot;path&quot;:&quot;/notes&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  remote_was_deleted: null
)
```

