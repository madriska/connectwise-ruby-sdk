
require "uri"

module ConnectWise
  class ProductComponentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Delete Product Component By Id
    # @param id 
    # @param component_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def procurement_products_id_components_component_id_delete(id, component_id, opts = {})
      procurement_products_id_components_component_id_delete_with_http_info(id, component_id, opts)
      return nil
    end

    # 
    # Delete Product Component By Id
    # @param id 
    # @param component_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def procurement_products_id_components_component_id_delete_with_http_info(id, component_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductComponentsApi.procurement_products_id_components_component_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProductComponentsApi.procurement_products_id_components_component_id_delete"
      end
      # verify the required parameter 'component_id' is set
      if @api_client.config.client_side_validation && component_id.nil?
        fail ArgumentError, "Missing the required parameter 'component_id' when calling ProductComponentsApi.procurement_products_id_components_component_id_delete"
      end
      # resource path
      local_var_path = "/procurement/products/{id}/components/{componentId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'componentId' + '}', component_id.to_s)

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
        @api_client.config.logger.debug "API called: ProductComponentsApi#procurement_products_id_components_component_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Product Component By Id
    # @param id 
    # @param component_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<ProductComponent>]
    def procurement_products_id_components_component_id_get(id, component_id, opts = {})
      data, _status_code, _headers = procurement_products_id_components_component_id_get_with_http_info(id, component_id, opts)
      return data
    end

    # 
    # Get Product Component By Id
    # @param id 
    # @param component_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ProductComponent>, Fixnum, Hash)>] Array<ProductComponent> data, response status code and response headers
    def procurement_products_id_components_component_id_get_with_http_info(id, component_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductComponentsApi.procurement_products_id_components_component_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProductComponentsApi.procurement_products_id_components_component_id_get"
      end
      # verify the required parameter 'component_id' is set
      if @api_client.config.client_side_validation && component_id.nil?
        fail ArgumentError, "Missing the required parameter 'component_id' when calling ProductComponentsApi.procurement_products_id_components_component_id_get"
      end
      # resource path
      local_var_path = "/procurement/products/{id}/components/{componentId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'componentId' + '}', component_id.to_s)

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
        :return_type => 'Array<ProductComponent>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductComponentsApi#procurement_products_id_components_component_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Product Component
    # @param id 
    # @param component_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<ProductComponent>]
    def procurement_products_id_components_component_id_patch(id, component_id, operations, opts = {})
      data, _status_code, _headers = procurement_products_id_components_component_id_patch_with_http_info(id, component_id, operations, opts)
      return data
    end

    # 
    # Update Product Component
    # @param id 
    # @param component_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ProductComponent>, Fixnum, Hash)>] Array<ProductComponent> data, response status code and response headers
    def procurement_products_id_components_component_id_patch_with_http_info(id, component_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductComponentsApi.procurement_products_id_components_component_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProductComponentsApi.procurement_products_id_components_component_id_patch"
      end
      # verify the required parameter 'component_id' is set
      if @api_client.config.client_side_validation && component_id.nil?
        fail ArgumentError, "Missing the required parameter 'component_id' when calling ProductComponentsApi.procurement_products_id_components_component_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling ProductComponentsApi.procurement_products_id_components_component_id_patch"
      end
      # resource path
      local_var_path = "/procurement/products/{id}/components/{componentId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'componentId' + '}', component_id.to_s)

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
        :return_type => 'Array<ProductComponent>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductComponentsApi#procurement_products_id_components_component_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Product Component
    # @param id 
    # @param component_id 
    # @param product_component 
    # @param [Hash] opts the optional parameters
    # @return [Array<ProductComponent>]
    def procurement_products_id_components_component_id_put(id, component_id, product_component, opts = {})
      data, _status_code, _headers = procurement_products_id_components_component_id_put_with_http_info(id, component_id, product_component, opts)
      return data
    end

    # 
    # Replace Product Component
    # @param id 
    # @param component_id 
    # @param product_component 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ProductComponent>, Fixnum, Hash)>] Array<ProductComponent> data, response status code and response headers
    def procurement_products_id_components_component_id_put_with_http_info(id, component_id, product_component, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductComponentsApi.procurement_products_id_components_component_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProductComponentsApi.procurement_products_id_components_component_id_put"
      end
      # verify the required parameter 'component_id' is set
      if @api_client.config.client_side_validation && component_id.nil?
        fail ArgumentError, "Missing the required parameter 'component_id' when calling ProductComponentsApi.procurement_products_id_components_component_id_put"
      end
      # verify the required parameter 'product_component' is set
      if @api_client.config.client_side_validation && product_component.nil?
        fail ArgumentError, "Missing the required parameter 'product_component' when calling ProductComponentsApi.procurement_products_id_components_component_id_put"
      end
      # resource path
      local_var_path = "/procurement/products/{id}/components/{componentId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'componentId' + '}', component_id.to_s)

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
      post_body = @api_client.object_to_http_body(product_component)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<ProductComponent>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductComponentsApi#procurement_products_id_components_component_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Product Components Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def procurement_products_id_components_count_get(id, opts = {})
      data, _status_code, _headers = procurement_products_id_components_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Product Components Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def procurement_products_id_components_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductComponentsApi.procurement_products_id_components_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProductComponentsApi.procurement_products_id_components_count_get"
      end
      # resource path
      local_var_path = "/procurement/products/{id}/components/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: ProductComponentsApi#procurement_products_id_components_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Product Components
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<ProductComponent>]
    def procurement_products_id_components_get(id, opts = {})
      data, _status_code, _headers = procurement_products_id_components_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Product Components
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<ProductComponent>, Fixnum, Hash)>] Array<ProductComponent> data, response status code and response headers
    def procurement_products_id_components_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductComponentsApi.procurement_products_id_components_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProductComponentsApi.procurement_products_id_components_get"
      end
      # resource path
      local_var_path = "/procurement/products/{id}/components".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<ProductComponent>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductComponentsApi#procurement_products_id_components_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Product Component
    # @param id 
    # @param product_component 
    # @param [Hash] opts the optional parameters
    # @return [Array<ProductComponent>]
    def procurement_products_id_components_post(id, product_component, opts = {})
      data, _status_code, _headers = procurement_products_id_components_post_with_http_info(id, product_component, opts)
      return data
    end

    # 
    # Create Product Component
    # @param id 
    # @param product_component 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ProductComponent>, Fixnum, Hash)>] Array<ProductComponent> data, response status code and response headers
    def procurement_products_id_components_post_with_http_info(id, product_component, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductComponentsApi.procurement_products_id_components_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProductComponentsApi.procurement_products_id_components_post"
      end
      # verify the required parameter 'product_component' is set
      if @api_client.config.client_side_validation && product_component.nil?
        fail ArgumentError, "Missing the required parameter 'product_component' when calling ProductComponentsApi.procurement_products_id_components_post"
      end
      # resource path
      local_var_path = "/procurement/products/{id}/components".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(product_component)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<ProductComponent>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductComponentsApi#procurement_products_id_components_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
