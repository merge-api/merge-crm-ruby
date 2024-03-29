=begin
#Merge CRM API

#The unified API for building rich integrations with multiple CRM platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'cgi'

module MergeCRMClient
  class TasksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a `Task` object with the given values.
    # @param x_account_token [String] Token identifying the end user.
    # @param task_endpoint_request [TaskEndpointRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_debug_mode Whether to include debug fields (such as log file links) in the response.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @return [TaskResponse]
    def tasks_create(x_account_token, task_endpoint_request, opts = {})
      data, _status_code, _headers = tasks_create_with_http_info(x_account_token, task_endpoint_request, opts)
      data
    end

    # Creates a &#x60;Task&#x60; object with the given values.
    # @param x_account_token [String] Token identifying the end user.
    # @param task_endpoint_request [TaskEndpointRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_debug_mode Whether to include debug fields (such as log file links) in the response.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @return [Array<(TaskResponse, Integer, Hash)>] TaskResponse data, response status code and response headers
    def tasks_create_with_http_info(x_account_token, task_endpoint_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TasksApi.tasks_create ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling TasksApi.tasks_create"
      end
      # verify the required parameter 'task_endpoint_request' is set
      if @api_client.config.client_side_validation && task_endpoint_request.nil?
        fail ArgumentError, "Missing the required parameter 'task_endpoint_request' when calling TasksApi.tasks_create"
      end
      # resource path
      local_var_path = '/tasks'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'is_debug_mode'] = opts[:'is_debug_mode'] if !opts[:'is_debug_mode'].nil?
      query_params[:'run_async'] = opts[:'run_async'] if !opts[:'run_async'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'])
      header_params[:'X-Account-Token'] = x_account_token

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(task_endpoint_request)

      # return_type
      return_type = opts[:debug_return_type] || 'TaskResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"TasksApi.tasks_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TasksApi#tasks_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a list of `Task` objects.
    # @param x_account_token [String] Token identifying the end user.
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :created_after If provided, will only return objects created after this datetime.
    # @option opts [Time] :created_before If provided, will only return objects created before this datetime.
    # @option opts [String] :cursor The pagination cursor value.
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @option opts [Boolean] :include_deleted_data Whether to include data that was marked as deleted by third party webhooks.
    # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
    # @option opts [Boolean] :include_remote_fields Whether to include all remote fields, including fields that Merge did not map to common models, in a normalized format.
    # @option opts [Time] :modified_after If provided, only objects synced by Merge after this date time will be returned.
    # @option opts [Time] :modified_before If provided, only objects synced by Merge before this date time will be returned.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @option opts [String] :remote_id The API provider&#39;s ID for the given object.
    # @return [PaginatedTaskList]
    def tasks_list(x_account_token, opts = {})
      data, _status_code, _headers = tasks_list_with_http_info(x_account_token, opts)
      data
    end

    # Returns a list of &#x60;Task&#x60; objects.
    # @param x_account_token [String] Token identifying the end user.
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :created_after If provided, will only return objects created after this datetime.
    # @option opts [Time] :created_before If provided, will only return objects created before this datetime.
    # @option opts [String] :cursor The pagination cursor value.
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @option opts [Boolean] :include_deleted_data Whether to include data that was marked as deleted by third party webhooks.
    # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
    # @option opts [Boolean] :include_remote_fields Whether to include all remote fields, including fields that Merge did not map to common models, in a normalized format.
    # @option opts [Time] :modified_after If provided, only objects synced by Merge after this date time will be returned.
    # @option opts [Time] :modified_before If provided, only objects synced by Merge before this date time will be returned.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @option opts [String] :remote_id The API provider&#39;s ID for the given object.
    # @return [Array<(PaginatedTaskList, Integer, Hash)>] PaginatedTaskList data, response status code and response headers
    def tasks_list_with_http_info(x_account_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TasksApi.tasks_list ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling TasksApi.tasks_list"
      end
      allowable_values = ["account", "account,opportunity", "opportunity", "owner", "owner,account", "owner,account,opportunity", "owner,opportunity"]
      if @api_client.config.client_side_validation && opts[:'expand'] && !allowable_values.include?(opts[:'expand'])
        fail ArgumentError, "invalid value for \"expand\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/tasks'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'created_after'] = opts[:'created_after'] if !opts[:'created_after'].nil?
      query_params[:'created_before'] = opts[:'created_before'] if !opts[:'created_before'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?
      query_params[:'include_deleted_data'] = opts[:'include_deleted_data'] if !opts[:'include_deleted_data'].nil?
      query_params[:'include_remote_data'] = opts[:'include_remote_data'] if !opts[:'include_remote_data'].nil?
      query_params[:'include_remote_fields'] = opts[:'include_remote_fields'] if !opts[:'include_remote_fields'].nil?
      query_params[:'modified_after'] = opts[:'modified_after'] if !opts[:'modified_after'].nil?
      query_params[:'modified_before'] = opts[:'modified_before'] if !opts[:'modified_before'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'remote_id'] = opts[:'remote_id'] if !opts[:'remote_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Account-Token'] = x_account_token

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PaginatedTaskList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"TasksApi.tasks_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TasksApi#tasks_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns metadata for `Task` PATCHs.
    # @param x_account_token [String] Token identifying the end user.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [MetaResponse]
    def tasks_meta_patch_retrieve(x_account_token, id, opts = {})
      data, _status_code, _headers = tasks_meta_patch_retrieve_with_http_info(x_account_token, id, opts)
      data
    end

    # Returns metadata for &#x60;Task&#x60; PATCHs.
    # @param x_account_token [String] Token identifying the end user.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetaResponse, Integer, Hash)>] MetaResponse data, response status code and response headers
    def tasks_meta_patch_retrieve_with_http_info(x_account_token, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TasksApi.tasks_meta_patch_retrieve ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling TasksApi.tasks_meta_patch_retrieve"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TasksApi.tasks_meta_patch_retrieve"
      end
      # resource path
      local_var_path = '/tasks/meta/patch/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Account-Token'] = x_account_token

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MetaResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"TasksApi.tasks_meta_patch_retrieve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TasksApi#tasks_meta_patch_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns metadata for `Task` POSTs.
    # @param x_account_token [String] Token identifying the end user.
    # @param [Hash] opts the optional parameters
    # @return [MetaResponse]
    def tasks_meta_post_retrieve(x_account_token, opts = {})
      data, _status_code, _headers = tasks_meta_post_retrieve_with_http_info(x_account_token, opts)
      data
    end

    # Returns metadata for &#x60;Task&#x60; POSTs.
    # @param x_account_token [String] Token identifying the end user.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetaResponse, Integer, Hash)>] MetaResponse data, response status code and response headers
    def tasks_meta_post_retrieve_with_http_info(x_account_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TasksApi.tasks_meta_post_retrieve ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling TasksApi.tasks_meta_post_retrieve"
      end
      # resource path
      local_var_path = '/tasks/meta/post'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Account-Token'] = x_account_token

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MetaResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"TasksApi.tasks_meta_post_retrieve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TasksApi#tasks_meta_post_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a `Task` object with the given `id`.
    # @param x_account_token [String] Token identifying the end user.
    # @param id [String] 
    # @param patched_task_endpoint_request [PatchedTaskEndpointRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_debug_mode Whether to include debug fields (such as log file links) in the response.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @return [TaskResponse]
    def tasks_partial_update(x_account_token, id, patched_task_endpoint_request, opts = {})
      data, _status_code, _headers = tasks_partial_update_with_http_info(x_account_token, id, patched_task_endpoint_request, opts)
      data
    end

    # Updates a &#x60;Task&#x60; object with the given &#x60;id&#x60;.
    # @param x_account_token [String] Token identifying the end user.
    # @param id [String] 
    # @param patched_task_endpoint_request [PatchedTaskEndpointRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_debug_mode Whether to include debug fields (such as log file links) in the response.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @return [Array<(TaskResponse, Integer, Hash)>] TaskResponse data, response status code and response headers
    def tasks_partial_update_with_http_info(x_account_token, id, patched_task_endpoint_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TasksApi.tasks_partial_update ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling TasksApi.tasks_partial_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TasksApi.tasks_partial_update"
      end
      # verify the required parameter 'patched_task_endpoint_request' is set
      if @api_client.config.client_side_validation && patched_task_endpoint_request.nil?
        fail ArgumentError, "Missing the required parameter 'patched_task_endpoint_request' when calling TasksApi.tasks_partial_update"
      end
      # resource path
      local_var_path = '/tasks/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'is_debug_mode'] = opts[:'is_debug_mode'] if !opts[:'is_debug_mode'].nil?
      query_params[:'run_async'] = opts[:'run_async'] if !opts[:'run_async'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'])
      header_params[:'X-Account-Token'] = x_account_token

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patched_task_endpoint_request)

      # return_type
      return_type = opts[:debug_return_type] || 'TaskResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"TasksApi.tasks_partial_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TasksApi#tasks_partial_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a list of `RemoteFieldClass` objects.
    # @param x_account_token [String] Token identifying the end user.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor The pagination cursor value.
    # @option opts [Boolean] :include_deleted_data Whether to include data that was marked as deleted by third party webhooks.
    # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
    # @option opts [Boolean] :include_remote_fields Whether to include all remote fields, including fields that Merge did not map to common models, in a normalized format.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @return [PaginatedRemoteFieldClassList]
    def tasks_remote_field_classes_list(x_account_token, opts = {})
      data, _status_code, _headers = tasks_remote_field_classes_list_with_http_info(x_account_token, opts)
      data
    end

    # Returns a list of &#x60;RemoteFieldClass&#x60; objects.
    # @param x_account_token [String] Token identifying the end user.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor The pagination cursor value.
    # @option opts [Boolean] :include_deleted_data Whether to include data that was marked as deleted by third party webhooks.
    # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
    # @option opts [Boolean] :include_remote_fields Whether to include all remote fields, including fields that Merge did not map to common models, in a normalized format.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @return [Array<(PaginatedRemoteFieldClassList, Integer, Hash)>] PaginatedRemoteFieldClassList data, response status code and response headers
    def tasks_remote_field_classes_list_with_http_info(x_account_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TasksApi.tasks_remote_field_classes_list ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling TasksApi.tasks_remote_field_classes_list"
      end
      # resource path
      local_var_path = '/tasks/remote-field-classes'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'include_deleted_data'] = opts[:'include_deleted_data'] if !opts[:'include_deleted_data'].nil?
      query_params[:'include_remote_data'] = opts[:'include_remote_data'] if !opts[:'include_remote_data'].nil?
      query_params[:'include_remote_fields'] = opts[:'include_remote_fields'] if !opts[:'include_remote_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Account-Token'] = x_account_token

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PaginatedRemoteFieldClassList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"TasksApi.tasks_remote_field_classes_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TasksApi#tasks_remote_field_classes_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a `Task` object with the given `id`.
    # @param x_account_token [String] Token identifying the end user.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
    # @option opts [Boolean] :include_remote_fields Whether to include all remote fields, including fields that Merge did not map to common models, in a normalized format.
    # @return [Task]
    def tasks_retrieve(x_account_token, id, opts = {})
      data, _status_code, _headers = tasks_retrieve_with_http_info(x_account_token, id, opts)
      data
    end

    # Returns a &#x60;Task&#x60; object with the given &#x60;id&#x60;.
    # @param x_account_token [String] Token identifying the end user.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
    # @option opts [Boolean] :include_remote_fields Whether to include all remote fields, including fields that Merge did not map to common models, in a normalized format.
    # @return [Array<(Task, Integer, Hash)>] Task data, response status code and response headers
    def tasks_retrieve_with_http_info(x_account_token, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TasksApi.tasks_retrieve ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling TasksApi.tasks_retrieve"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TasksApi.tasks_retrieve"
      end
      allowable_values = ["account", "account,opportunity", "opportunity", "owner", "owner,account", "owner,account,opportunity", "owner,opportunity"]
      if @api_client.config.client_side_validation && opts[:'expand'] && !allowable_values.include?(opts[:'expand'])
        fail ArgumentError, "invalid value for \"expand\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/tasks/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?
      query_params[:'include_remote_data'] = opts[:'include_remote_data'] if !opts[:'include_remote_data'].nil?
      query_params[:'include_remote_fields'] = opts[:'include_remote_fields'] if !opts[:'include_remote_fields'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Account-Token'] = x_account_token

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Task'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"TasksApi.tasks_retrieve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TasksApi#tasks_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
