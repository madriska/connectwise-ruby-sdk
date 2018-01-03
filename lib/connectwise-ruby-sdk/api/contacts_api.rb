
require "uri"

module ConnectWise
  class ContactsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Contacts Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :custom_field_conditions 
    # @option opts [String] :child_conditions 
    # @return [Count]
    def company_contacts_count_get(opts = {})
      data, _status_code, _headers = company_contacts_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Contacts Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :custom_field_conditions 
    # @option opts [String] :child_conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def company_contacts_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactsApi.company_contacts_count_get ..."
      end
      # resource path
      local_var_path = "/company/contacts/count"

      # query parameters
      query_params = {}
      query_params[:'conditions'] = opts[:'conditions'] if !opts[:'conditions'].nil?
      query_params[:'customFieldConditions'] = opts[:'custom_field_conditions'] if !opts[:'custom_field_conditions'].nil?
      query_params[:'childConditions'] = opts[:'child_conditions'] if !opts[:'child_conditions'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Count')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#company_contacts_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Contacts
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<Contact>]
    def company_contacts_get(opts = {})
      data, _status_code, _headers = company_contacts_get_with_http_info(opts)
      return data
    end

    # 
    # Get Contacts
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<Contact>, Fixnum, Hash)>] Array<Contact> data, response status code and response headers
    def company_contacts_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactsApi.company_contacts_get ..."
      end
      # resource path
      local_var_path = "/company/contacts"

      # query parameters
      query_params = {}
      query_params[:'conditions'] = opts[:'conditions'] if !opts[:'conditions'].nil?
      query_params[:'orderBy'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'childconditions'] = opts[:'childconditions'] if !opts[:'childconditions'].nil?
      query_params[:'customfieldconditions'] = opts[:'customfieldconditions'] if !opts[:'customfieldconditions'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Contact>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#company_contacts_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Contact By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :transfer_contact_id 
    # @return [nil]
    def company_contacts_id_delete(id, opts = {})
      company_contacts_id_delete_with_http_info(id, opts)
      return nil
    end

    # 
    # Delete Contact By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :transfer_contact_id 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def company_contacts_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactsApi.company_contacts_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactsApi.company_contacts_id_delete"
      end
      # resource path
      local_var_path = "/company/contacts/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'transferContactId'] = opts[:'transfer_contact_id'] if !opts[:'transfer_contact_id'].nil?

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#company_contacts_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Contact By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Contact]
    def company_contacts_id_get(id, opts = {})
      data, _status_code, _headers = company_contacts_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Contact By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Contact, Fixnum, Hash)>] Contact data, response status code and response headers
    def company_contacts_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactsApi.company_contacts_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactsApi.company_contacts_id_get"
      end
      # resource path
      local_var_path = "/company/contacts/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Contact')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#company_contacts_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Contact Image
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :use_default_flag 
    # @option opts [String] :last_modified 
    # @return [nil]
    def company_contacts_id_image_get(id, opts = {})
      company_contacts_id_image_get_with_http_info(id, opts)
      return nil
    end

    # 
    # Get Contact Image
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :use_default_flag 
    # @option opts [String] :last_modified 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def company_contacts_id_image_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactsApi.company_contacts_id_image_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactsApi.company_contacts_id_image_get"
      end
      # resource path
      local_var_path = "/company/contacts/{id}/image".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'useDefaultFlag'] = opts[:'use_default_flag'] if !opts[:'use_default_flag'].nil?
      query_params[:'lastModified'] = opts[:'last_modified'] if !opts[:'last_modified'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#company_contacts_id_image_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Contact
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Contact]
    def company_contacts_id_patch(id, operations, opts = {})
      data, _status_code, _headers = company_contacts_id_patch_with_http_info(id, operations, opts)
      return data
    end

    # 
    # Update Contact
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Contact, Fixnum, Hash)>] Contact data, response status code and response headers
    def company_contacts_id_patch_with_http_info(id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactsApi.company_contacts_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactsApi.company_contacts_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling ContactsApi.company_contacts_id_patch"
      end
      # resource path
      local_var_path = "/company/contacts/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(operations)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Contact')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#company_contacts_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Portal Security
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<PortalSecurity>]
    def company_contacts_id_portal_security_get(id, opts = {})
      data, _status_code, _headers = company_contacts_id_portal_security_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Portal Security
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<PortalSecurity>, Fixnum, Hash)>] Array<PortalSecurity> data, response status code and response headers
    def company_contacts_id_portal_security_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactsApi.company_contacts_id_portal_security_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactsApi.company_contacts_id_portal_security_get"
      end
      # resource path
      local_var_path = "/company/contacts/{id}/portalSecurity".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<PortalSecurity>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#company_contacts_id_portal_security_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Contact
    # @param id 
    # @param contact 
    # @param [Hash] opts the optional parameters
    # @return [Contact]
    def company_contacts_id_put(id, contact, opts = {})
      data, _status_code, _headers = company_contacts_id_put_with_http_info(id, contact, opts)
      return data
    end

    # 
    # Replace Contact
    # @param id 
    # @param contact 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Contact, Fixnum, Hash)>] Contact data, response status code and response headers
    def company_contacts_id_put_with_http_info(id, contact, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactsApi.company_contacts_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactsApi.company_contacts_id_put"
      end
      # verify the required parameter 'contact' is set
      if @api_client.config.client_side_validation && contact.nil?
        fail ArgumentError, "Missing the required parameter 'contact' when calling ContactsApi.company_contacts_id_put"
      end
      # resource path
      local_var_path = "/company/contacts/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(contact)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Contact')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#company_contacts_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Contact
    # @param contact 
    # @param [Hash] opts the optional parameters
    # @return [Contact]
    def company_contacts_post(contact, opts = {})
      data, _status_code, _headers = company_contacts_post_with_http_info(contact, opts)
      return data
    end

    # 
    # Create Contact
    # @param contact 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Contact, Fixnum, Hash)>] Contact data, response status code and response headers
    def company_contacts_post_with_http_info(contact, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactsApi.company_contacts_post ..."
      end
      # verify the required parameter 'contact' is set
      if @api_client.config.client_side_validation && contact.nil?
        fail ArgumentError, "Missing the required parameter 'contact' when calling ContactsApi.company_contacts_post"
      end
      # resource path
      local_var_path = "/company/contacts"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(contact)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Contact')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#company_contacts_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Request Password
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def company_contacts_request_password_post(request, opts = {})
      company_contacts_request_password_post_with_http_info(request, opts)
      return nil
    end

    # 
    # Request Password
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def company_contacts_request_password_post_with_http_info(request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactsApi.company_contacts_request_password_post ..."
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling ContactsApi.company_contacts_request_password_post"
      end
      # resource path
      local_var_path = "/company/contacts/requestPassword"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#company_contacts_request_password_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Validate Portal Credentials
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [ValidatePortalResponse]
    def company_contacts_validate_portal_credentials_post(request, opts = {})
      data, _status_code, _headers = company_contacts_validate_portal_credentials_post_with_http_info(request, opts)
      return data
    end

    # 
    # Validate Portal Credentials
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ValidatePortalResponse, Fixnum, Hash)>] ValidatePortalResponse data, response status code and response headers
    def company_contacts_validate_portal_credentials_post_with_http_info(request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactsApi.company_contacts_validate_portal_credentials_post ..."
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling ContactsApi.company_contacts_validate_portal_credentials_post"
      end
      # resource path
      local_var_path = "/company/contacts/validatePortalCredentials"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ValidatePortalResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#company_contacts_validate_portal_credentials_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
