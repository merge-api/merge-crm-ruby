# MergeCRMClient::PaginatedAssociationTypeList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_next** | **String** |  | [optional] |
| **previous** | **String** |  | [optional] |
| **results** | [**Array&lt;AssociationType&gt;**](AssociationType.md) |  | [optional] |

## Example

```ruby
require 'merge_crm_client'

instance = MergeCRMClient::PaginatedAssociationTypeList.new(
  _next: cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw,
  previous: cj1sZXdwd2VycWVtY29zZnNkc2NzUWxNMEUxTXk0ME16UXpNallsTWtJ,
  results: null
)
```

