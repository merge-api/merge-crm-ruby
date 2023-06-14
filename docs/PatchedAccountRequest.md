# MergeCRMClient::PatchedAccountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner** | **String** | The account&#39;s owner. | [optional] |
| **name** | **String** | The account&#39;s name. | [optional] |
| **description** | **String** | The account&#39;s description. | [optional] |
| **industry** | **String** | The account&#39;s industry. | [optional] |
| **website** | **String** | The account&#39;s website. | [optional] |
| **number_of_employees** | **Integer** | The account&#39;s number of employees. | [optional] |
| **last_activity_at** | **Time** | The last date (either most recent or furthest in the future) of when an activity occurs in an account. | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **remote_fields** | [**Array&lt;RemoteFieldRequest&gt;**](RemoteFieldRequest.md) |  | [optional] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::PatchedAccountRequest.new(
  owner: 0258cbc6-6020-430a-848e-aafacbadf4ae,
  name: Merge API,
  description: One API for all integrations,
  industry: API&#39;s,
  website: https://merge.dev/,
  number_of_employees: 276000,
  last_activity_at: 2022-02-10T00:00Z,
  integration_params: {&quot;unique_integration_field&quot;:&quot;unique_integration_field_value&quot;},
  linked_account_params: {&quot;unique_linked_account_field&quot;:&quot;unique_linked_account_field_value&quot;},
  remote_fields: null
)
```

