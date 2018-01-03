
require "uri"

module ConnectWise
  class AuditTrailApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Members Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type 
    # @option opts [Integer] :id 
    # @option opts [String] :device_identifier 
    # @return [Count]
    def system_audittrail_count_get(opts = {})
      data, _status_code, _headers = system_audittrail_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Members Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type 
    # @option opts [Integer] :id 
    # @option opts [String] :device_identifier 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def system_audittrail_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuditTrailApi.system_audittrail_count_get ..."
      end
      if @api_client.config.client_side_validation && opts[:'type'] && !['Ticket', 'Configuration'].include?(opts[:'type'])
        fail ArgumentError, 'invalid value for "type", must be one of Ticket, Configuration'
      end
      # resource path
      local_var_path = "/system/audittrail/count"

      # query parameters
      query_params = {}
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'deviceIdentifier'] = opts[:'device_identifier'] if !opts[:'device_identifier'].nil?

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
        @api_client.config.logger.debug "API called: AuditTrailApi#system_audittrail_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Audit Trail
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type 
    # @option opts [Integer] :id 
    # @option opts [String] :device_identifier 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<AuditTrailEntry>]
    def system_audittrail_get(opts = {})
      data, _status_code, _headers = system_audittrail_get_with_http_info(opts)
      return data
    end

    # 
    # Get Audit Trail
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type 
    # @option opts [Integer] :id 
    # @option opts [String] :device_identifier 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<AuditTrailEntry>, Fixnum, Hash)>] Array<AuditTrailEntry> data, response status code and response headers
    def system_audittrail_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuditTrailApi.system_audittrail_get ..."
      end
      if @api_client.config.client_side_validation && opts[:'type'] && !['Ticket', 'Configuration'].include?(opts[:'type'])
        fail ArgumentError, 'invalid value for "type", must be one of Ticket, Configuration'
      end
      # resource path
      local_var_path = "/system/audittrail"

      # query parameters
      query_params = {}
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'deviceIdentifier'] = opts[:'device_identifier'] if !opts[:'device_identifier'].nil?
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
        :return_type => 'Array<AuditTrailEntry>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuditTrailApi#system_audittrail_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
