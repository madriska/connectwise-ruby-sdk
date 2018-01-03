
require "uri"

module ConnectWise
  class CampaignEmailsOpenedApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Emails Opened Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def marketing_campaigns_id_emails_opened_count_get(id, opts = {})
      data, _status_code, _headers = marketing_campaigns_id_emails_opened_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Emails Opened Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def marketing_campaigns_id_emails_opened_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignEmailsOpenedApi.marketing_campaigns_id_emails_opened_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CampaignEmailsOpenedApi.marketing_campaigns_id_emails_opened_count_get"
      end
      # resource path
      local_var_path = "/marketing/campaigns/{id}/emailsOpened/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: CampaignEmailsOpenedApi#marketing_campaigns_id_emails_opened_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Email Opened By Id
    # @param id 
    # @param email_opened_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def marketing_campaigns_id_emails_opened_email_opened_id_delete(id, email_opened_id, opts = {})
      marketing_campaigns_id_emails_opened_email_opened_id_delete_with_http_info(id, email_opened_id, opts)
      return nil
    end

    # 
    # Delete Email Opened By Id
    # @param id 
    # @param email_opened_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def marketing_campaigns_id_emails_opened_email_opened_id_delete_with_http_info(id, email_opened_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignEmailsOpenedApi.marketing_campaigns_id_emails_opened_email_opened_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CampaignEmailsOpenedApi.marketing_campaigns_id_emails_opened_email_opened_id_delete"
      end
      # verify the required parameter 'email_opened_id' is set
      if @api_client.config.client_side_validation && email_opened_id.nil?
        fail ArgumentError, "Missing the required parameter 'email_opened_id' when calling CampaignEmailsOpenedApi.marketing_campaigns_id_emails_opened_email_opened_id_delete"
      end
      # resource path
      local_var_path = "/marketing/campaigns/{id}/emailsOpened/{emailOpenedId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'emailOpenedId' + '}', email_opened_id.to_s)

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
        @api_client.config.logger.debug "API called: CampaignEmailsOpenedApi#marketing_campaigns_id_emails_opened_email_opened_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Email Opened By Id
    # @param id 
    # @param email_opened_id 
    # @param [Hash] opts the optional parameters
    # @return [EmailOpened]
    def marketing_campaigns_id_emails_opened_email_opened_id_get(id, email_opened_id, opts = {})
      data, _status_code, _headers = marketing_campaigns_id_emails_opened_email_opened_id_get_with_http_info(id, email_opened_id, opts)
      return data
    end

    # 
    # Get Email Opened By Id
    # @param id 
    # @param email_opened_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmailOpened, Fixnum, Hash)>] EmailOpened data, response status code and response headers
    def marketing_campaigns_id_emails_opened_email_opened_id_get_with_http_info(id, email_opened_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignEmailsOpenedApi.marketing_campaigns_id_emails_opened_email_opened_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CampaignEmailsOpenedApi.marketing_campaigns_id_emails_opened_email_opened_id_get"
      end
      # verify the required parameter 'email_opened_id' is set
      if @api_client.config.client_side_validation && email_opened_id.nil?
        fail ArgumentError, "Missing the required parameter 'email_opened_id' when calling CampaignEmailsOpenedApi.marketing_campaigns_id_emails_opened_email_opened_id_get"
      end
      # resource path
      local_var_path = "/marketing/campaigns/{id}/emailsOpened/{emailOpenedId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'emailOpenedId' + '}', email_opened_id.to_s)

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
        :return_type => 'EmailOpened')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignEmailsOpenedApi#marketing_campaigns_id_emails_opened_email_opened_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Email Opened
    # @param id 
    # @param email_opened_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [EmailOpened]
    def marketing_campaigns_id_emails_opened_email_opened_id_patch(id, email_opened_id, operations, opts = {})
      data, _status_code, _headers = marketing_campaigns_id_emails_opened_email_opened_id_patch_with_http_info(id, email_opened_id, operations, opts)
      return data
    end

    # 
    # Update Email Opened
    # @param id 
    # @param email_opened_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmailOpened, Fixnum, Hash)>] EmailOpened data, response status code and response headers
    def marketing_campaigns_id_emails_opened_email_opened_id_patch_with_http_info(id, email_opened_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignEmailsOpenedApi.marketing_campaigns_id_emails_opened_email_opened_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CampaignEmailsOpenedApi.marketing_campaigns_id_emails_opened_email_opened_id_patch"
      end
      # verify the required parameter 'email_opened_id' is set
      if @api_client.config.client_side_validation && email_opened_id.nil?
        fail ArgumentError, "Missing the required parameter 'email_opened_id' when calling CampaignEmailsOpenedApi.marketing_campaigns_id_emails_opened_email_opened_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling CampaignEmailsOpenedApi.marketing_campaigns_id_emails_opened_email_opened_id_patch"
      end
      # resource path
      local_var_path = "/marketing/campaigns/{id}/emailsOpened/{emailOpenedId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'emailOpenedId' + '}', email_opened_id.to_s)

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
        :return_type => 'EmailOpened')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignEmailsOpenedApi#marketing_campaigns_id_emails_opened_email_opened_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Email Opened
    # @param id 
    # @param email_opened_id 
    # @param email_opened 
    # @param [Hash] opts the optional parameters
    # @return [EmailOpened]
    def marketing_campaigns_id_emails_opened_email_opened_id_put(id, email_opened_id, email_opened, opts = {})
      data, _status_code, _headers = marketing_campaigns_id_emails_opened_email_opened_id_put_with_http_info(id, email_opened_id, email_opened, opts)
      return data
    end

    # 
    # Replace Email Opened
    # @param id 
    # @param email_opened_id 
    # @param email_opened 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmailOpened, Fixnum, Hash)>] EmailOpened data, response status code and response headers
    def marketing_campaigns_id_emails_opened_email_opened_id_put_with_http_info(id, email_opened_id, email_opened, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignEmailsOpenedApi.marketing_campaigns_id_emails_opened_email_opened_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CampaignEmailsOpenedApi.marketing_campaigns_id_emails_opened_email_opened_id_put"
      end
      # verify the required parameter 'email_opened_id' is set
      if @api_client.config.client_side_validation && email_opened_id.nil?
        fail ArgumentError, "Missing the required parameter 'email_opened_id' when calling CampaignEmailsOpenedApi.marketing_campaigns_id_emails_opened_email_opened_id_put"
      end
      # verify the required parameter 'email_opened' is set
      if @api_client.config.client_side_validation && email_opened.nil?
        fail ArgumentError, "Missing the required parameter 'email_opened' when calling CampaignEmailsOpenedApi.marketing_campaigns_id_emails_opened_email_opened_id_put"
      end
      # resource path
      local_var_path = "/marketing/campaigns/{id}/emailsOpened/{emailOpenedId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'emailOpenedId' + '}', email_opened_id.to_s)

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
      post_body = @api_client.object_to_http_body(email_opened)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'EmailOpened')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignEmailsOpenedApi#marketing_campaigns_id_emails_opened_email_opened_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Emails Opened
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<EmailOpened>]
    def marketing_campaigns_id_emails_opened_get(id, opts = {})
      data, _status_code, _headers = marketing_campaigns_id_emails_opened_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Emails Opened
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<EmailOpened>, Fixnum, Hash)>] Array<EmailOpened> data, response status code and response headers
    def marketing_campaigns_id_emails_opened_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignEmailsOpenedApi.marketing_campaigns_id_emails_opened_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CampaignEmailsOpenedApi.marketing_campaigns_id_emails_opened_get"
      end
      # resource path
      local_var_path = "/marketing/campaigns/{id}/emailsOpened".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<EmailOpened>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignEmailsOpenedApi#marketing_campaigns_id_emails_opened_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Email Opened
    # @param id 
    # @param email_opened 
    # @param [Hash] opts the optional parameters
    # @return [EmailOpened]
    def marketing_campaigns_id_emails_opened_post(id, email_opened, opts = {})
      data, _status_code, _headers = marketing_campaigns_id_emails_opened_post_with_http_info(id, email_opened, opts)
      return data
    end

    # 
    # Create Email Opened
    # @param id 
    # @param email_opened 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmailOpened, Fixnum, Hash)>] EmailOpened data, response status code and response headers
    def marketing_campaigns_id_emails_opened_post_with_http_info(id, email_opened, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignEmailsOpenedApi.marketing_campaigns_id_emails_opened_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CampaignEmailsOpenedApi.marketing_campaigns_id_emails_opened_post"
      end
      # verify the required parameter 'email_opened' is set
      if @api_client.config.client_side_validation && email_opened.nil?
        fail ArgumentError, "Missing the required parameter 'email_opened' when calling CampaignEmailsOpenedApi.marketing_campaigns_id_emails_opened_post"
      end
      # resource path
      local_var_path = "/marketing/campaigns/{id}/emailsOpened".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(email_opened)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'EmailOpened')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignEmailsOpenedApi#marketing_campaigns_id_emails_opened_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
