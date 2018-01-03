
require 'date'

module ConnectWise

  class PurchaseOrder
    attr_accessor :id

    # Metadata of the entity
    attr_accessor :_info

    attr_accessor :business_unit_id

    attr_accessor :cancel_reason

    attr_accessor :closed_flag

    attr_accessor :customer_city

    attr_accessor :customer_company

    attr_accessor :customer_contact

    attr_accessor :customer_country

    attr_accessor :customer_extension

    attr_accessor :customer_name

    attr_accessor :customer_phone

    attr_accessor :customer_site

    attr_accessor :customer_site_name

    attr_accessor :customer_state

    attr_accessor :customer_street_line1

    attr_accessor :customer_street_line2

    attr_accessor :customer_zip

    attr_accessor :date_closed

    attr_accessor :drop_ship_customer_flag

    attr_accessor :entered_by

    attr_accessor :freight_cost

    attr_accessor :freight_packing_slip

    attr_accessor :freight_tax_total

    attr_accessor :internal_notes

    attr_accessor :location_id

    attr_accessor :po_date

    attr_accessor :po_number

    attr_accessor :sales_tax

    attr_accessor :shipment_date

    attr_accessor :shipment_method

    attr_accessor :shipping_instructions

    attr_accessor :status

    attr_accessor :sub_total

    attr_accessor :tax_code

    attr_accessor :tax_freight_flag

    attr_accessor :tax_po_flag

    attr_accessor :terms

    attr_accessor :total

    attr_accessor :tracking_number

    # Determines whether or not to update all of the shipment info for each associated line item when new shipment info is passed in
    attr_accessor :update_shipment_info

    # Determines whether or not to update vendor order number for each associated line item when new vendor order number is passed in
    attr_accessor :update_vendor_order_number

    attr_accessor :vendor_company

    attr_accessor :vendor_contact

    attr_accessor :vendor_invoice_date

    attr_accessor :vendor_invoice_number

    attr_accessor :vendor_order_number

    attr_accessor :vendor_site

    attr_accessor :warehouse

    attr_accessor :currency


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'_info' => :'_info',
        :'business_unit_id' => :'businessUnitId',
        :'cancel_reason' => :'cancelReason',
        :'closed_flag' => :'closedFlag',
        :'customer_city' => :'customerCity',
        :'customer_company' => :'customerCompany',
        :'customer_contact' => :'customerContact',
        :'customer_country' => :'customerCountry',
        :'customer_extension' => :'customerExtension',
        :'customer_name' => :'customerName',
        :'customer_phone' => :'customerPhone',
        :'customer_site' => :'customerSite',
        :'customer_site_name' => :'customerSiteName',
        :'customer_state' => :'customerState',
        :'customer_street_line1' => :'customerStreetLine1',
        :'customer_street_line2' => :'customerStreetLine2',
        :'customer_zip' => :'customerZip',
        :'date_closed' => :'dateClosed',
        :'drop_ship_customer_flag' => :'dropShipCustomerFlag',
        :'entered_by' => :'enteredBy',
        :'freight_cost' => :'freightCost',
        :'freight_packing_slip' => :'freightPackingSlip',
        :'freight_tax_total' => :'freightTaxTotal',
        :'internal_notes' => :'internalNotes',
        :'location_id' => :'locationId',
        :'po_date' => :'poDate',
        :'po_number' => :'poNumber',
        :'sales_tax' => :'salesTax',
        :'shipment_date' => :'shipmentDate',
        :'shipment_method' => :'shipmentMethod',
        :'shipping_instructions' => :'shippingInstructions',
        :'status' => :'status',
        :'sub_total' => :'subTotal',
        :'tax_code' => :'taxCode',
        :'tax_freight_flag' => :'taxFreightFlag',
        :'tax_po_flag' => :'taxPoFlag',
        :'terms' => :'terms',
        :'total' => :'total',
        :'tracking_number' => :'trackingNumber',
        :'update_shipment_info' => :'updateShipmentInfo',
        :'update_vendor_order_number' => :'updateVendorOrderNumber',
        :'vendor_company' => :'vendorCompany',
        :'vendor_contact' => :'vendorContact',
        :'vendor_invoice_date' => :'vendorInvoiceDate',
        :'vendor_invoice_number' => :'vendorInvoiceNumber',
        :'vendor_order_number' => :'vendorOrderNumber',
        :'vendor_site' => :'vendorSite',
        :'warehouse' => :'warehouse',
        :'currency' => :'currency'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'_info' => :'Metadata',
        :'business_unit_id' => :'Integer',
        :'cancel_reason' => :'String',
        :'closed_flag' => :'BOOLEAN',
        :'customer_city' => :'String',
        :'customer_company' => :'CompanyReference',
        :'customer_contact' => :'ContactReference',
        :'customer_country' => :'CountryReference',
        :'customer_extension' => :'String',
        :'customer_name' => :'String',
        :'customer_phone' => :'String',
        :'customer_site' => :'SiteReference',
        :'customer_site_name' => :'String',
        :'customer_state' => :'String',
        :'customer_street_line1' => :'String',
        :'customer_street_line2' => :'String',
        :'customer_zip' => :'String',
        :'date_closed' => :'DateTime',
        :'drop_ship_customer_flag' => :'BOOLEAN',
        :'entered_by' => :'String',
        :'freight_cost' => :'Float',
        :'freight_packing_slip' => :'String',
        :'freight_tax_total' => :'Float',
        :'internal_notes' => :'String',
        :'location_id' => :'Integer',
        :'po_date' => :'DateTime',
        :'po_number' => :'String',
        :'sales_tax' => :'Float',
        :'shipment_date' => :'DateTime',
        :'shipment_method' => :'ShipmentMethodReference',
        :'shipping_instructions' => :'String',
        :'status' => :'PurchaseOrderStatusReference',
        :'sub_total' => :'Float',
        :'tax_code' => :'TaxCodeReference',
        :'tax_freight_flag' => :'BOOLEAN',
        :'tax_po_flag' => :'BOOLEAN',
        :'terms' => :'BillingTermsReference',
        :'total' => :'Float',
        :'tracking_number' => :'String',
        :'update_shipment_info' => :'BOOLEAN',
        :'update_vendor_order_number' => :'BOOLEAN',
        :'vendor_company' => :'CompanyReference',
        :'vendor_contact' => :'ContactReference',
        :'vendor_invoice_date' => :'DateTime',
        :'vendor_invoice_number' => :'String',
        :'vendor_order_number' => :'String',
        :'vendor_site' => :'SiteReference',
        :'warehouse' => :'WarehouseReference',
        :'currency' => :'CurrencyReference'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

      if attributes.has_key?(:'businessUnitId')
        self.business_unit_id = attributes[:'businessUnitId']
      end

      if attributes.has_key?(:'cancelReason')
        self.cancel_reason = attributes[:'cancelReason']
      end

      if attributes.has_key?(:'closedFlag')
        self.closed_flag = attributes[:'closedFlag']
      end

      if attributes.has_key?(:'customerCity')
        self.customer_city = attributes[:'customerCity']
      end

      if attributes.has_key?(:'customerCompany')
        self.customer_company = attributes[:'customerCompany']
      end

      if attributes.has_key?(:'customerContact')
        self.customer_contact = attributes[:'customerContact']
      end

      if attributes.has_key?(:'customerCountry')
        self.customer_country = attributes[:'customerCountry']
      end

      if attributes.has_key?(:'customerExtension')
        self.customer_extension = attributes[:'customerExtension']
      end

      if attributes.has_key?(:'customerName')
        self.customer_name = attributes[:'customerName']
      end

      if attributes.has_key?(:'customerPhone')
        self.customer_phone = attributes[:'customerPhone']
      end

      if attributes.has_key?(:'customerSite')
        self.customer_site = attributes[:'customerSite']
      end

      if attributes.has_key?(:'customerSiteName')
        self.customer_site_name = attributes[:'customerSiteName']
      end

      if attributes.has_key?(:'customerState')
        self.customer_state = attributes[:'customerState']
      end

      if attributes.has_key?(:'customerStreetLine1')
        self.customer_street_line1 = attributes[:'customerStreetLine1']
      end

      if attributes.has_key?(:'customerStreetLine2')
        self.customer_street_line2 = attributes[:'customerStreetLine2']
      end

      if attributes.has_key?(:'customerZip')
        self.customer_zip = attributes[:'customerZip']
      end

      if attributes.has_key?(:'dateClosed')
        self.date_closed = attributes[:'dateClosed']
      end

      if attributes.has_key?(:'dropShipCustomerFlag')
        self.drop_ship_customer_flag = attributes[:'dropShipCustomerFlag']
      end

      if attributes.has_key?(:'enteredBy')
        self.entered_by = attributes[:'enteredBy']
      end

      if attributes.has_key?(:'freightCost')
        self.freight_cost = attributes[:'freightCost']
      end

      if attributes.has_key?(:'freightPackingSlip')
        self.freight_packing_slip = attributes[:'freightPackingSlip']
      end

      if attributes.has_key?(:'freightTaxTotal')
        self.freight_tax_total = attributes[:'freightTaxTotal']
      end

      if attributes.has_key?(:'internalNotes')
        self.internal_notes = attributes[:'internalNotes']
      end

      if attributes.has_key?(:'locationId')
        self.location_id = attributes[:'locationId']
      end

      if attributes.has_key?(:'poDate')
        self.po_date = attributes[:'poDate']
      end

      if attributes.has_key?(:'poNumber')
        self.po_number = attributes[:'poNumber']
      end

      if attributes.has_key?(:'salesTax')
        self.sales_tax = attributes[:'salesTax']
      end

      if attributes.has_key?(:'shipmentDate')
        self.shipment_date = attributes[:'shipmentDate']
      end

      if attributes.has_key?(:'shipmentMethod')
        self.shipment_method = attributes[:'shipmentMethod']
      end

      if attributes.has_key?(:'shippingInstructions')
        self.shipping_instructions = attributes[:'shippingInstructions']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'subTotal')
        self.sub_total = attributes[:'subTotal']
      end

      if attributes.has_key?(:'taxCode')
        self.tax_code = attributes[:'taxCode']
      end

      if attributes.has_key?(:'taxFreightFlag')
        self.tax_freight_flag = attributes[:'taxFreightFlag']
      end

      if attributes.has_key?(:'taxPoFlag')
        self.tax_po_flag = attributes[:'taxPoFlag']
      end

      if attributes.has_key?(:'terms')
        self.terms = attributes[:'terms']
      end

      if attributes.has_key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.has_key?(:'trackingNumber')
        self.tracking_number = attributes[:'trackingNumber']
      end

      if attributes.has_key?(:'updateShipmentInfo')
        self.update_shipment_info = attributes[:'updateShipmentInfo']
      end

      if attributes.has_key?(:'updateVendorOrderNumber')
        self.update_vendor_order_number = attributes[:'updateVendorOrderNumber']
      end

      if attributes.has_key?(:'vendorCompany')
        self.vendor_company = attributes[:'vendorCompany']
      end

      if attributes.has_key?(:'vendorContact')
        self.vendor_contact = attributes[:'vendorContact']
      end

      if attributes.has_key?(:'vendorInvoiceDate')
        self.vendor_invoice_date = attributes[:'vendorInvoiceDate']
      end

      if attributes.has_key?(:'vendorInvoiceNumber')
        self.vendor_invoice_number = attributes[:'vendorInvoiceNumber']
      end

      if attributes.has_key?(:'vendorOrderNumber')
        self.vendor_order_number = attributes[:'vendorOrderNumber']
      end

      if attributes.has_key?(:'vendorSite')
        self.vendor_site = attributes[:'vendorSite']
      end

      if attributes.has_key?(:'warehouse')
        self.warehouse = attributes[:'warehouse']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @location_id.nil?
        invalid_properties.push("invalid value for 'location_id', location_id cannot be nil.")
      end

      if !@po_number.nil? && @po_number.to_s.length > 50
        invalid_properties.push("invalid value for 'po_number', the character length must be smaller than or equal to 50.")
      end

      if @status.nil?
        invalid_properties.push("invalid value for 'status', status cannot be nil.")
      end

      if @terms.nil?
        invalid_properties.push("invalid value for 'terms', terms cannot be nil.")
      end

      if !@tracking_number.nil? && @tracking_number.to_s.length > 50
        invalid_properties.push("invalid value for 'tracking_number', the character length must be smaller than or equal to 50.")
      end

      if @vendor_company.nil?
        invalid_properties.push("invalid value for 'vendor_company', vendor_company cannot be nil.")
      end

      if !@vendor_invoice_number.nil? && @vendor_invoice_number.to_s.length > 50
        invalid_properties.push("invalid value for 'vendor_invoice_number', the character length must be smaller than or equal to 50.")
      end

      if !@vendor_order_number.nil? && @vendor_order_number.to_s.length > 50
        invalid_properties.push("invalid value for 'vendor_order_number', the character length must be smaller than or equal to 50.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @location_id.nil?
      return false if !@po_number.nil? && @po_number.to_s.length > 50
      return false if @status.nil?
      return false if @terms.nil?
      return false if !@tracking_number.nil? && @tracking_number.to_s.length > 50
      return false if @vendor_company.nil?
      return false if !@vendor_invoice_number.nil? && @vendor_invoice_number.to_s.length > 50
      return false if !@vendor_order_number.nil? && @vendor_order_number.to_s.length > 50
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] po_number Value to be assigned
    def po_number=(po_number)

      if !po_number.nil? && po_number.to_s.length > 50
        fail ArgumentError, "invalid value for 'po_number', the character length must be smaller than or equal to 50."
      end

      @po_number = po_number
    end

    # Custom attribute writer method with validation
    # @param [Object] tracking_number Value to be assigned
    def tracking_number=(tracking_number)

      if !tracking_number.nil? && tracking_number.to_s.length > 50
        fail ArgumentError, "invalid value for 'tracking_number', the character length must be smaller than or equal to 50."
      end

      @tracking_number = tracking_number
    end

    # Custom attribute writer method with validation
    # @param [Object] vendor_invoice_number Value to be assigned
    def vendor_invoice_number=(vendor_invoice_number)

      if !vendor_invoice_number.nil? && vendor_invoice_number.to_s.length > 50
        fail ArgumentError, "invalid value for 'vendor_invoice_number', the character length must be smaller than or equal to 50."
      end

      @vendor_invoice_number = vendor_invoice_number
    end

    # Custom attribute writer method with validation
    # @param [Object] vendor_order_number Value to be assigned
    def vendor_order_number=(vendor_order_number)

      if !vendor_order_number.nil? && vendor_order_number.to_s.length > 50
        fail ArgumentError, "invalid value for 'vendor_order_number', the character length must be smaller than or equal to 50."
      end

      @vendor_order_number = vendor_order_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          _info == o._info &&
          business_unit_id == o.business_unit_id &&
          cancel_reason == o.cancel_reason &&
          closed_flag == o.closed_flag &&
          customer_city == o.customer_city &&
          customer_company == o.customer_company &&
          customer_contact == o.customer_contact &&
          customer_country == o.customer_country &&
          customer_extension == o.customer_extension &&
          customer_name == o.customer_name &&
          customer_phone == o.customer_phone &&
          customer_site == o.customer_site &&
          customer_site_name == o.customer_site_name &&
          customer_state == o.customer_state &&
          customer_street_line1 == o.customer_street_line1 &&
          customer_street_line2 == o.customer_street_line2 &&
          customer_zip == o.customer_zip &&
          date_closed == o.date_closed &&
          drop_ship_customer_flag == o.drop_ship_customer_flag &&
          entered_by == o.entered_by &&
          freight_cost == o.freight_cost &&
          freight_packing_slip == o.freight_packing_slip &&
          freight_tax_total == o.freight_tax_total &&
          internal_notes == o.internal_notes &&
          location_id == o.location_id &&
          po_date == o.po_date &&
          po_number == o.po_number &&
          sales_tax == o.sales_tax &&
          shipment_date == o.shipment_date &&
          shipment_method == o.shipment_method &&
          shipping_instructions == o.shipping_instructions &&
          status == o.status &&
          sub_total == o.sub_total &&
          tax_code == o.tax_code &&
          tax_freight_flag == o.tax_freight_flag &&
          tax_po_flag == o.tax_po_flag &&
          terms == o.terms &&
          total == o.total &&
          tracking_number == o.tracking_number &&
          update_shipment_info == o.update_shipment_info &&
          update_vendor_order_number == o.update_vendor_order_number &&
          vendor_company == o.vendor_company &&
          vendor_contact == o.vendor_contact &&
          vendor_invoice_date == o.vendor_invoice_date &&
          vendor_invoice_number == o.vendor_invoice_number &&
          vendor_order_number == o.vendor_order_number &&
          vendor_site == o.vendor_site &&
          warehouse == o.warehouse &&
          currency == o.currency
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, _info, business_unit_id, cancel_reason, closed_flag, customer_city, customer_company, customer_contact, customer_country, customer_extension, customer_name, customer_phone, customer_site, customer_site_name, customer_state, customer_street_line1, customer_street_line2, customer_zip, date_closed, drop_ship_customer_flag, entered_by, freight_cost, freight_packing_slip, freight_tax_total, internal_notes, location_id, po_date, po_number, sales_tax, shipment_date, shipment_method, shipping_instructions, status, sub_total, tax_code, tax_freight_flag, tax_po_flag, terms, total, tracking_number, update_shipment_info, update_vendor_order_number, vendor_company, vendor_contact, vendor_invoice_date, vendor_invoice_number, vendor_order_number, vendor_site, warehouse, currency].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = ConnectWise.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
