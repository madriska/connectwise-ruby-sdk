
require "uri"

module ConnectWise
  class ReportsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Reports
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @return [Array<Report>]
    def system_reports_get(opts = {})
      data, _status_code, _headers = system_reports_get_with_http_info(opts)
      return data
    end

    # 
    # Get Reports
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @return [Array<(Array<Report>, Fixnum, Hash)>] Array<Report> data, response status code and response headers
    def system_reports_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportsApi.system_reports_get ..."
      end
      # resource path
      local_var_path = "/system/reports"

      # query parameters
      query_params = {}
      query_params[:'conditions'] = opts[:'conditions'] if !opts[:'conditions'].nil?
      query_params[:'orderBy'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'childconditions'] = opts[:'childconditions'] if !opts[:'childconditions'].nil?
      query_params[:'customfieldconditions'] = opts[:'customfieldconditions'] if !opts[:'customfieldconditions'].nil?

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
        :return_type => 'Array<Report>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#system_reports_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Column Definitions
    # @param report_name 
    # @param [Hash] opts the optional parameters
    # @return [Array<JObject>]
    def system_reports_report_name_columns_get(report_name, opts = {})
      data, _status_code, _headers = system_reports_report_name_columns_get_with_http_info(report_name, opts)
      return data
    end

    # 
    # Get Column Definitions
    # @param report_name 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<JObject>, Fixnum, Hash)>] Array<JObject> data, response status code and response headers
    def system_reports_report_name_columns_get_with_http_info(report_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportsApi.system_reports_report_name_columns_get ..."
      end
      # verify the required parameter 'report_name' is set
      if @api_client.config.client_side_validation && report_name.nil?
        fail ArgumentError, "Missing the required parameter 'report_name' when calling ReportsApi.system_reports_report_name_columns_get"
      end
      # resource path
      local_var_path = "/system/reports/{reportName}/columns".sub('{' + 'reportName' + '}', report_name.to_s)

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
        :return_type => 'Array<JObject>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#system_reports_report_name_columns_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Report Results Count
    # @param report_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def system_reports_report_name_count_get(report_name, opts = {})
      data, _status_code, _headers = system_reports_report_name_count_get_with_http_info(report_name, opts)
      return data
    end

    # 
    # Get Report Results Count
    # @param report_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def system_reports_report_name_count_get_with_http_info(report_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportsApi.system_reports_report_name_count_get ..."
      end
      # verify the required parameter 'report_name' is set
      if @api_client.config.client_side_validation && report_name.nil?
        fail ArgumentError, "Missing the required parameter 'report_name' when calling ReportsApi.system_reports_report_name_count_get"
      end
      # resource path
      local_var_path = "/system/reports/{reportName}/count".sub('{' + 'reportName' + '}', report_name.to_s)

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
        @api_client.config.logger.debug "API called: ReportsApi#system_reports_report_name_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Report Results
    # @param report_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @option opts [String] :columns 
    # @return [ReportDataResponse]
    def system_reports_report_name_get(report_name, opts = {})
      data, _status_code, _headers = system_reports_report_name_get_with_http_info(report_name, opts)
      return data
    end

    # 
    # Get Report Results
    # @param report_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @option opts [String] :columns 
    # @return [Array<(ReportDataResponse, Fixnum, Hash)>] ReportDataResponse data, response status code and response headers
    def system_reports_report_name_get_with_http_info(report_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportsApi.system_reports_report_name_get ..."
      end
      # verify the required parameter 'report_name' is set
      if @api_client.config.client_side_validation && report_name.nil?
        fail ArgumentError, "Missing the required parameter 'report_name' when calling ReportsApi.system_reports_report_name_get"
      end
      # resource path
      local_var_path = "/system/reports/{reportName}".sub('{' + 'reportName' + '}', report_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'conditions'] = opts[:'conditions'] if !opts[:'conditions'].nil?
      query_params[:'orderBy'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'childconditions'] = opts[:'childconditions'] if !opts[:'childconditions'].nil?
      query_params[:'customfieldconditions'] = opts[:'customfieldconditions'] if !opts[:'customfieldconditions'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'columns'] = opts[:'columns'] if !opts[:'columns'].nil?

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
        :return_type => 'ReportDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#system_reports_report_name_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
