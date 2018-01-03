
require "uri"

module ConnectWise
  class PricingBreaksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Delete Pricing Break By Id
    # @param sched_id 
    # @param detail_id 
    # @param break_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_delete(sched_id, detail_id, break_id, opts = {})
      procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_delete_with_http_info(sched_id, detail_id, break_id, opts)
      return nil
    end

    # 
    # Delete Pricing Break By Id
    # @param sched_id 
    # @param detail_id 
    # @param break_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_delete_with_http_info(sched_id, detail_id, break_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_delete ..."
      end
      # verify the required parameter 'sched_id' is set
      if @api_client.config.client_side_validation && sched_id.nil?
        fail ArgumentError, "Missing the required parameter 'sched_id' when calling PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_delete"
      end
      # verify the required parameter 'detail_id' is set
      if @api_client.config.client_side_validation && detail_id.nil?
        fail ArgumentError, "Missing the required parameter 'detail_id' when calling PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_delete"
      end
      # verify the required parameter 'break_id' is set
      if @api_client.config.client_side_validation && break_id.nil?
        fail ArgumentError, "Missing the required parameter 'break_id' when calling PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_delete"
      end
      # resource path
      local_var_path = "/procurement/pricingschedules/{schedId}/details/{detailId}/breaks/{breakId}".sub('{' + 'schedId' + '}', sched_id.to_s).sub('{' + 'detailId' + '}', detail_id.to_s).sub('{' + 'breakId' + '}', break_id.to_s)

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
        @api_client.config.logger.debug "API called: PricingBreaksApi#procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Pricing Break By Id
    # @param sched_id 
    # @param detail_id 
    # @param break_id 
    # @param [Hash] opts the optional parameters
    # @return [PricingBreak]
    def procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_get(sched_id, detail_id, break_id, opts = {})
      data, _status_code, _headers = procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_get_with_http_info(sched_id, detail_id, break_id, opts)
      return data
    end

    # 
    # Get Pricing Break By Id
    # @param sched_id 
    # @param detail_id 
    # @param break_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PricingBreak, Fixnum, Hash)>] PricingBreak data, response status code and response headers
    def procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_get_with_http_info(sched_id, detail_id, break_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_get ..."
      end
      # verify the required parameter 'sched_id' is set
      if @api_client.config.client_side_validation && sched_id.nil?
        fail ArgumentError, "Missing the required parameter 'sched_id' when calling PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_get"
      end
      # verify the required parameter 'detail_id' is set
      if @api_client.config.client_side_validation && detail_id.nil?
        fail ArgumentError, "Missing the required parameter 'detail_id' when calling PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_get"
      end
      # verify the required parameter 'break_id' is set
      if @api_client.config.client_side_validation && break_id.nil?
        fail ArgumentError, "Missing the required parameter 'break_id' when calling PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_get"
      end
      # resource path
      local_var_path = "/procurement/pricingschedules/{schedId}/details/{detailId}/breaks/{breakId}".sub('{' + 'schedId' + '}', sched_id.to_s).sub('{' + 'detailId' + '}', detail_id.to_s).sub('{' + 'breakId' + '}', break_id.to_s)

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
        :return_type => 'PricingBreak')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingBreaksApi#procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Pricing Break
    # @param sched_id 
    # @param detail_id 
    # @param break_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [PricingBreak]
    def procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_patch(sched_id, detail_id, break_id, operations, opts = {})
      data, _status_code, _headers = procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_patch_with_http_info(sched_id, detail_id, break_id, operations, opts)
      return data
    end

    # 
    # Update Pricing Break
    # @param sched_id 
    # @param detail_id 
    # @param break_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PricingBreak, Fixnum, Hash)>] PricingBreak data, response status code and response headers
    def procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_patch_with_http_info(sched_id, detail_id, break_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_patch ..."
      end
      # verify the required parameter 'sched_id' is set
      if @api_client.config.client_side_validation && sched_id.nil?
        fail ArgumentError, "Missing the required parameter 'sched_id' when calling PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_patch"
      end
      # verify the required parameter 'detail_id' is set
      if @api_client.config.client_side_validation && detail_id.nil?
        fail ArgumentError, "Missing the required parameter 'detail_id' when calling PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_patch"
      end
      # verify the required parameter 'break_id' is set
      if @api_client.config.client_side_validation && break_id.nil?
        fail ArgumentError, "Missing the required parameter 'break_id' when calling PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_patch"
      end
      # resource path
      local_var_path = "/procurement/pricingschedules/{schedId}/details/{detailId}/breaks/{breakId}".sub('{' + 'schedId' + '}', sched_id.to_s).sub('{' + 'detailId' + '}', detail_id.to_s).sub('{' + 'breakId' + '}', break_id.to_s)

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
        :return_type => 'PricingBreak')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingBreaksApi#procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Pricing Break
    # @param sched_id 
    # @param detail_id 
    # @param break_id 
    # @param pricing_break 
    # @param [Hash] opts the optional parameters
    # @return [PricingBreak]
    def procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_put(sched_id, detail_id, break_id, pricing_break, opts = {})
      data, _status_code, _headers = procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_put_with_http_info(sched_id, detail_id, break_id, pricing_break, opts)
      return data
    end

    # 
    # Replace Pricing Break
    # @param sched_id 
    # @param detail_id 
    # @param break_id 
    # @param pricing_break 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PricingBreak, Fixnum, Hash)>] PricingBreak data, response status code and response headers
    def procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_put_with_http_info(sched_id, detail_id, break_id, pricing_break, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_put ..."
      end
      # verify the required parameter 'sched_id' is set
      if @api_client.config.client_side_validation && sched_id.nil?
        fail ArgumentError, "Missing the required parameter 'sched_id' when calling PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_put"
      end
      # verify the required parameter 'detail_id' is set
      if @api_client.config.client_side_validation && detail_id.nil?
        fail ArgumentError, "Missing the required parameter 'detail_id' when calling PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_put"
      end
      # verify the required parameter 'break_id' is set
      if @api_client.config.client_side_validation && break_id.nil?
        fail ArgumentError, "Missing the required parameter 'break_id' when calling PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_put"
      end
      # verify the required parameter 'pricing_break' is set
      if @api_client.config.client_side_validation && pricing_break.nil?
        fail ArgumentError, "Missing the required parameter 'pricing_break' when calling PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_put"
      end
      # resource path
      local_var_path = "/procurement/pricingschedules/{schedId}/details/{detailId}/breaks/{breakId}".sub('{' + 'schedId' + '}', sched_id.to_s).sub('{' + 'detailId' + '}', detail_id.to_s).sub('{' + 'breakId' + '}', break_id.to_s)

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
      post_body = @api_client.object_to_http_body(pricing_break)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PricingBreak')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingBreaksApi#procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Pricing Break Count
    # @param sched_id 
    # @param detail_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def procurement_pricingschedules_sched_id_details_detail_id_breaks_count_get(sched_id, detail_id, opts = {})
      data, _status_code, _headers = procurement_pricingschedules_sched_id_details_detail_id_breaks_count_get_with_http_info(sched_id, detail_id, opts)
      return data
    end

    # 
    # Get Pricing Break Count
    # @param sched_id 
    # @param detail_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def procurement_pricingschedules_sched_id_details_detail_id_breaks_count_get_with_http_info(sched_id, detail_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_count_get ..."
      end
      # verify the required parameter 'sched_id' is set
      if @api_client.config.client_side_validation && sched_id.nil?
        fail ArgumentError, "Missing the required parameter 'sched_id' when calling PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_count_get"
      end
      # verify the required parameter 'detail_id' is set
      if @api_client.config.client_side_validation && detail_id.nil?
        fail ArgumentError, "Missing the required parameter 'detail_id' when calling PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_count_get"
      end
      # resource path
      local_var_path = "/procurement/pricingschedules/{schedId}/details/{detailId}/breaks/count".sub('{' + 'schedId' + '}', sched_id.to_s).sub('{' + 'detailId' + '}', detail_id.to_s)

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
        @api_client.config.logger.debug "API called: PricingBreaksApi#procurement_pricingschedules_sched_id_details_detail_id_breaks_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Pricing Break
    # @param sched_id 
    # @param detail_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<PricingBreak>]
    def procurement_pricingschedules_sched_id_details_detail_id_breaks_get(sched_id, detail_id, opts = {})
      data, _status_code, _headers = procurement_pricingschedules_sched_id_details_detail_id_breaks_get_with_http_info(sched_id, detail_id, opts)
      return data
    end

    # 
    # Get Pricing Break
    # @param sched_id 
    # @param detail_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<PricingBreak>, Fixnum, Hash)>] Array<PricingBreak> data, response status code and response headers
    def procurement_pricingschedules_sched_id_details_detail_id_breaks_get_with_http_info(sched_id, detail_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_get ..."
      end
      # verify the required parameter 'sched_id' is set
      if @api_client.config.client_side_validation && sched_id.nil?
        fail ArgumentError, "Missing the required parameter 'sched_id' when calling PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_get"
      end
      # verify the required parameter 'detail_id' is set
      if @api_client.config.client_side_validation && detail_id.nil?
        fail ArgumentError, "Missing the required parameter 'detail_id' when calling PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_get"
      end
      # resource path
      local_var_path = "/procurement/pricingschedules/{schedId}/details/{detailId}/breaks".sub('{' + 'schedId' + '}', sched_id.to_s).sub('{' + 'detailId' + '}', detail_id.to_s)

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
        :return_type => 'Array<PricingBreak>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingBreaksApi#procurement_pricingschedules_sched_id_details_detail_id_breaks_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Pricing Break
    # @param sched_id 
    # @param detail_id 
    # @param pricing_break 
    # @param [Hash] opts the optional parameters
    # @return [PricingBreak]
    def procurement_pricingschedules_sched_id_details_detail_id_breaks_post(sched_id, detail_id, pricing_break, opts = {})
      data, _status_code, _headers = procurement_pricingschedules_sched_id_details_detail_id_breaks_post_with_http_info(sched_id, detail_id, pricing_break, opts)
      return data
    end

    # 
    # Create Pricing Break
    # @param sched_id 
    # @param detail_id 
    # @param pricing_break 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PricingBreak, Fixnum, Hash)>] PricingBreak data, response status code and response headers
    def procurement_pricingschedules_sched_id_details_detail_id_breaks_post_with_http_info(sched_id, detail_id, pricing_break, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_post ..."
      end
      # verify the required parameter 'sched_id' is set
      if @api_client.config.client_side_validation && sched_id.nil?
        fail ArgumentError, "Missing the required parameter 'sched_id' when calling PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_post"
      end
      # verify the required parameter 'detail_id' is set
      if @api_client.config.client_side_validation && detail_id.nil?
        fail ArgumentError, "Missing the required parameter 'detail_id' when calling PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_post"
      end
      # verify the required parameter 'pricing_break' is set
      if @api_client.config.client_side_validation && pricing_break.nil?
        fail ArgumentError, "Missing the required parameter 'pricing_break' when calling PricingBreaksApi.procurement_pricingschedules_sched_id_details_detail_id_breaks_post"
      end
      # resource path
      local_var_path = "/procurement/pricingschedules/{schedId}/details/{detailId}/breaks".sub('{' + 'schedId' + '}', sched_id.to_s).sub('{' + 'detailId' + '}', detail_id.to_s)

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
      post_body = @api_client.object_to_http_body(pricing_break)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PricingBreak')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingBreaksApi#procurement_pricingschedules_sched_id_details_detail_id_breaks_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
