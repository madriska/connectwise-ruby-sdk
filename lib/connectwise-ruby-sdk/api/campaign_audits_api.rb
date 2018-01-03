
require "uri"

module ConnectWise
  class CampaignAuditsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Delete Campaign Audit By Id
    # @param id 
    # @param audit_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def marketing_campaigns_id_audits_audit_id_delete(id, audit_id, opts = {})
      marketing_campaigns_id_audits_audit_id_delete_with_http_info(id, audit_id, opts)
      return nil
    end

    # 
    # Delete Campaign Audit By Id
    # @param id 
    # @param audit_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def marketing_campaigns_id_audits_audit_id_delete_with_http_info(id, audit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignAuditsApi.marketing_campaigns_id_audits_audit_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CampaignAuditsApi.marketing_campaigns_id_audits_audit_id_delete"
      end
      # verify the required parameter 'audit_id' is set
      if @api_client.config.client_side_validation && audit_id.nil?
        fail ArgumentError, "Missing the required parameter 'audit_id' when calling CampaignAuditsApi.marketing_campaigns_id_audits_audit_id_delete"
      end
      # resource path
      local_var_path = "/marketing/campaigns/{id}/audits/{auditId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'auditId' + '}', audit_id.to_s)

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
        @api_client.config.logger.debug "API called: CampaignAuditsApi#marketing_campaigns_id_audits_audit_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Campaign Audit By Id
    # @param id 
    # @param audit_id 
    # @param [Hash] opts the optional parameters
    # @return [CampaignAudit]
    def marketing_campaigns_id_audits_audit_id_get(id, audit_id, opts = {})
      data, _status_code, _headers = marketing_campaigns_id_audits_audit_id_get_with_http_info(id, audit_id, opts)
      return data
    end

    # 
    # Get Campaign Audit By Id
    # @param id 
    # @param audit_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CampaignAudit, Fixnum, Hash)>] CampaignAudit data, response status code and response headers
    def marketing_campaigns_id_audits_audit_id_get_with_http_info(id, audit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignAuditsApi.marketing_campaigns_id_audits_audit_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CampaignAuditsApi.marketing_campaigns_id_audits_audit_id_get"
      end
      # verify the required parameter 'audit_id' is set
      if @api_client.config.client_side_validation && audit_id.nil?
        fail ArgumentError, "Missing the required parameter 'audit_id' when calling CampaignAuditsApi.marketing_campaigns_id_audits_audit_id_get"
      end
      # resource path
      local_var_path = "/marketing/campaigns/{id}/audits/{auditId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'auditId' + '}', audit_id.to_s)

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
        :return_type => 'CampaignAudit')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignAuditsApi#marketing_campaigns_id_audits_audit_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Campaign Audit
    # @param id 
    # @param audit_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [CampaignAudit]
    def marketing_campaigns_id_audits_audit_id_patch(id, audit_id, operations, opts = {})
      data, _status_code, _headers = marketing_campaigns_id_audits_audit_id_patch_with_http_info(id, audit_id, operations, opts)
      return data
    end

    # 
    # Update Campaign Audit
    # @param id 
    # @param audit_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CampaignAudit, Fixnum, Hash)>] CampaignAudit data, response status code and response headers
    def marketing_campaigns_id_audits_audit_id_patch_with_http_info(id, audit_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignAuditsApi.marketing_campaigns_id_audits_audit_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CampaignAuditsApi.marketing_campaigns_id_audits_audit_id_patch"
      end
      # verify the required parameter 'audit_id' is set
      if @api_client.config.client_side_validation && audit_id.nil?
        fail ArgumentError, "Missing the required parameter 'audit_id' when calling CampaignAuditsApi.marketing_campaigns_id_audits_audit_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling CampaignAuditsApi.marketing_campaigns_id_audits_audit_id_patch"
      end
      # resource path
      local_var_path = "/marketing/campaigns/{id}/audits/{auditId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'auditId' + '}', audit_id.to_s)

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
        :return_type => 'CampaignAudit')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignAuditsApi#marketing_campaigns_id_audits_audit_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Campaign Audit
    # @param id 
    # @param audit_id 
    # @param campaign_audit 
    # @param [Hash] opts the optional parameters
    # @return [CampaignAudit]
    def marketing_campaigns_id_audits_audit_id_put(id, audit_id, campaign_audit, opts = {})
      data, _status_code, _headers = marketing_campaigns_id_audits_audit_id_put_with_http_info(id, audit_id, campaign_audit, opts)
      return data
    end

    # 
    # Replace Campaign Audit
    # @param id 
    # @param audit_id 
    # @param campaign_audit 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CampaignAudit, Fixnum, Hash)>] CampaignAudit data, response status code and response headers
    def marketing_campaigns_id_audits_audit_id_put_with_http_info(id, audit_id, campaign_audit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignAuditsApi.marketing_campaigns_id_audits_audit_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CampaignAuditsApi.marketing_campaigns_id_audits_audit_id_put"
      end
      # verify the required parameter 'audit_id' is set
      if @api_client.config.client_side_validation && audit_id.nil?
        fail ArgumentError, "Missing the required parameter 'audit_id' when calling CampaignAuditsApi.marketing_campaigns_id_audits_audit_id_put"
      end
      # verify the required parameter 'campaign_audit' is set
      if @api_client.config.client_side_validation && campaign_audit.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_audit' when calling CampaignAuditsApi.marketing_campaigns_id_audits_audit_id_put"
      end
      # resource path
      local_var_path = "/marketing/campaigns/{id}/audits/{auditId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'auditId' + '}', audit_id.to_s)

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
      post_body = @api_client.object_to_http_body(campaign_audit)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CampaignAudit')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignAuditsApi#marketing_campaigns_id_audits_audit_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Campaign Audits Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def marketing_campaigns_id_audits_count_get(id, opts = {})
      data, _status_code, _headers = marketing_campaigns_id_audits_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Campaign Audits Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def marketing_campaigns_id_audits_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignAuditsApi.marketing_campaigns_id_audits_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CampaignAuditsApi.marketing_campaigns_id_audits_count_get"
      end
      # resource path
      local_var_path = "/marketing/campaigns/{id}/audits/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: CampaignAuditsApi#marketing_campaigns_id_audits_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Campaign Audits
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<CampaignAudit>]
    def marketing_campaigns_id_audits_get(id, opts = {})
      data, _status_code, _headers = marketing_campaigns_id_audits_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Campaign Audits
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<CampaignAudit>, Fixnum, Hash)>] Array<CampaignAudit> data, response status code and response headers
    def marketing_campaigns_id_audits_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignAuditsApi.marketing_campaigns_id_audits_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CampaignAuditsApi.marketing_campaigns_id_audits_get"
      end
      # resource path
      local_var_path = "/marketing/campaigns/{id}/audits".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<CampaignAudit>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignAuditsApi#marketing_campaigns_id_audits_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Campaign Audit
    # @param id 
    # @param campaign_audit 
    # @param [Hash] opts the optional parameters
    # @return [CampaignAudit]
    def marketing_campaigns_id_audits_post(id, campaign_audit, opts = {})
      data, _status_code, _headers = marketing_campaigns_id_audits_post_with_http_info(id, campaign_audit, opts)
      return data
    end

    # 
    # Create Campaign Audit
    # @param id 
    # @param campaign_audit 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CampaignAudit, Fixnum, Hash)>] CampaignAudit data, response status code and response headers
    def marketing_campaigns_id_audits_post_with_http_info(id, campaign_audit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignAuditsApi.marketing_campaigns_id_audits_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CampaignAuditsApi.marketing_campaigns_id_audits_post"
      end
      # verify the required parameter 'campaign_audit' is set
      if @api_client.config.client_side_validation && campaign_audit.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_audit' when calling CampaignAuditsApi.marketing_campaigns_id_audits_post"
      end
      # resource path
      local_var_path = "/marketing/campaigns/{id}/audits".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(campaign_audit)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CampaignAudit')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignAuditsApi#marketing_campaigns_id_audits_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
