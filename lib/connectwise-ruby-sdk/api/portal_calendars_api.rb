
require "uri"

module ConnectWise
  class PortalCalendarsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Portal Calendars Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def system_mycompany_portalcalendars_count_get(opts = {})
      data, _status_code, _headers = system_mycompany_portalcalendars_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Portal Calendars Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def system_mycompany_portalcalendars_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PortalCalendarsApi.system_mycompany_portalcalendars_count_get ..."
      end
      # resource path
      local_var_path = "/system/mycompany/portalcalendars/count"

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
        @api_client.config.logger.debug "API called: PortalCalendarsApi#system_mycompany_portalcalendars_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Portal Calendars
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<PortalCalendar>]
    def system_mycompany_portalcalendars_get(opts = {})
      data, _status_code, _headers = system_mycompany_portalcalendars_get_with_http_info(opts)
      return data
    end

    # 
    # Get Portal Calendars
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<PortalCalendar>, Fixnum, Hash)>] Array<PortalCalendar> data, response status code and response headers
    def system_mycompany_portalcalendars_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PortalCalendarsApi.system_mycompany_portalcalendars_get ..."
      end
      # resource path
      local_var_path = "/system/mycompany/portalcalendars"

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
        :return_type => 'Array<PortalCalendar>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortalCalendarsApi#system_mycompany_portalcalendars_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Portal Calendar By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [PortalCalendar]
    def system_mycompany_portalcalendars_id_get(id, opts = {})
      data, _status_code, _headers = system_mycompany_portalcalendars_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Portal Calendar By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PortalCalendar, Fixnum, Hash)>] PortalCalendar data, response status code and response headers
    def system_mycompany_portalcalendars_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PortalCalendarsApi.system_mycompany_portalcalendars_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PortalCalendarsApi.system_mycompany_portalcalendars_id_get"
      end
      # resource path
      local_var_path = "/system/mycompany/portalcalendars/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'PortalCalendar')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortalCalendarsApi#system_mycompany_portalcalendars_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Portal Calendar
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [PortalCalendar]
    def system_mycompany_portalcalendars_id_patch(id, operations, opts = {})
      data, _status_code, _headers = system_mycompany_portalcalendars_id_patch_with_http_info(id, operations, opts)
      return data
    end

    # 
    # Update Portal Calendar
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PortalCalendar, Fixnum, Hash)>] PortalCalendar data, response status code and response headers
    def system_mycompany_portalcalendars_id_patch_with_http_info(id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PortalCalendarsApi.system_mycompany_portalcalendars_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PortalCalendarsApi.system_mycompany_portalcalendars_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling PortalCalendarsApi.system_mycompany_portalcalendars_id_patch"
      end
      # resource path
      local_var_path = "/system/mycompany/portalcalendars/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'PortalCalendar')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortalCalendarsApi#system_mycompany_portalcalendars_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Portal Calendar
    # @param id 
    # @param portal_calendar 
    # @param [Hash] opts the optional parameters
    # @return [PortalCalendar]
    def system_mycompany_portalcalendars_id_put(id, portal_calendar, opts = {})
      data, _status_code, _headers = system_mycompany_portalcalendars_id_put_with_http_info(id, portal_calendar, opts)
      return data
    end

    # 
    # Replace Portal Calendar
    # @param id 
    # @param portal_calendar 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PortalCalendar, Fixnum, Hash)>] PortalCalendar data, response status code and response headers
    def system_mycompany_portalcalendars_id_put_with_http_info(id, portal_calendar, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PortalCalendarsApi.system_mycompany_portalcalendars_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PortalCalendarsApi.system_mycompany_portalcalendars_id_put"
      end
      # verify the required parameter 'portal_calendar' is set
      if @api_client.config.client_side_validation && portal_calendar.nil?
        fail ArgumentError, "Missing the required parameter 'portal_calendar' when calling PortalCalendarsApi.system_mycompany_portalcalendars_id_put"
      end
      # resource path
      local_var_path = "/system/mycompany/portalcalendars/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(portal_calendar)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PortalCalendar')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortalCalendarsApi#system_mycompany_portalcalendars_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
