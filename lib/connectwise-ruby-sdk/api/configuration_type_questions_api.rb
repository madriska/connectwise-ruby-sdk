
require "uri"

module ConnectWise
  class ConfigurationTypeQuestionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Configuration Type Questions Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def company_configurations_types_id_questions_count_get(id, opts = {})
      data, _status_code, _headers = company_configurations_types_id_questions_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Configuration Type Questions Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def company_configurations_types_id_questions_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConfigurationTypeQuestionsApi.company_configurations_types_id_questions_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationTypeQuestionsApi.company_configurations_types_id_questions_count_get"
      end
      # resource path
      local_var_path = "/company/configurations/types/{id}/questions/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: ConfigurationTypeQuestionsApi#company_configurations_types_id_questions_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Configuration Type Questions
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<ConfigurationTypeQuestion>]
    def company_configurations_types_id_questions_get(id, opts = {})
      data, _status_code, _headers = company_configurations_types_id_questions_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Configuration Type Questions
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<ConfigurationTypeQuestion>, Fixnum, Hash)>] Array<ConfigurationTypeQuestion> data, response status code and response headers
    def company_configurations_types_id_questions_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConfigurationTypeQuestionsApi.company_configurations_types_id_questions_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationTypeQuestionsApi.company_configurations_types_id_questions_get"
      end
      # resource path
      local_var_path = "/company/configurations/types/{id}/questions".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<ConfigurationTypeQuestion>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationTypeQuestionsApi#company_configurations_types_id_questions_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Configuration Type Question
    # @param id 
    # @param configuration_type_question 
    # @param [Hash] opts the optional parameters
    # @return [ConfigurationTypeQuestion]
    def company_configurations_types_id_questions_post(id, configuration_type_question, opts = {})
      data, _status_code, _headers = company_configurations_types_id_questions_post_with_http_info(id, configuration_type_question, opts)
      return data
    end

    # 
    # Create Configuration Type Question
    # @param id 
    # @param configuration_type_question 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConfigurationTypeQuestion, Fixnum, Hash)>] ConfigurationTypeQuestion data, response status code and response headers
    def company_configurations_types_id_questions_post_with_http_info(id, configuration_type_question, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConfigurationTypeQuestionsApi.company_configurations_types_id_questions_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationTypeQuestionsApi.company_configurations_types_id_questions_post"
      end
      # verify the required parameter 'configuration_type_question' is set
      if @api_client.config.client_side_validation && configuration_type_question.nil?
        fail ArgumentError, "Missing the required parameter 'configuration_type_question' when calling ConfigurationTypeQuestionsApi.company_configurations_types_id_questions_post"
      end
      # resource path
      local_var_path = "/company/configurations/types/{id}/questions".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(configuration_type_question)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ConfigurationTypeQuestion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationTypeQuestionsApi#company_configurations_types_id_questions_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Configuration Type Question By Id
    # @param id 
    # @param question_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def company_configurations_types_id_questions_question_id_delete(id, question_id, opts = {})
      company_configurations_types_id_questions_question_id_delete_with_http_info(id, question_id, opts)
      return nil
    end

    # 
    # Delete Configuration Type Question By Id
    # @param id 
    # @param question_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def company_configurations_types_id_questions_question_id_delete_with_http_info(id, question_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConfigurationTypeQuestionsApi.company_configurations_types_id_questions_question_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationTypeQuestionsApi.company_configurations_types_id_questions_question_id_delete"
      end
      # verify the required parameter 'question_id' is set
      if @api_client.config.client_side_validation && question_id.nil?
        fail ArgumentError, "Missing the required parameter 'question_id' when calling ConfigurationTypeQuestionsApi.company_configurations_types_id_questions_question_id_delete"
      end
      # resource path
      local_var_path = "/company/configurations/types/{id}/questions/{questionId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'questionId' + '}', question_id.to_s)

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
        @api_client.config.logger.debug "API called: ConfigurationTypeQuestionsApi#company_configurations_types_id_questions_question_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Configuration Type Question By Id
    # @param id 
    # @param question_id 
    # @param [Hash] opts the optional parameters
    # @return [ConfigurationTypeQuestion]
    def company_configurations_types_id_questions_question_id_get(id, question_id, opts = {})
      data, _status_code, _headers = company_configurations_types_id_questions_question_id_get_with_http_info(id, question_id, opts)
      return data
    end

    # 
    # Get Configuration Type Question By Id
    # @param id 
    # @param question_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConfigurationTypeQuestion, Fixnum, Hash)>] ConfigurationTypeQuestion data, response status code and response headers
    def company_configurations_types_id_questions_question_id_get_with_http_info(id, question_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConfigurationTypeQuestionsApi.company_configurations_types_id_questions_question_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationTypeQuestionsApi.company_configurations_types_id_questions_question_id_get"
      end
      # verify the required parameter 'question_id' is set
      if @api_client.config.client_side_validation && question_id.nil?
        fail ArgumentError, "Missing the required parameter 'question_id' when calling ConfigurationTypeQuestionsApi.company_configurations_types_id_questions_question_id_get"
      end
      # resource path
      local_var_path = "/company/configurations/types/{id}/questions/{questionId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'questionId' + '}', question_id.to_s)

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
        :return_type => 'ConfigurationTypeQuestion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationTypeQuestionsApi#company_configurations_types_id_questions_question_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Configuration Type Question
    # @param id 
    # @param question_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [ConfigurationTypeQuestion]
    def company_configurations_types_id_questions_question_id_patch(id, question_id, operations, opts = {})
      data, _status_code, _headers = company_configurations_types_id_questions_question_id_patch_with_http_info(id, question_id, operations, opts)
      return data
    end

    # 
    # Update Configuration Type Question
    # @param id 
    # @param question_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConfigurationTypeQuestion, Fixnum, Hash)>] ConfigurationTypeQuestion data, response status code and response headers
    def company_configurations_types_id_questions_question_id_patch_with_http_info(id, question_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConfigurationTypeQuestionsApi.company_configurations_types_id_questions_question_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationTypeQuestionsApi.company_configurations_types_id_questions_question_id_patch"
      end
      # verify the required parameter 'question_id' is set
      if @api_client.config.client_side_validation && question_id.nil?
        fail ArgumentError, "Missing the required parameter 'question_id' when calling ConfigurationTypeQuestionsApi.company_configurations_types_id_questions_question_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling ConfigurationTypeQuestionsApi.company_configurations_types_id_questions_question_id_patch"
      end
      # resource path
      local_var_path = "/company/configurations/types/{id}/questions/{questionId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'questionId' + '}', question_id.to_s)

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
        :return_type => 'ConfigurationTypeQuestion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationTypeQuestionsApi#company_configurations_types_id_questions_question_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Configuration Type Question
    # @param id 
    # @param question_id 
    # @param configuration_type_question 
    # @param [Hash] opts the optional parameters
    # @return [ConfigurationTypeQuestion]
    def company_configurations_types_id_questions_question_id_put(id, question_id, configuration_type_question, opts = {})
      data, _status_code, _headers = company_configurations_types_id_questions_question_id_put_with_http_info(id, question_id, configuration_type_question, opts)
      return data
    end

    # 
    # Replace Configuration Type Question
    # @param id 
    # @param question_id 
    # @param configuration_type_question 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConfigurationTypeQuestion, Fixnum, Hash)>] ConfigurationTypeQuestion data, response status code and response headers
    def company_configurations_types_id_questions_question_id_put_with_http_info(id, question_id, configuration_type_question, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConfigurationTypeQuestionsApi.company_configurations_types_id_questions_question_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationTypeQuestionsApi.company_configurations_types_id_questions_question_id_put"
      end
      # verify the required parameter 'question_id' is set
      if @api_client.config.client_side_validation && question_id.nil?
        fail ArgumentError, "Missing the required parameter 'question_id' when calling ConfigurationTypeQuestionsApi.company_configurations_types_id_questions_question_id_put"
      end
      # verify the required parameter 'configuration_type_question' is set
      if @api_client.config.client_side_validation && configuration_type_question.nil?
        fail ArgumentError, "Missing the required parameter 'configuration_type_question' when calling ConfigurationTypeQuestionsApi.company_configurations_types_id_questions_question_id_put"
      end
      # resource path
      local_var_path = "/company/configurations/types/{id}/questions/{questionId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'questionId' + '}', question_id.to_s)

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
      post_body = @api_client.object_to_http_body(configuration_type_question)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ConfigurationTypeQuestion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationTypeQuestionsApi#company_configurations_types_id_questions_question_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
