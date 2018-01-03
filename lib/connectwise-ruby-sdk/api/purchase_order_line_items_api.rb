
require "uri"

module ConnectWise
  class PurchaseOrderLineItemsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Purchase Order Line Items Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def procurement_purchaseorders_id_lineitems_count_get(id, opts = {})
      data, _status_code, _headers = procurement_purchaseorders_id_lineitems_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Purchase Order Line Items Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def procurement_purchaseorders_id_lineitems_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_count_get"
      end
      # resource path
      local_var_path = "/procurement/purchaseorders/{id}/lineitems/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: PurchaseOrderLineItemsApi#procurement_purchaseorders_id_lineitems_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Purchase Order Line Items
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<PurchaseOrderLineItem>]
    def procurement_purchaseorders_id_lineitems_get(id, opts = {})
      data, _status_code, _headers = procurement_purchaseorders_id_lineitems_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Purchase Order Line Items
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<PurchaseOrderLineItem>, Fixnum, Hash)>] Array<PurchaseOrderLineItem> data, response status code and response headers
    def procurement_purchaseorders_id_lineitems_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_get"
      end
      # resource path
      local_var_path = "/procurement/purchaseorders/{id}/lineitems".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<PurchaseOrderLineItem>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurchaseOrderLineItemsApi#procurement_purchaseorders_id_lineitems_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Purchase Order Line Item By Id
    # @param id 
    # @param line_item_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def procurement_purchaseorders_id_lineitems_line_item_id_delete(id, line_item_id, opts = {})
      procurement_purchaseorders_id_lineitems_line_item_id_delete_with_http_info(id, line_item_id, opts)
      return nil
    end

    # 
    # Delete Purchase Order Line Item By Id
    # @param id 
    # @param line_item_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def procurement_purchaseorders_id_lineitems_line_item_id_delete_with_http_info(id, line_item_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_delete"
      end
      # verify the required parameter 'line_item_id' is set
      if @api_client.config.client_side_validation && line_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'line_item_id' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_delete"
      end
      # resource path
      local_var_path = "/procurement/purchaseorders/{id}/lineitems/{lineItemId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'lineItemId' + '}', line_item_id.to_s)

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
        @api_client.config.logger.debug "API called: PurchaseOrderLineItemsApi#procurement_purchaseorders_id_lineitems_line_item_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Purchase Order Line Item By Id
    # @param id 
    # @param line_item_id 
    # @param [Hash] opts the optional parameters
    # @return [PurchaseOrderLineItem]
    def procurement_purchaseorders_id_lineitems_line_item_id_get(id, line_item_id, opts = {})
      data, _status_code, _headers = procurement_purchaseorders_id_lineitems_line_item_id_get_with_http_info(id, line_item_id, opts)
      return data
    end

    # 
    # Get Purchase Order Line Item By Id
    # @param id 
    # @param line_item_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PurchaseOrderLineItem, Fixnum, Hash)>] PurchaseOrderLineItem data, response status code and response headers
    def procurement_purchaseorders_id_lineitems_line_item_id_get_with_http_info(id, line_item_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_get"
      end
      # verify the required parameter 'line_item_id' is set
      if @api_client.config.client_side_validation && line_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'line_item_id' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_get"
      end
      # resource path
      local_var_path = "/procurement/purchaseorders/{id}/lineitems/{lineItemId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'lineItemId' + '}', line_item_id.to_s)

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
        :return_type => 'PurchaseOrderLineItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurchaseOrderLineItemsApi#procurement_purchaseorders_id_lineitems_line_item_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Purchase Order Line Item
    # @param id 
    # @param line_item_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [PurchaseOrderLineItem]
    def procurement_purchaseorders_id_lineitems_line_item_id_patch(id, line_item_id, operations, opts = {})
      data, _status_code, _headers = procurement_purchaseorders_id_lineitems_line_item_id_patch_with_http_info(id, line_item_id, operations, opts)
      return data
    end

    # 
    # Update Purchase Order Line Item
    # @param id 
    # @param line_item_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PurchaseOrderLineItem, Fixnum, Hash)>] PurchaseOrderLineItem data, response status code and response headers
    def procurement_purchaseorders_id_lineitems_line_item_id_patch_with_http_info(id, line_item_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_patch"
      end
      # verify the required parameter 'line_item_id' is set
      if @api_client.config.client_side_validation && line_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'line_item_id' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_patch"
      end
      # resource path
      local_var_path = "/procurement/purchaseorders/{id}/lineitems/{lineItemId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'lineItemId' + '}', line_item_id.to_s)

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
        :return_type => 'PurchaseOrderLineItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurchaseOrderLineItemsApi#procurement_purchaseorders_id_lineitems_line_item_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Purchase Order Line Item
    # @param id 
    # @param line_item_id 
    # @param purchase_order_line_item 
    # @param [Hash] opts the optional parameters
    # @return [PurchaseOrderLineItem]
    def procurement_purchaseorders_id_lineitems_line_item_id_put(id, line_item_id, purchase_order_line_item, opts = {})
      data, _status_code, _headers = procurement_purchaseorders_id_lineitems_line_item_id_put_with_http_info(id, line_item_id, purchase_order_line_item, opts)
      return data
    end

    # 
    # Replace Purchase Order Line Item
    # @param id 
    # @param line_item_id 
    # @param purchase_order_line_item 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PurchaseOrderLineItem, Fixnum, Hash)>] PurchaseOrderLineItem data, response status code and response headers
    def procurement_purchaseorders_id_lineitems_line_item_id_put_with_http_info(id, line_item_id, purchase_order_line_item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_put"
      end
      # verify the required parameter 'line_item_id' is set
      if @api_client.config.client_side_validation && line_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'line_item_id' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_put"
      end
      # verify the required parameter 'purchase_order_line_item' is set
      if @api_client.config.client_side_validation && purchase_order_line_item.nil?
        fail ArgumentError, "Missing the required parameter 'purchase_order_line_item' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_put"
      end
      # resource path
      local_var_path = "/procurement/purchaseorders/{id}/lineitems/{lineItemId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'lineItemId' + '}', line_item_id.to_s)

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
      post_body = @api_client.object_to_http_body(purchase_order_line_item)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PurchaseOrderLineItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurchaseOrderLineItemsApi#procurement_purchaseorders_id_lineitems_line_item_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Purchase Order Line Item
    # @param id 
    # @param purchase_order_line_item 
    # @param [Hash] opts the optional parameters
    # @return [PurchaseOrderLineItem]
    def procurement_purchaseorders_id_lineitems_post(id, purchase_order_line_item, opts = {})
      data, _status_code, _headers = procurement_purchaseorders_id_lineitems_post_with_http_info(id, purchase_order_line_item, opts)
      return data
    end

    # 
    # Create Purchase Order Line Item
    # @param id 
    # @param purchase_order_line_item 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PurchaseOrderLineItem, Fixnum, Hash)>] PurchaseOrderLineItem data, response status code and response headers
    def procurement_purchaseorders_id_lineitems_post_with_http_info(id, purchase_order_line_item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_post"
      end
      # verify the required parameter 'purchase_order_line_item' is set
      if @api_client.config.client_side_validation && purchase_order_line_item.nil?
        fail ArgumentError, "Missing the required parameter 'purchase_order_line_item' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_post"
      end
      # resource path
      local_var_path = "/procurement/purchaseorders/{id}/lineitems".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(purchase_order_line_item)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PurchaseOrderLineItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurchaseOrderLineItemsApi#procurement_purchaseorders_id_lineitems_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
