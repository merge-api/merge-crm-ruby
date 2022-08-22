# MergeCRMClient::ContactRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **first_name** | **String** | The contact&#39;s first name. | [optional] |
| **last_name** | **String** | The contact&#39;s last name. | [optional] |
| **account** | **String** |  | [optional] |
| **last_activity_at** | **Time** | When the contact&#39;s last activity occurred. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s contact was created. | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::ContactRequest.new(
  remote_id: 19202938,
  first_name: Gil,
  last_name: Feig,
  account: 0958cbc6-6040-430a-848e-aafacbadf4ae,
  last_activity_at: 2022-02-10T00:00Z,
  remote_created_at: 2021-11-10T00:00Z,
  integration_params: null,
  linked_account_params: null
)
```

