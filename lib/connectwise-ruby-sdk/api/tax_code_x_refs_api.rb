
require "uri"

module ConnectWise
  class TaxCodeXRefsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Tax Code X Ref Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def finance_tax_codes_id_tax_code_x_refs_count_get(id, opts = {})
      data, _status_code, _headers = finance_tax_codes_id_tax_code_x_refs_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Tax Code X Ref Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def finance_tax_codes_id_tax_code_x_refs_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxCodeXRefsApi.finance_tax_codes_id_tax_code_x_refs_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxCodeXRefsApi.finance_tax_codes_id_tax_code_x_refs_count_get"
      end
      # resource path
      local_var_path = "/finance/taxCodes/{id}/taxCodeXRefs/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: TaxCodeXRefsApi#finance_tax_codes_id_tax_code_x_refs_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Tax Code X Ref
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<TaxCodeXRef>]
    def finance_tax_codes_id_tax_code_x_refs_get(id, opts = {})
      data, _status_code, _headers = finance_tax_codes_id_tax_code_x_refs_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Tax Code X Ref
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<TaxCodeXRef>, Fixnum, Hash)>] Array<TaxCodeXRef> data, response status code and response headers
    def finance_tax_codes_id_tax_code_x_refs_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxCodeXRefsApi.finance_tax_codes_id_tax_code_x_refs_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxCodeXRefsApi.finance_tax_codes_id_tax_code_x_refs_get"
      end
      # resource path
      local_var_path = "/finance/taxCodes/{id}/taxCodeXRefs".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<TaxCodeXRef>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxCodeXRefsApi#finance_tax_codes_id_tax_code_x_refs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Tax Code X Ref
    # @param id 
    # @param tax_code_x_ref 
    # @param [Hash] opts the optional parameters
    # @return [TaxCodeXRef]
    def finance_tax_codes_id_tax_code_x_refs_post(id, tax_code_x_ref, opts = {})
      data, _status_code, _headers = finance_tax_codes_id_tax_code_x_refs_post_with_http_info(id, tax_code_x_ref, opts)
      return data
    end

    # 
    # Create Tax Code X Ref
    # @param id 
    # @param tax_code_x_ref 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TaxCodeXRef, Fixnum, Hash)>] TaxCodeXRef data, response status code and response headers
    def finance_tax_codes_id_tax_code_x_refs_post_with_http_info(id, tax_code_x_ref, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxCodeXRefsApi.finance_tax_codes_id_tax_code_x_refs_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxCodeXRefsApi.finance_tax_codes_id_tax_code_x_refs_post"
      end
      # verify the required parameter 'tax_code_x_ref' is set
      if @api_client.config.client_side_validation && tax_code_x_ref.nil?
        fail ArgumentError, "Missing the required parameter 'tax_code_x_ref' when calling TaxCodeXRefsApi.finance_tax_codes_id_tax_code_x_refs_post"
      end
      # resource path
      local_var_path = "/finance/taxCodes/{id}/taxCodeXRefs".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(tax_code_x_ref)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TaxCodeXRef')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxCodeXRefsApi#finance_tax_codes_id_tax_code_x_refs_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Tax Code X Ref By Id
    # @param id 
    # @param tax_code_x_ref_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_delete(id, tax_code_x_ref_id, opts = {})
      finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_delete_with_http_info(id, tax_code_x_ref_id, opts)
      return nil
    end

    # 
    # Delete Tax Code X Ref By Id
    # @param id 
    # @param tax_code_x_ref_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_delete_with_http_info(id, tax_code_x_ref_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxCodeXRefsApi.finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxCodeXRefsApi.finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_delete"
      end
      # verify the required parameter 'tax_code_x_ref_id' is set
      if @api_client.config.client_side_validation && tax_code_x_ref_id.nil?
        fail ArgumentError, "Missing the required parameter 'tax_code_x_ref_id' when calling TaxCodeXRefsApi.finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_delete"
      end
      # resource path
      local_var_path = "/finance/taxCodes/{id}/taxCodeXRefs/{taxCodeXRefId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'taxCodeXRefId' + '}', tax_code_x_ref_id.to_s)

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
        @api_client.config.logger.debug "API called: TaxCodeXRefsApi#finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Tax Code X Ref By Id
    # @param id 
    # @param tax_code_x_ref_id 
    # @param [Hash] opts the optional parameters
    # @return [TaxCodeXRef]
    def finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_get(id, tax_code_x_ref_id, opts = {})
      data, _status_code, _headers = finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_get_with_http_info(id, tax_code_x_ref_id, opts)
      return data
    end

    # 
    # Get Tax Code X Ref By Id
    # @param id 
    # @param tax_code_x_ref_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TaxCodeXRef, Fixnum, Hash)>] TaxCodeXRef data, response status code and response headers
    def finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_get_with_http_info(id, tax_code_x_ref_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxCodeXRefsApi.finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxCodeXRefsApi.finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_get"
      end
      # verify the required parameter 'tax_code_x_ref_id' is set
      if @api_client.config.client_side_validation && tax_code_x_ref_id.nil?
        fail ArgumentError, "Missing the required parameter 'tax_code_x_ref_id' when calling TaxCodeXRefsApi.finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_get"
      end
      # resource path
      local_var_path = "/finance/taxCodes/{id}/taxCodeXRefs/{taxCodeXRefId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'taxCodeXRefId' + '}', tax_code_x_ref_id.to_s)

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
        :return_type => 'TaxCodeXRef')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxCodeXRefsApi#finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Tax Code X Ref
    # @param id 
    # @param tax_code_x_ref_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [TaxCodeXRef]
    def finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_patch(id, tax_code_x_ref_id, operations, opts = {})
      data, _status_code, _headers = finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_patch_with_http_info(id, tax_code_x_ref_id, operations, opts)
      return data
    end

    # 
    # Update Tax Code X Ref
    # @param id 
    # @param tax_code_x_ref_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TaxCodeXRef, Fixnum, Hash)>] TaxCodeXRef data, response status code and response headers
    def finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_patch_with_http_info(id, tax_code_x_ref_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxCodeXRefsApi.finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxCodeXRefsApi.finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_patch"
      end
      # verify the required parameter 'tax_code_x_ref_id' is set
      if @api_client.config.client_side_validation && tax_code_x_ref_id.nil?
        fail ArgumentError, "Missing the required parameter 'tax_code_x_ref_id' when calling TaxCodeXRefsApi.finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling TaxCodeXRefsApi.finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_patch"
      end
      # resource path
      local_var_path = "/finance/taxCodes/{id}/taxCodeXRefs/{taxCodeXRefId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'taxCodeXRefId' + '}', tax_code_x_ref_id.to_s)

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
        :return_type => 'TaxCodeXRef')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxCodeXRefsApi#finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Tax Code X Ref
    # @param id 
    # @param tax_code_x_ref_id 
    # @param tax_code_x_ref 
    # @param [Hash] opts the optional parameters
    # @return [TaxCodeXRef]
    def finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_put(id, tax_code_x_ref_id, tax_code_x_ref, opts = {})
      data, _status_code, _headers = finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_put_with_http_info(id, tax_code_x_ref_id, tax_code_x_ref, opts)
      return data
    end

    # 
    # Replace Tax Code X Ref
    # @param id 
    # @param tax_code_x_ref_id 
    # @param tax_code_x_ref 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TaxCodeXRef, Fixnum, Hash)>] TaxCodeXRef data, response status code and response headers
    def finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_put_with_http_info(id, tax_code_x_ref_id, tax_code_x_ref, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxCodeXRefsApi.finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxCodeXRefsApi.finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_put"
      end
      # verify the required parameter 'tax_code_x_ref_id' is set
      if @api_client.config.client_side_validation && tax_code_x_ref_id.nil?
        fail ArgumentError, "Missing the required parameter 'tax_code_x_ref_id' when calling TaxCodeXRefsApi.finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_put"
      end
      # verify the required parameter 'tax_code_x_ref' is set
      if @api_client.config.client_side_validation && tax_code_x_ref.nil?
        fail ArgumentError, "Missing the required parameter 'tax_code_x_ref' when calling TaxCodeXRefsApi.finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_put"
      end
      # resource path
      local_var_path = "/finance/taxCodes/{id}/taxCodeXRefs/{taxCodeXRefId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'taxCodeXRefId' + '}', tax_code_x_ref_id.to_s)

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
      post_body = @api_client.object_to_http_body(tax_code_x_ref)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TaxCodeXRef')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxCodeXRefsApi#finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
