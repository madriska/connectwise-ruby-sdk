
require "uri"

module ConnectWise
  class TicketNotesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Service Notes Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def service_tickets_id_notes_count_get(id, opts = {})
      data, _status_code, _headers = service_tickets_id_notes_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Service Notes Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def service_tickets_id_notes_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketNotesApi.service_tickets_id_notes_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketNotesApi.service_tickets_id_notes_count_get"
      end
      # resource path
      local_var_path = "/service/tickets/{id}/notes/count".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'conditions'] = opts[:'conditions'] if !opts[:'conditions'].nil?

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
        @api_client.config.logger.debug "API called: TicketNotesApi#service_tickets_id_notes_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Service Notes
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<ServiceNote>]
    def service_tickets_id_notes_get(id, opts = {})
      data, _status_code, _headers = service_tickets_id_notes_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Service Notes
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<ServiceNote>, Fixnum, Hash)>] Array<ServiceNote> data, response status code and response headers
    def service_tickets_id_notes_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketNotesApi.service_tickets_id_notes_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketNotesApi.service_tickets_id_notes_get"
      end
      # resource path
      local_var_path = "/service/tickets/{id}/notes".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<ServiceNote>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketNotesApi#service_tickets_id_notes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Service Note By Id
    # @param id 
    # @param note_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def service_tickets_id_notes_note_id_delete(id, note_id, opts = {})
      service_tickets_id_notes_note_id_delete_with_http_info(id, note_id, opts)
      return nil
    end

    # 
    # Delete Service Note By Id
    # @param id 
    # @param note_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def service_tickets_id_notes_note_id_delete_with_http_info(id, note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketNotesApi.service_tickets_id_notes_note_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketNotesApi.service_tickets_id_notes_note_id_delete"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling TicketNotesApi.service_tickets_id_notes_note_id_delete"
      end
      # resource path
      local_var_path = "/service/tickets/{id}/notes/{noteId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'noteId' + '}', note_id.to_s)

      # query parameters
      query_params = {}

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
        @api_client.config.logger.debug "API called: TicketNotesApi#service_tickets_id_notes_note_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Service Note By Id
    # @param id 
    # @param note_id 
    # @param [Hash] opts the optional parameters
    # @return [ServiceNote]
    def service_tickets_id_notes_note_id_get(id, note_id, opts = {})
      data, _status_code, _headers = service_tickets_id_notes_note_id_get_with_http_info(id, note_id, opts)
      return data
    end

    # 
    # Get Service Note By Id
    # @param id 
    # @param note_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ServiceNote, Fixnum, Hash)>] ServiceNote data, response status code and response headers
    def service_tickets_id_notes_note_id_get_with_http_info(id, note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketNotesApi.service_tickets_id_notes_note_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketNotesApi.service_tickets_id_notes_note_id_get"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling TicketNotesApi.service_tickets_id_notes_note_id_get"
      end
      # resource path
      local_var_path = "/service/tickets/{id}/notes/{noteId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'noteId' + '}', note_id.to_s)

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
        :return_type => 'ServiceNote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketNotesApi#service_tickets_id_notes_note_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Service Note
    # @param id 
    # @param note_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [ServiceNote]
    def service_tickets_id_notes_note_id_patch(id, note_id, operations, opts = {})
      data, _status_code, _headers = service_tickets_id_notes_note_id_patch_with_http_info(id, note_id, operations, opts)
      return data
    end

    # 
    # Update Service Note
    # @param id 
    # @param note_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ServiceNote, Fixnum, Hash)>] ServiceNote data, response status code and response headers
    def service_tickets_id_notes_note_id_patch_with_http_info(id, note_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketNotesApi.service_tickets_id_notes_note_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketNotesApi.service_tickets_id_notes_note_id_patch"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling TicketNotesApi.service_tickets_id_notes_note_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling TicketNotesApi.service_tickets_id_notes_note_id_patch"
      end
      # resource path
      local_var_path = "/service/tickets/{id}/notes/{noteId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'noteId' + '}', note_id.to_s)

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
        :return_type => 'ServiceNote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketNotesApi#service_tickets_id_notes_note_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Service Note
    # @param id 
    # @param note_id 
    # @param service_note 
    # @param [Hash] opts the optional parameters
    # @return [ServiceNote]
    def service_tickets_id_notes_note_id_put(id, note_id, service_note, opts = {})
      data, _status_code, _headers = service_tickets_id_notes_note_id_put_with_http_info(id, note_id, service_note, opts)
      return data
    end

    # 
    # Replace Service Note
    # @param id 
    # @param note_id 
    # @param service_note 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ServiceNote, Fixnum, Hash)>] ServiceNote data, response status code and response headers
    def service_tickets_id_notes_note_id_put_with_http_info(id, note_id, service_note, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketNotesApi.service_tickets_id_notes_note_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketNotesApi.service_tickets_id_notes_note_id_put"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling TicketNotesApi.service_tickets_id_notes_note_id_put"
      end
      # verify the required parameter 'service_note' is set
      if @api_client.config.client_side_validation && service_note.nil?
        fail ArgumentError, "Missing the required parameter 'service_note' when calling TicketNotesApi.service_tickets_id_notes_note_id_put"
      end
      # resource path
      local_var_path = "/service/tickets/{id}/notes/{noteId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'noteId' + '}', note_id.to_s)

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
      post_body = @api_client.object_to_http_body(service_note)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ServiceNote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketNotesApi#service_tickets_id_notes_note_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Service Note
    # @param id 
    # @param service_note 
    # @param [Hash] opts the optional parameters
    # @return [ServiceNote]
    def service_tickets_id_notes_post(id, service_note, opts = {})
      data, _status_code, _headers = service_tickets_id_notes_post_with_http_info(id, service_note, opts)
      return data
    end

    # 
    # Create Service Note
    # @param id 
    # @param service_note 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ServiceNote, Fixnum, Hash)>] ServiceNote data, response status code and response headers
    def service_tickets_id_notes_post_with_http_info(id, service_note, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketNotesApi.service_tickets_id_notes_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketNotesApi.service_tickets_id_notes_post"
      end
      # verify the required parameter 'service_note' is set
      if @api_client.config.client_side_validation && service_note.nil?
        fail ArgumentError, "Missing the required parameter 'service_note' when calling TicketNotesApi.service_tickets_id_notes_post"
      end
      # resource path
      local_var_path = "/service/tickets/{id}/notes".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(service_note)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ServiceNote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketNotesApi#service_tickets_id_notes_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
