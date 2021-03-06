=begin
#Connectwise REST API

#ConnectWise API

OpenAPI spec version: 1.0.0
Contact: platform@connectwise.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module Connectwise
  class ProjectContactsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Delete Project Contact By Id
    # @param id 
    # @param contact_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def project_projects_id_contacts_contact_id_delete(id, contact_id, opts = {})
      project_projects_id_contacts_contact_id_delete_with_http_info(id, contact_id, opts)
      return nil
    end

    # 
    # Delete Project Contact By Id
    # @param id 
    # @param contact_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def project_projects_id_contacts_contact_id_delete_with_http_info(id, contact_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProjectContactsApi.project_projects_id_contacts_contact_id_delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ProjectContactsApi.project_projects_id_contacts_contact_id_delete" if id.nil?
      # verify the required parameter 'contact_id' is set
      fail ArgumentError, "Missing the required parameter 'contact_id' when calling ProjectContactsApi.project_projects_id_contacts_contact_id_delete" if contact_id.nil?
      # resource path
      local_var_path = "/project/projects/{id}/contacts/{contactId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'contactId' + '}', contact_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = []
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

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
        @api_client.config.logger.debug "API called: ProjectContactsApi#project_projects_id_contacts_contact_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Project Contact By Id
    # @param id 
    # @param contact_id 
    # @param [Hash] opts the optional parameters
    # @return [ProjectContact]
    def project_projects_id_contacts_contact_id_get(id, contact_id, opts = {})
      data, _status_code, _headers = project_projects_id_contacts_contact_id_get_with_http_info(id, contact_id, opts)
      return data
    end

    # 
    # Get Project Contact By Id
    # @param id 
    # @param contact_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProjectContact, Fixnum, Hash)>] ProjectContact data, response status code and response headers
    def project_projects_id_contacts_contact_id_get_with_http_info(id, contact_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProjectContactsApi.project_projects_id_contacts_contact_id_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ProjectContactsApi.project_projects_id_contacts_contact_id_get" if id.nil?
      # verify the required parameter 'contact_id' is set
      fail ArgumentError, "Missing the required parameter 'contact_id' when calling ProjectContactsApi.project_projects_id_contacts_contact_id_get" if contact_id.nil?
      # resource path
      local_var_path = "/project/projects/{id}/contacts/{contactId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'contactId' + '}', contact_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

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
        :return_type => 'ProjectContact')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectContactsApi#project_projects_id_contacts_contact_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Project Contacts
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<ProjectContact>]
    def project_projects_id_contacts_get(id, opts = {})
      data, _status_code, _headers = project_projects_id_contacts_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Project Contacts
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<ProjectContact>, Fixnum, Hash)>] Array<ProjectContact> data, response status code and response headers
    def project_projects_id_contacts_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProjectContactsApi.project_projects_id_contacts_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ProjectContactsApi.project_projects_id_contacts_get" if id.nil?
      # resource path
      local_var_path = "/project/projects/{id}/contacts".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'conditions'] = opts[:'conditions'] if !opts[:'conditions'].nil?
      query_params[:'orderBy'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

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
        :return_type => 'Array<ProjectContact>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectContactsApi#project_projects_id_contacts_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Project Contact
    # @param id 
    # @param contact 
    # @param [Hash] opts the optional parameters
    # @return [ProjectContact]
    def project_projects_id_contacts_post(id, contact, opts = {})
      data, _status_code, _headers = project_projects_id_contacts_post_with_http_info(id, contact, opts)
      return data
    end

    # 
    # Create Project Contact
    # @param id 
    # @param contact 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProjectContact, Fixnum, Hash)>] ProjectContact data, response status code and response headers
    def project_projects_id_contacts_post_with_http_info(id, contact, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProjectContactsApi.project_projects_id_contacts_post ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ProjectContactsApi.project_projects_id_contacts_post" if id.nil?
      # verify the required parameter 'contact' is set
      fail ArgumentError, "Missing the required parameter 'contact' when calling ProjectContactsApi.project_projects_id_contacts_post" if contact.nil?
      # resource path
      local_var_path = "/project/projects/{id}/contacts".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(contact)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProjectContact')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectContactsApi#project_projects_id_contacts_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
