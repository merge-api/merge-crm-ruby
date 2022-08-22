# MergeCRMClient::AccountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **owner** | **String** |  | [optional] |
| **name** | **String** | The account&#39;s name. | [optional] |
| **description** | **String** | The account&#39;s description. | [optional] |
| **industry** | **String** | The account&#39;s industry. | [optional] |
| **website** | **String** | The account&#39;s website. | [optional] |
| **number_of_employees** | **Integer** | The account&#39;s number of employees. | [optional] |
| **last_activity_at** | **Time** | When the account&#39;s last activity  occurred. | [optional] |
| **remote_updated_at** | **Time** | When the third party&#39;s account was updated. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s account was created. | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::AccountRequest.new(
  remote_id: 19202938,
  owner: 0258cbc6-6020-430a-848e-aafacbadf4ae,
  name: Merge API,
  description: One API for all integrations,
  industry: API&#39;s,
  website: https://merge.dev/,
  number_of_employees: 276000,
  last_activity_at: 2022-02-10T00:00Z,
  remote_updated_at: 2022-01-09T00:00Z,
  remote_created_at: 2021-11-10T00:00Z,
  integration_params: null,
  linked_account_params: null
)
```

