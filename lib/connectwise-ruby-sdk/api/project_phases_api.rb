
require "uri"

module ConnectWise
  class ProjectPhasesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Project Phases Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def project_projects_id_phases_count_get(id, opts = {})
      data, _status_code, _headers = project_projects_id_phases_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Project Phases Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def project_projects_id_phases_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProjectPhasesApi.project_projects_id_phases_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProjectPhasesApi.project_projects_id_phases_count_get"
      end
      # resource path
      local_var_path = "/project/projects/{id}/phases/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: ProjectPhasesApi#project_projects_id_phases_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Project Phases
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<ProjectPhase>]
    def project_projects_id_phases_get(id, opts = {})
      data, _status_code, _headers = project_projects_id_phases_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Project Phases
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<ProjectPhase>, Fixnum, Hash)>] Array<ProjectPhase> data, response status code and response headers
    def project_projects_id_phases_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProjectPhasesApi.project_projects_id_phases_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProjectPhasesApi.project_projects_id_phases_get"
      end
      # resource path
      local_var_path = "/project/projects/{id}/phases".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<ProjectPhase>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectPhasesApi#project_projects_id_phases_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Project Phase By Id
    # @param id 
    # @param phase_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def project_projects_id_phases_phase_id_delete(id, phase_id, opts = {})
      project_projects_id_phases_phase_id_delete_with_http_info(id, phase_id, opts)
      return nil
    end

    # 
    # Delete Project Phase By Id
    # @param id 
    # @param phase_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def project_projects_id_phases_phase_id_delete_with_http_info(id, phase_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProjectPhasesApi.project_projects_id_phases_phase_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProjectPhasesApi.project_projects_id_phases_phase_id_delete"
      end
      # verify the required parameter 'phase_id' is set
      if @api_client.config.client_side_validation && phase_id.nil?
        fail ArgumentError, "Missing the required parameter 'phase_id' when calling ProjectPhasesApi.project_projects_id_phases_phase_id_delete"
      end
      # resource path
      local_var_path = "/project/projects/{id}/phases/{phaseId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'phaseId' + '}', phase_id.to_s)

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
        @api_client.config.logger.debug "API called: ProjectPhasesApi#project_projects_id_phases_phase_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Project Phase By Id
    # @param id 
    # @param phase_id 
    # @param [Hash] opts the optional parameters
    # @return [ProjectPhase]
    def project_projects_id_phases_phase_id_get(id, phase_id, opts = {})
      data, _status_code, _headers = project_projects_id_phases_phase_id_get_with_http_info(id, phase_id, opts)
      return data
    end

    # 
    # Get Project Phase By Id
    # @param id 
    # @param phase_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProjectPhase, Fixnum, Hash)>] ProjectPhase data, response status code and response headers
    def project_projects_id_phases_phase_id_get_with_http_info(id, phase_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProjectPhasesApi.project_projects_id_phases_phase_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProjectPhasesApi.project_projects_id_phases_phase_id_get"
      end
      # verify the required parameter 'phase_id' is set
      if @api_client.config.client_side_validation && phase_id.nil?
        fail ArgumentError, "Missing the required parameter 'phase_id' when calling ProjectPhasesApi.project_projects_id_phases_phase_id_get"
      end
      # resource path
      local_var_path = "/project/projects/{id}/phases/{phaseId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'phaseId' + '}', phase_id.to_s)

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
        :return_type => 'ProjectPhase')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectPhasesApi#project_projects_id_phases_phase_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Project Phase
    # @param id 
    # @param phase_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [ProjectPhase]
    def project_projects_id_phases_phase_id_patch(id, phase_id, operations, opts = {})
      data, _status_code, _headers = project_projects_id_phases_phase_id_patch_with_http_info(id, phase_id, operations, opts)
      return data
    end

    # 
    # Update Project Phase
    # @param id 
    # @param phase_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProjectPhase, Fixnum, Hash)>] ProjectPhase data, response status code and response headers
    def project_projects_id_phases_phase_id_patch_with_http_info(id, phase_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProjectPhasesApi.project_projects_id_phases_phase_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProjectPhasesApi.project_projects_id_phases_phase_id_patch"
      end
      # verify the required parameter 'phase_id' is set
      if @api_client.config.client_side_validation && phase_id.nil?
        fail ArgumentError, "Missing the required parameter 'phase_id' when calling ProjectPhasesApi.project_projects_id_phases_phase_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling ProjectPhasesApi.project_projects_id_phases_phase_id_patch"
      end
      # resource path
      local_var_path = "/project/projects/{id}/phases/{phaseId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'phaseId' + '}', phase_id.to_s)

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
        :return_type => 'ProjectPhase')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectPhasesApi#project_projects_id_phases_phase_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Project Phase
    # @param id 
    # @param phase_id 
    # @param project_phase 
    # @param [Hash] opts the optional parameters
    # @return [ProjectPhase]
    def project_projects_id_phases_phase_id_put(id, phase_id, project_phase, opts = {})
      data, _status_code, _headers = project_projects_id_phases_phase_id_put_with_http_info(id, phase_id, project_phase, opts)
      return data
    end

    # 
    # Replace Project Phase
    # @param id 
    # @param phase_id 
    # @param project_phase 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProjectPhase, Fixnum, Hash)>] ProjectPhase data, response status code and response headers
    def project_projects_id_phases_phase_id_put_with_http_info(id, phase_id, project_phase, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProjectPhasesApi.project_projects_id_phases_phase_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProjectPhasesApi.project_projects_id_phases_phase_id_put"
      end
      # verify the required parameter 'phase_id' is set
      if @api_client.config.client_side_validation && phase_id.nil?
        fail ArgumentError, "Missing the required parameter 'phase_id' when calling ProjectPhasesApi.project_projects_id_phases_phase_id_put"
      end
      # verify the required parameter 'project_phase' is set
      if @api_client.config.client_side_validation && project_phase.nil?
        fail ArgumentError, "Missing the required parameter 'project_phase' when calling ProjectPhasesApi.project_projects_id_phases_phase_id_put"
      end
      # resource path
      local_var_path = "/project/projects/{id}/phases/{phaseId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'phaseId' + '}', phase_id.to_s)

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
      post_body = @api_client.object_to_http_body(project_phase)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProjectPhase')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectPhasesApi#project_projects_id_phases_phase_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Project Phase
    # @param id 
    # @param project_phase 
    # @param [Hash] opts the optional parameters
    # @return [ProjectPhase]
    def project_projects_id_phases_post(id, project_phase, opts = {})
      data, _status_code, _headers = project_projects_id_phases_post_with_http_info(id, project_phase, opts)
      return data
    end

    # 
    # Create Project Phase
    # @param id 
    # @param project_phase 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProjectPhase, Fixnum, Hash)>] ProjectPhase data, response status code and response headers
    def project_projects_id_phases_post_with_http_info(id, project_phase, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProjectPhasesApi.project_projects_id_phases_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProjectPhasesApi.project_projects_id_phases_post"
      end
      # verify the required parameter 'project_phase' is set
      if @api_client.config.client_side_validation && project_phase.nil?
        fail ArgumentError, "Missing the required parameter 'project_phase' when calling ProjectPhasesApi.project_projects_id_phases_post"
      end
      # resource path
      local_var_path = "/project/projects/{id}/phases".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(project_phase)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProjectPhase')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectPhasesApi#project_projects_id_phases_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
