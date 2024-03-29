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
  class AssociationTypesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates an `AssociationType` object with the given values.
    # @param x_account_token [String] Token identifying the end user.
    # @param custom_object_class_id [String] 
    # @param crm_association_type_endpoint_request [CRMAssociationTypeEndpointRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_debug_mode Whether to include debug fields (such as log file links) in the response.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @return [CRMAssociationTypeResponse]
    def custom_object_classes_association_types_create(x_account_token, custom_object_class_id, crm_association_type_endpoint_request, opts = {})
      data, _status_code, _headers = custom_object_classes_association_types_create_with_http_info(x_account_token, custom_object_class_id, crm_association_type_endpoint_request, opts)
      data
    end

    # Creates an &#x60;AssociationType&#x60; object with the given values.
    # @param x_account_token [String] Token identifying the end user.
    # @param custom_object_class_id [String] 
    # @param crm_association_type_endpoint_request [CRMAssociationTypeEndpointRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_debug_mode Whether to include debug fields (such as log file links) in the response.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @return [Array<(CRMAssociationTypeResponse, Integer, Hash)>] CRMAssociationTypeResponse data, response status code and response headers
    def custom_object_classes_association_types_create_with_http_info(x_account_token, custom_object_class_id, crm_association_type_endpoint_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationTypesApi.custom_object_classes_association_types_create ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling AssociationTypesApi.custom_object_classes_association_types_create"
      end
      # verify the required parameter 'custom_object_class_id' is set
      if @api_client.config.client_side_validation && custom_object_class_id.nil?
        fail ArgumentError, "Missing the required parameter 'custom_object_class_id' when calling AssociationTypesApi.custom_object_classes_association_types_create"
      end
      # verify the required parameter 'crm_association_type_endpoint_request' is set
      if @api_client.config.client_side_validation && crm_association_type_endpoint_request.nil?
        fail ArgumentError, "Missing the required parameter 'crm_association_type_endpoint_request' when calling AssociationTypesApi.custom_object_classes_association_types_create"
      end
      # resource path
      local_var_path = '/custom-object-classes/{custom_object_class_id}/association-types'.sub('{' + 'custom_object_class_id' + '}', CGI.escape(custom_object_class_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(crm_association_type_endpoint_request)

      # return_type
      return_type = opts[:debug_return_type] || 'CRMAssociationTypeResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"AssociationTypesApi.custom_object_classes_association_types_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationTypesApi#custom_object_classes_association_types_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a list of `AssociationType` objects.
    # @param x_account_token [String] Token identifying the end user.
    # @param custom_object_class_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :created_after If provided, will only return objects created after this datetime.
    # @option opts [Time] :created_before If provided, will only return objects created before this datetime.
    # @option opts [String] :cursor The pagination cursor value.
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @option opts [Boolean] :include_deleted_data Whether to include data that was marked as deleted by third party webhooks.
    # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
    # @option opts [Time] :modified_after If provided, only objects synced by Merge after this date time will be returned.
    # @option opts [Time] :modified_before If provided, only objects synced by Merge before this date time will be returned.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @option opts [String] :remote_id The API provider&#39;s ID for the given object.
    # @return [PaginatedAssociationTypeList]
    def custom_object_classes_association_types_list(x_account_token, custom_object_class_id, opts = {})
      data, _status_code, _headers = custom_object_classes_association_types_list_with_http_info(x_account_token, custom_object_class_id, opts)
      data
    end

    # Returns a list of &#x60;AssociationType&#x60; objects.
    # @param x_account_token [String] Token identifying the end user.
    # @param custom_object_class_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :created_after If provided, will only return objects created after this datetime.
    # @option opts [Time] :created_before If provided, will only return objects created before this datetime.
    # @option opts [String] :cursor The pagination cursor value.
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @option opts [Boolean] :include_deleted_data Whether to include data that was marked as deleted by third party webhooks.
    # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
    # @option opts [Time] :modified_after If provided, only objects synced by Merge after this date time will be returned.
    # @option opts [Time] :modified_before If provided, only objects synced by Merge before this date time will be returned.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @option opts [String] :remote_id The API provider&#39;s ID for the given object.
    # @return [Array<(PaginatedAssociationTypeList, Integer, Hash)>] PaginatedAssociationTypeList data, response status code and response headers
    def custom_object_classes_association_types_list_with_http_info(x_account_token, custom_object_class_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationTypesApi.custom_object_classes_association_types_list ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling AssociationTypesApi.custom_object_classes_association_types_list"
      end
      # verify the required parameter 'custom_object_class_id' is set
      if @api_client.config.client_side_validation && custom_object_class_id.nil?
        fail ArgumentError, "Missing the required parameter 'custom_object_class_id' when calling AssociationTypesApi.custom_object_classes_association_types_list"
      end
      allowable_values = ["target_object_classes"]
      if @api_client.config.client_side_validation && opts[:'expand'] && !allowable_values.include?(opts[:'expand'])
        fail ArgumentError, "invalid value for \"expand\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/custom-object-classes/{custom_object_class_id}/association-types'.sub('{' + 'custom_object_class_id' + '}', CGI.escape(custom_object_class_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'created_after'] = opts[:'created_after'] if !opts[:'created_after'].nil?
      query_params[:'created_before'] = opts[:'created_before'] if !opts[:'created_before'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?
      query_params[:'include_deleted_data'] = opts[:'include_deleted_data'] if !opts[:'include_deleted_data'].nil?
      query_params[:'include_remote_data'] = opts[:'include_remote_data'] if !opts[:'include_remote_data'].nil?
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
      return_type = opts[:debug_return_type] || 'PaginatedAssociationTypeList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"AssociationTypesApi.custom_object_classes_association_types_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationTypesApi#custom_object_classes_association_types_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns metadata for `CRMAssociationType` POSTs.
    # @param x_account_token [String] Token identifying the end user.
    # @param custom_object_class_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [MetaResponse]
    def custom_object_classes_association_types_meta_post_retrieve(x_account_token, custom_object_class_id, opts = {})
      data, _status_code, _headers = custom_object_classes_association_types_meta_post_retrieve_with_http_info(x_account_token, custom_object_class_id, opts)
      data
    end

    # Returns metadata for &#x60;CRMAssociationType&#x60; POSTs.
    # @param x_account_token [String] Token identifying the end user.
    # @param custom_object_class_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetaResponse, Integer, Hash)>] MetaResponse data, response status code and response headers
    def custom_object_classes_association_types_meta_post_retrieve_with_http_info(x_account_token, custom_object_class_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationTypesApi.custom_object_classes_association_types_meta_post_retrieve ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling AssociationTypesApi.custom_object_classes_association_types_meta_post_retrieve"
      end
      # verify the required parameter 'custom_object_class_id' is set
      if @api_client.config.client_side_validation && custom_object_class_id.nil?
        fail ArgumentError, "Missing the required parameter 'custom_object_class_id' when calling AssociationTypesApi.custom_object_classes_association_types_meta_post_retrieve"
      end
      # resource path
      local_var_path = '/custom-object-classes/{custom_object_class_id}/association-types/meta/post'.sub('{' + 'custom_object_class_id' + '}', CGI.escape(custom_object_class_id.to_s))

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
        :operation => :"AssociationTypesApi.custom_object_classes_association_types_meta_post_retrieve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationTypesApi#custom_object_classes_association_types_meta_post_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns an `AssociationType` object with the given `id`.
    # @param x_account_token [String] Token identifying the end user.
    # @param custom_object_class_id [String] 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
    # @return [AssociationType]
    def custom_object_classes_association_types_retrieve(x_account_token, custom_object_class_id, id, opts = {})
      data, _status_code, _headers = custom_object_classes_association_types_retrieve_with_http_info(x_account_token, custom_object_class_id, id, opts)
      data
    end

    # Returns an &#x60;AssociationType&#x60; object with the given &#x60;id&#x60;.
    # @param x_account_token [String] Token identifying the end user.
    # @param custom_object_class_id [String] 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
    # @return [Array<(AssociationType, Integer, Hash)>] AssociationType data, response status code and response headers
    def custom_object_classes_association_types_retrieve_with_http_info(x_account_token, custom_object_class_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationTypesApi.custom_object_classes_association_types_retrieve ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling AssociationTypesApi.custom_object_classes_association_types_retrieve"
      end
      # verify the required parameter 'custom_object_class_id' is set
      if @api_client.config.client_side_validation && custom_object_class_id.nil?
        fail ArgumentError, "Missing the required parameter 'custom_object_class_id' when calling AssociationTypesApi.custom_object_classes_association_types_retrieve"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AssociationTypesApi.custom_object_classes_association_types_retrieve"
      end
      allowable_values = ["target_object_classes"]
      if @api_client.config.client_side_validation && opts[:'expand'] && !allowable_values.include?(opts[:'expand'])
        fail ArgumentError, "invalid value for \"expand\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/custom-object-classes/{custom_object_class_id}/association-types/{id}'.sub('{' + 'custom_object_class_id' + '}', CGI.escape(custom_object_class_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?
      query_params[:'include_remote_data'] = opts[:'include_remote_data'] if !opts[:'include_remote_data'].nil?

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
      return_type = opts[:debug_return_type] || 'AssociationType'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"AssociationTypesApi.custom_object_classes_association_types_retrieve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationTypesApi#custom_object_classes_association_types_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
