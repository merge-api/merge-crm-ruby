# merge_crm_client

MergeCRMClient - the Ruby gem for the Merge CRM API

The unified API for building rich integrations with multiple CRM platforms.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0
- Package version: 1.0.1
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://www.merge.dev/](https://www.merge.dev/)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build merge_crm_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./merge_crm_client-1.0.1.gem
```

(for development, run `gem install --dev ./merge_crm_client-1.0.1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'merge_crm_client', '~> 1.0.1'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/merge-api/merge-crm-ruby, then add the following in the Gemfile:

    gem 'merge_crm_client', :git => 'https://github.com/merge-api/merge-crm-ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'merge_crm_client'

# Setup authorization
MergeCRMClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = MergeCRMClient::AccountDetailsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  result = api_instance.account_details_retrieve(x_account_token)
  p result
rescue MergeCRMClient::ApiError => e
  puts "Exception when calling AccountDetailsApi->account_details_retrieve: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.merge.dev/api/crm/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*MergeCRMClient::AccountDetailsApi* | [**account_details_retrieve**](docs/AccountDetailsApi.md#account_details_retrieve) | **GET** /account-details | 
*MergeCRMClient::AccountTokenApi* | [**account_token_retrieve**](docs/AccountTokenApi.md#account_token_retrieve) | **GET** /account-token/{public_token} | 
*MergeCRMClient::AccountsApi* | [**accounts_create**](docs/AccountsApi.md#accounts_create) | **POST** /accounts | 
*MergeCRMClient::AccountsApi* | [**accounts_list**](docs/AccountsApi.md#accounts_list) | **GET** /accounts | 
*MergeCRMClient::AccountsApi* | [**accounts_meta_post_retrieve**](docs/AccountsApi.md#accounts_meta_post_retrieve) | **GET** /accounts/meta/post | 
*MergeCRMClient::AccountsApi* | [**accounts_retrieve**](docs/AccountsApi.md#accounts_retrieve) | **GET** /accounts/{id} | 
*MergeCRMClient::AvailableActionsApi* | [**available_actions_retrieve**](docs/AvailableActionsApi.md#available_actions_retrieve) | **GET** /available-actions | 
*MergeCRMClient::ContactsApi* | [**contacts_create**](docs/ContactsApi.md#contacts_create) | **POST** /contacts | 
*MergeCRMClient::ContactsApi* | [**contacts_list**](docs/ContactsApi.md#contacts_list) | **GET** /contacts | 
*MergeCRMClient::ContactsApi* | [**contacts_meta_post_retrieve**](docs/ContactsApi.md#contacts_meta_post_retrieve) | **GET** /contacts/meta/post | 
*MergeCRMClient::ContactsApi* | [**contacts_retrieve**](docs/ContactsApi.md#contacts_retrieve) | **GET** /contacts/{id} | 
*MergeCRMClient::DeleteAccountApi* | [**delete_account_create**](docs/DeleteAccountApi.md#delete_account_create) | **POST** /delete-account | 
*MergeCRMClient::EngagementTypesApi* | [**engagement_types_list**](docs/EngagementTypesApi.md#engagement_types_list) | **GET** /engagement-types | 
*MergeCRMClient::EngagementTypesApi* | [**engagement_types_retrieve**](docs/EngagementTypesApi.md#engagement_types_retrieve) | **GET** /engagement-types/{id} | 
*MergeCRMClient::EngagementsApi* | [**engagements_create**](docs/EngagementsApi.md#engagements_create) | **POST** /engagements | 
*MergeCRMClient::EngagementsApi* | [**engagements_list**](docs/EngagementsApi.md#engagements_list) | **GET** /engagements | 
*MergeCRMClient::EngagementsApi* | [**engagements_meta_post_retrieve**](docs/EngagementsApi.md#engagements_meta_post_retrieve) | **GET** /engagements/meta/post | 
*MergeCRMClient::EngagementsApi* | [**engagements_retrieve**](docs/EngagementsApi.md#engagements_retrieve) | **GET** /engagements/{id} | 
*MergeCRMClient::ForceResyncApi* | [**sync_status_resync_create**](docs/ForceResyncApi.md#sync_status_resync_create) | **POST** /sync-status/resync | 
*MergeCRMClient::GenerateKeyApi* | [**generate_key_create**](docs/GenerateKeyApi.md#generate_key_create) | **POST** /generate-key | 
*MergeCRMClient::IssuesApi* | [**issues_list**](docs/IssuesApi.md#issues_list) | **GET** /issues | 
*MergeCRMClient::IssuesApi* | [**issues_retrieve**](docs/IssuesApi.md#issues_retrieve) | **GET** /issues/{id} | 
*MergeCRMClient::LeadsApi* | [**leads_create**](docs/LeadsApi.md#leads_create) | **POST** /leads | 
*MergeCRMClient::LeadsApi* | [**leads_list**](docs/LeadsApi.md#leads_list) | **GET** /leads | 
*MergeCRMClient::LeadsApi* | [**leads_meta_post_retrieve**](docs/LeadsApi.md#leads_meta_post_retrieve) | **GET** /leads/meta/post | 
*MergeCRMClient::LeadsApi* | [**leads_retrieve**](docs/LeadsApi.md#leads_retrieve) | **GET** /leads/{id} | 
*MergeCRMClient::LinkTokenApi* | [**link_token_create**](docs/LinkTokenApi.md#link_token_create) | **POST** /link-token | 
*MergeCRMClient::LinkedAccountsApi* | [**linked_accounts_list**](docs/LinkedAccountsApi.md#linked_accounts_list) | **GET** /linked-accounts | 
*MergeCRMClient::NotesApi* | [**notes_create**](docs/NotesApi.md#notes_create) | **POST** /notes | 
*MergeCRMClient::NotesApi* | [**notes_list**](docs/NotesApi.md#notes_list) | **GET** /notes | 
*MergeCRMClient::NotesApi* | [**notes_meta_post_retrieve**](docs/NotesApi.md#notes_meta_post_retrieve) | **GET** /notes/meta/post | 
*MergeCRMClient::NotesApi* | [**notes_retrieve**](docs/NotesApi.md#notes_retrieve) | **GET** /notes/{id} | 
*MergeCRMClient::OpportunitiesApi* | [**opportunities_create**](docs/OpportunitiesApi.md#opportunities_create) | **POST** /opportunities | 
*MergeCRMClient::OpportunitiesApi* | [**opportunities_list**](docs/OpportunitiesApi.md#opportunities_list) | **GET** /opportunities | 
*MergeCRMClient::OpportunitiesApi* | [**opportunities_meta_patch_retrieve**](docs/OpportunitiesApi.md#opportunities_meta_patch_retrieve) | **GET** /opportunities/meta/patch/{id} | 
*MergeCRMClient::OpportunitiesApi* | [**opportunities_meta_post_retrieve**](docs/OpportunitiesApi.md#opportunities_meta_post_retrieve) | **GET** /opportunities/meta/post | 
*MergeCRMClient::OpportunitiesApi* | [**opportunities_partial_update**](docs/OpportunitiesApi.md#opportunities_partial_update) | **PATCH** /opportunities/{id} | 
*MergeCRMClient::OpportunitiesApi* | [**opportunities_retrieve**](docs/OpportunitiesApi.md#opportunities_retrieve) | **GET** /opportunities/{id} | 
*MergeCRMClient::PassthroughApi* | [**passthrough_create**](docs/PassthroughApi.md#passthrough_create) | **POST** /passthrough | 
*MergeCRMClient::RegenerateKeyApi* | [**regenerate_key_create**](docs/RegenerateKeyApi.md#regenerate_key_create) | **POST** /regenerate-key | 
*MergeCRMClient::StagesApi* | [**stages_list**](docs/StagesApi.md#stages_list) | **GET** /stages | 
*MergeCRMClient::StagesApi* | [**stages_retrieve**](docs/StagesApi.md#stages_retrieve) | **GET** /stages/{id} | 
*MergeCRMClient::SyncStatusApi* | [**sync_status_list**](docs/SyncStatusApi.md#sync_status_list) | **GET** /sync-status | 
*MergeCRMClient::TasksApi* | [**tasks_list**](docs/TasksApi.md#tasks_list) | **GET** /tasks | 
*MergeCRMClient::TasksApi* | [**tasks_retrieve**](docs/TasksApi.md#tasks_retrieve) | **GET** /tasks/{id} | 
*MergeCRMClient::UsersApi* | [**users_list**](docs/UsersApi.md#users_list) | **GET** /users | 
*MergeCRMClient::UsersApi* | [**users_retrieve**](docs/UsersApi.md#users_retrieve) | **GET** /users/{id} | 
*MergeCRMClient::WebhookReceiversApi* | [**webhook_receivers_create**](docs/WebhookReceiversApi.md#webhook_receivers_create) | **POST** /webhook-receivers | 
*MergeCRMClient::WebhookReceiversApi* | [**webhook_receivers_list**](docs/WebhookReceiversApi.md#webhook_receivers_list) | **GET** /webhook-receivers | 


## Documentation for Models

 - [MergeCRMClient::Account](docs/Account.md)
 - [MergeCRMClient::AccountDetails](docs/AccountDetails.md)
 - [MergeCRMClient::AccountDetailsAndActions](docs/AccountDetailsAndActions.md)
 - [MergeCRMClient::AccountDetailsAndActionsIntegration](docs/AccountDetailsAndActionsIntegration.md)
 - [MergeCRMClient::AccountDetailsAndActionsStatusEnum](docs/AccountDetailsAndActionsStatusEnum.md)
 - [MergeCRMClient::AccountIntegration](docs/AccountIntegration.md)
 - [MergeCRMClient::AccountRequest](docs/AccountRequest.md)
 - [MergeCRMClient::AccountToken](docs/AccountToken.md)
 - [MergeCRMClient::ActivityTypeEnum](docs/ActivityTypeEnum.md)
 - [MergeCRMClient::Address](docs/Address.md)
 - [MergeCRMClient::AddressRequest](docs/AddressRequest.md)
 - [MergeCRMClient::AddressTypeEnum](docs/AddressTypeEnum.md)
 - [MergeCRMClient::AvailableActions](docs/AvailableActions.md)
 - [MergeCRMClient::CRMAccountEndpointRequest](docs/CRMAccountEndpointRequest.md)
 - [MergeCRMClient::CRMAccountResponse](docs/CRMAccountResponse.md)
 - [MergeCRMClient::CRMContactEndpointRequest](docs/CRMContactEndpointRequest.md)
 - [MergeCRMClient::CRMContactResponse](docs/CRMContactResponse.md)
 - [MergeCRMClient::CategoriesEnum](docs/CategoriesEnum.md)
 - [MergeCRMClient::CategoryEnum](docs/CategoryEnum.md)
 - [MergeCRMClient::Contact](docs/Contact.md)
 - [MergeCRMClient::ContactRequest](docs/ContactRequest.md)
 - [MergeCRMClient::CountryEnum](docs/CountryEnum.md)
 - [MergeCRMClient::DataPassthroughRequest](docs/DataPassthroughRequest.md)
 - [MergeCRMClient::DebugModeLog](docs/DebugModeLog.md)
 - [MergeCRMClient::DebugModelLogSummary](docs/DebugModelLogSummary.md)
 - [MergeCRMClient::DirectionEnum](docs/DirectionEnum.md)
 - [MergeCRMClient::EmailAddress](docs/EmailAddress.md)
 - [MergeCRMClient::EmailAddressRequest](docs/EmailAddressRequest.md)
 - [MergeCRMClient::EncodingEnum](docs/EncodingEnum.md)
 - [MergeCRMClient::EndUserDetailsRequest](docs/EndUserDetailsRequest.md)
 - [MergeCRMClient::Engagement](docs/Engagement.md)
 - [MergeCRMClient::EngagementEndpointRequest](docs/EngagementEndpointRequest.md)
 - [MergeCRMClient::EngagementRequest](docs/EngagementRequest.md)
 - [MergeCRMClient::EngagementResponse](docs/EngagementResponse.md)
 - [MergeCRMClient::EngagementType](docs/EngagementType.md)
 - [MergeCRMClient::ErrorValidationProblem](docs/ErrorValidationProblem.md)
 - [MergeCRMClient::GenerateRemoteKeyRequest](docs/GenerateRemoteKeyRequest.md)
 - [MergeCRMClient::Issue](docs/Issue.md)
 - [MergeCRMClient::IssueStatusEnum](docs/IssueStatusEnum.md)
 - [MergeCRMClient::Lead](docs/Lead.md)
 - [MergeCRMClient::LeadEndpointRequest](docs/LeadEndpointRequest.md)
 - [MergeCRMClient::LeadRequest](docs/LeadRequest.md)
 - [MergeCRMClient::LeadResponse](docs/LeadResponse.md)
 - [MergeCRMClient::LinkToken](docs/LinkToken.md)
 - [MergeCRMClient::LinkedAccountStatus](docs/LinkedAccountStatus.md)
 - [MergeCRMClient::MetaResponse](docs/MetaResponse.md)
 - [MergeCRMClient::MethodEnum](docs/MethodEnum.md)
 - [MergeCRMClient::ModelOperation](docs/ModelOperation.md)
 - [MergeCRMClient::MultipartFormFieldRequest](docs/MultipartFormFieldRequest.md)
 - [MergeCRMClient::Note](docs/Note.md)
 - [MergeCRMClient::NoteEndpointRequest](docs/NoteEndpointRequest.md)
 - [MergeCRMClient::NoteRequest](docs/NoteRequest.md)
 - [MergeCRMClient::NoteResponse](docs/NoteResponse.md)
 - [MergeCRMClient::Opportunity](docs/Opportunity.md)
 - [MergeCRMClient::OpportunityEndpointRequest](docs/OpportunityEndpointRequest.md)
 - [MergeCRMClient::OpportunityRequest](docs/OpportunityRequest.md)
 - [MergeCRMClient::OpportunityResponse](docs/OpportunityResponse.md)
 - [MergeCRMClient::OpportunityStatusEnum](docs/OpportunityStatusEnum.md)
 - [MergeCRMClient::PaginatedAccountDetailsAndActionsList](docs/PaginatedAccountDetailsAndActionsList.md)
 - [MergeCRMClient::PaginatedAccountList](docs/PaginatedAccountList.md)
 - [MergeCRMClient::PaginatedContactList](docs/PaginatedContactList.md)
 - [MergeCRMClient::PaginatedEngagementList](docs/PaginatedEngagementList.md)
 - [MergeCRMClient::PaginatedEngagementTypeList](docs/PaginatedEngagementTypeList.md)
 - [MergeCRMClient::PaginatedIssueList](docs/PaginatedIssueList.md)
 - [MergeCRMClient::PaginatedLeadList](docs/PaginatedLeadList.md)
 - [MergeCRMClient::PaginatedNoteList](docs/PaginatedNoteList.md)
 - [MergeCRMClient::PaginatedOpportunityList](docs/PaginatedOpportunityList.md)
 - [MergeCRMClient::PaginatedStageList](docs/PaginatedStageList.md)
 - [MergeCRMClient::PaginatedSyncStatusList](docs/PaginatedSyncStatusList.md)
 - [MergeCRMClient::PaginatedTaskList](docs/PaginatedTaskList.md)
 - [MergeCRMClient::PaginatedUserList](docs/PaginatedUserList.md)
 - [MergeCRMClient::PatchedOpportunityEndpointRequest](docs/PatchedOpportunityEndpointRequest.md)
 - [MergeCRMClient::PatchedOpportunityRequest](docs/PatchedOpportunityRequest.md)
 - [MergeCRMClient::PhoneNumber](docs/PhoneNumber.md)
 - [MergeCRMClient::PhoneNumberRequest](docs/PhoneNumberRequest.md)
 - [MergeCRMClient::RemoteData](docs/RemoteData.md)
 - [MergeCRMClient::RemoteKey](docs/RemoteKey.md)
 - [MergeCRMClient::RemoteKeyForRegenerationRequest](docs/RemoteKeyForRegenerationRequest.md)
 - [MergeCRMClient::RemoteResponse](docs/RemoteResponse.md)
 - [MergeCRMClient::RequestFormatEnum](docs/RequestFormatEnum.md)
 - [MergeCRMClient::ResponseTypeEnum](docs/ResponseTypeEnum.md)
 - [MergeCRMClient::Stage](docs/Stage.md)
 - [MergeCRMClient::SyncStatus](docs/SyncStatus.md)
 - [MergeCRMClient::SyncStatusStatusEnum](docs/SyncStatusStatusEnum.md)
 - [MergeCRMClient::Task](docs/Task.md)
 - [MergeCRMClient::TaskStatusEnum](docs/TaskStatusEnum.md)
 - [MergeCRMClient::User](docs/User.md)
 - [MergeCRMClient::ValidationProblemSource](docs/ValidationProblemSource.md)
 - [MergeCRMClient::WarningValidationProblem](docs/WarningValidationProblem.md)
 - [MergeCRMClient::WebhookReceiver](docs/WebhookReceiver.md)
 - [MergeCRMClient::WebhookReceiverRequest](docs/WebhookReceiverRequest.md)


## Documentation for Authorization


### tokenAuth


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

