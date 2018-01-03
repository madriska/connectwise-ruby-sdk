
require "uri"

module ConnectWise
  class UnitOfMeasureConversionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Delete Conversion By Id
    # @param id 
    # @param conversion_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def procurement_unit_of_measures_id_conversions_conversion_id_delete(id, conversion_id, opts = {})
      procurement_unit_of_measures_id_conversions_conversion_id_delete_with_http_info(id, conversion_id, opts)
      return nil
    end

    # 
    # Delete Conversion By Id
    # @param id 
    # @param conversion_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def procurement_unit_of_measures_id_conversions_conversion_id_delete_with_http_info(id, conversion_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UnitOfMeasureConversionsApi.procurement_unit_of_measures_id_conversions_conversion_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UnitOfMeasureConversionsApi.procurement_unit_of_measures_id_conversions_conversion_id_delete"
      end
      # verify the required parameter 'conversion_id' is set
      if @api_client.config.client_side_validation && conversion_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversion_id' when calling UnitOfMeasureConversionsApi.procurement_unit_of_measures_id_conversions_conversion_id_delete"
      end
      # resource path
      local_var_path = "/procurement/unitOfMeasures/{id}/conversions/{conversionId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'conversionId' + '}', conversion_id.to_s)

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
        @api_client.config.logger.debug "API called: UnitOfMeasureConversionsApi#procurement_unit_of_measures_id_conversions_conversion_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Conversion By Id
    # @param id 
    # @param conversion_id 
    # @param [Hash] opts the optional parameters
    # @return [Conversion]
    def procurement_unit_of_measures_id_conversions_conversion_id_get(id, conversion_id, opts = {})
      data, _status_code, _headers = procurement_unit_of_measures_id_conversions_conversion_id_get_with_http_info(id, conversion_id, opts)
      return data
    end

    # 
    # Get Conversion By Id
    # @param id 
    # @param conversion_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Conversion, Fixnum, Hash)>] Conversion data, response status code and response headers
    def procurement_unit_of_measures_id_conversions_conversion_id_get_with_http_info(id, conversion_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UnitOfMeasureConversionsApi.procurement_unit_of_measures_id_conversions_conversion_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UnitOfMeasureConversionsApi.procurement_unit_of_measures_id_conversions_conversion_id_get"
      end
      # verify the required parameter 'conversion_id' is set
      if @api_client.config.client_side_validation && conversion_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversion_id' when calling UnitOfMeasureConversionsApi.procurement_unit_of_measures_id_conversions_conversion_id_get"
      end
      # resource path
      local_var_path = "/procurement/unitOfMeasures/{id}/conversions/{conversionId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'conversionId' + '}', conversion_id.to_s)

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
        :return_type => 'Conversion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UnitOfMeasureConversionsApi#procurement_unit_of_measures_id_conversions_conversion_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Conversion
    # @param id 
    # @param conversion_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Conversion]
    def procurement_unit_of_measures_id_conversions_conversion_id_patch(id, conversion_id, operations, opts = {})
      data, _status_code, _headers = procurement_unit_of_measures_id_conversions_conversion_id_patch_with_http_info(id, conversion_id, operations, opts)
      return data
    end

    # 
    # Update Conversion
    # @param id 
    # @param conversion_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Conversion, Fixnum, Hash)>] Conversion data, response status code and response headers
    def procurement_unit_of_measures_id_conversions_conversion_id_patch_with_http_info(id, conversion_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UnitOfMeasureConversionsApi.procurement_unit_of_measures_id_conversions_conversion_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UnitOfMeasureConversionsApi.procurement_unit_of_measures_id_conversions_conversion_id_patch"
      end
      # verify the required parameter 'conversion_id' is set
      if @api_client.config.client_side_validation && conversion_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversion_id' when calling UnitOfMeasureConversionsApi.procurement_unit_of_measures_id_conversions_conversion_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling UnitOfMeasureConversionsApi.procurement_unit_of_measures_id_conversions_conversion_id_patch"
      end
      # resource path
      local_var_path = "/procurement/unitOfMeasures/{id}/conversions/{conversionId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'conversionId' + '}', conversion_id.to_s)

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
        :return_type => 'Conversion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UnitOfMeasureConversionsApi#procurement_unit_of_measures_id_conversions_conversion_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Conversion
    # @param id 
    # @param conversion_id 
    # @param conversion 
    # @param [Hash] opts the optional parameters
    # @return [Conversion]
    def procurement_unit_of_measures_id_conversions_conversion_id_put(id, conversion_id, conversion, opts = {})
      data, _status_code, _headers = procurement_unit_of_measures_id_conversions_conversion_id_put_with_http_info(id, conversion_id, conversion, opts)
      return data
    end

    # 
    # Replace Conversion
    # @param id 
    # @param conversion_id 
    # @param conversion 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Conversion, Fixnum, Hash)>] Conversion data, response status code and response headers
    def procurement_unit_of_measures_id_conversions_conversion_id_put_with_http_info(id, conversion_id, conversion, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UnitOfMeasureConversionsApi.procurement_unit_of_measures_id_conversions_conversion_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UnitOfMeasureConversionsApi.procurement_unit_of_measures_id_conversions_conversion_id_put"
      end
      # verify the required parameter 'conversion_id' is set
      if @api_client.config.client_side_validation && conversion_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversion_id' when calling UnitOfMeasureConversionsApi.procurement_unit_of_measures_id_conversions_conversion_id_put"
      end
      # verify the required parameter 'conversion' is set
      if @api_client.config.client_side_validation && conversion.nil?
        fail ArgumentError, "Missing the required parameter 'conversion' when calling UnitOfMeasureConversionsApi.procurement_unit_of_measures_id_conversions_conversion_id_put"
      end
      # resource path
      local_var_path = "/procurement/unitOfMeasures/{id}/conversions/{conversionId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'conversionId' + '}', conversion_id.to_s)

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
      post_body = @api_client.object_to_http_body(conversion)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Conversion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UnitOfMeasureConversionsApi#procurement_unit_of_measures_id_conversions_conversion_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Conversion Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def procurement_unit_of_measures_id_conversions_count_get(id, opts = {})
      data, _status_code, _headers = procurement_unit_of_measures_id_conversions_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Conversion Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def procurement_unit_of_measures_id_conversions_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UnitOfMeasureConversionsApi.procurement_unit_of_measures_id_conversions_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UnitOfMeasureConversionsApi.procurement_unit_of_measures_id_conversions_count_get"
      end
      # resource path
      local_var_path = "/procurement/unitOfMeasures/{id}/conversions/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: UnitOfMeasureConversionsApi#procurement_unit_of_measures_id_conversions_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Conversion
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<Conversion>]
    def procurement_unit_of_measures_id_conversions_get(id, opts = {})
      data, _status_code, _headers = procurement_unit_of_measures_id_conversions_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Conversion
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<Conversion>, Fixnum, Hash)>] Array<Conversion> data, response status code and response headers
    def procurement_unit_of_measures_id_conversions_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UnitOfMeasureConversionsApi.procurement_unit_of_measures_id_conversions_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UnitOfMeasureConversionsApi.procurement_unit_of_measures_id_conversions_get"
      end
      # resource path
      local_var_path = "/procurement/unitOfMeasures/{id}/conversions".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<Conversion>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UnitOfMeasureConversionsApi#procurement_unit_of_measures_id_conversions_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Conversion
    # @param id 
    # @param conversion 
    # @param [Hash] opts the optional parameters
    # @return [Conversion]
    def procurement_unit_of_measures_id_conversions_post(id, conversion, opts = {})
      data, _status_code, _headers = procurement_unit_of_measures_id_conversions_post_with_http_info(id, conversion, opts)
      return data
    end

    # 
    # Create Conversion
    # @param id 
    # @param conversion 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Conversion, Fixnum, Hash)>] Conversion data, response status code and response headers
    def procurement_unit_of_measures_id_conversions_post_with_http_info(id, conversion, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UnitOfMeasureConversionsApi.procurement_unit_of_measures_id_conversions_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UnitOfMeasureConversionsApi.procurement_unit_of_measures_id_conversions_post"
      end
      # verify the required parameter 'conversion' is set
      if @api_client.config.client_side_validation && conversion.nil?
        fail ArgumentError, "Missing the required parameter 'conversion' when calling UnitOfMeasureConversionsApi.procurement_unit_of_measures_id_conversions_post"
      end
      # resource path
      local_var_path = "/procurement/unitOfMeasures/{id}/conversions".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(conversion)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Conversion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UnitOfMeasureConversionsApi#procurement_unit_of_measures_id_conversions_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
