
require "uri"

module ConnectWise
  class AgreementWorkTypeExclusionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Work Type Exclusions Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def finance_agreements_id_work_type_exclusions_count_get(id, opts = {})
      data, _status_code, _headers = finance_agreements_id_work_type_exclusions_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Work Type Exclusions Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def finance_agreements_id_work_type_exclusions_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementWorkTypeExclusionsApi.finance_agreements_id_work_type_exclusions_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementWorkTypeExclusionsApi.finance_agreements_id_work_type_exclusions_count_get"
      end
      # resource path
      local_var_path = "/finance/agreements/{id}/workTypeExclusions/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: AgreementWorkTypeExclusionsApi#finance_agreements_id_work_type_exclusions_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Work Type Exclusions
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<AgreementWorkTypeExclusion>]
    def finance_agreements_id_work_type_exclusions_get(id, opts = {})
      data, _status_code, _headers = finance_agreements_id_work_type_exclusions_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Work Type Exclusions
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<AgreementWorkTypeExclusion>, Fixnum, Hash)>] Array<AgreementWorkTypeExclusion> data, response status code and response headers
    def finance_agreements_id_work_type_exclusions_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementWorkTypeExclusionsApi.finance_agreements_id_work_type_exclusions_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementWorkTypeExclusionsApi.finance_agreements_id_work_type_exclusions_get"
      end
      # resource path
      local_var_path = "/finance/agreements/{id}/workTypeExclusions".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<AgreementWorkTypeExclusion>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementWorkTypeExclusionsApi#finance_agreements_id_work_type_exclusions_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Work Type Exclusion
    # @param id 
    # @param work_type_exclusion 
    # @param [Hash] opts the optional parameters
    # @return [AgreementWorkTypeExclusion]
    def finance_agreements_id_work_type_exclusions_post(id, work_type_exclusion, opts = {})
      data, _status_code, _headers = finance_agreements_id_work_type_exclusions_post_with_http_info(id, work_type_exclusion, opts)
      return data
    end

    # 
    # Create Work Type Exclusion
    # @param id 
    # @param work_type_exclusion 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AgreementWorkTypeExclusion, Fixnum, Hash)>] AgreementWorkTypeExclusion data, response status code and response headers
    def finance_agreements_id_work_type_exclusions_post_with_http_info(id, work_type_exclusion, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementWorkTypeExclusionsApi.finance_agreements_id_work_type_exclusions_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementWorkTypeExclusionsApi.finance_agreements_id_work_type_exclusions_post"
      end
      # verify the required parameter 'work_type_exclusion' is set
      if @api_client.config.client_side_validation && work_type_exclusion.nil?
        fail ArgumentError, "Missing the required parameter 'work_type_exclusion' when calling AgreementWorkTypeExclusionsApi.finance_agreements_id_work_type_exclusions_post"
      end
      # resource path
      local_var_path = "/finance/agreements/{id}/workTypeExclusions".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(work_type_exclusion)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AgreementWorkTypeExclusion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementWorkTypeExclusionsApi#finance_agreements_id_work_type_exclusions_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Work Type Exclusion By Id
    # @param id 
    # @param work_type_exclusion_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def finance_agreements_id_work_type_exclusions_work_type_exclusion_id_delete(id, work_type_exclusion_id, opts = {})
      finance_agreements_id_work_type_exclusions_work_type_exclusion_id_delete_with_http_info(id, work_type_exclusion_id, opts)
      return nil
    end

    # 
    # Delete Work Type Exclusion By Id
    # @param id 
    # @param work_type_exclusion_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def finance_agreements_id_work_type_exclusions_work_type_exclusion_id_delete_with_http_info(id, work_type_exclusion_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementWorkTypeExclusionsApi.finance_agreements_id_work_type_exclusions_work_type_exclusion_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementWorkTypeExclusionsApi.finance_agreements_id_work_type_exclusions_work_type_exclusion_id_delete"
      end
      # verify the required parameter 'work_type_exclusion_id' is set
      if @api_client.config.client_side_validation && work_type_exclusion_id.nil?
        fail ArgumentError, "Missing the required parameter 'work_type_exclusion_id' when calling AgreementWorkTypeExclusionsApi.finance_agreements_id_work_type_exclusions_work_type_exclusion_id_delete"
      end
      # resource path
      local_var_path = "/finance/agreements/{id}/workTypeExclusions/{workTypeExclusionId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'workTypeExclusionId' + '}', work_type_exclusion_id.to_s)

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
        @api_client.config.logger.debug "API called: AgreementWorkTypeExclusionsApi#finance_agreements_id_work_type_exclusions_work_type_exclusion_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
