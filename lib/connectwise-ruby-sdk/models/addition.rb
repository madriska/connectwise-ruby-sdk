
require 'date'

module ConnectWise

  class Addition
    attr_accessor :id

    attr_accessor :product

    attr_accessor :quantity

    attr_accessor :less_included

    attr_accessor :unit_price

    attr_accessor :unit_cost

    attr_accessor :bill_customer

    attr_accessor :effective_date

    attr_accessor :cancelled_date

    attr_accessor :taxable_flag

    attr_accessor :serial_number

    attr_accessor :invoice_description

    attr_accessor :purchase_item_flag

    attr_accessor :special_order_flag

    attr_accessor :agreement_id

    attr_accessor :description

    attr_accessor :billed_quantity

    attr_accessor :uom

    attr_accessor :ext_price

    attr_accessor :ext_cost

    attr_accessor :sequence_number

    attr_accessor :margin

    attr_accessor :prorate_cost

    attr_accessor :prorate_price

    attr_accessor :extended_prorate_cost

    attr_accessor :extended_prorate_price

    attr_accessor :prorate_current_period_flag

    # Metadata of the entity
    attr_accessor :_info

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'product' => :'product',
        :'quantity' => :'quantity',
        :'less_included' => :'lessIncluded',
        :'unit_price' => :'unitPrice',
        :'unit_cost' => :'unitCost',
        :'bill_customer' => :'billCustomer',
        :'effective_date' => :'effectiveDate',
        :'cancelled_date' => :'cancelledDate',
        :'taxable_flag' => :'taxableFlag',
        :'serial_number' => :'serialNumber',
        :'invoice_description' => :'invoiceDescription',
        :'purchase_item_flag' => :'purchaseItemFlag',
        :'special_order_flag' => :'specialOrderFlag',
        :'agreement_id' => :'agreementId',
        :'description' => :'description',
        :'billed_quantity' => :'billedQuantity',
        :'uom' => :'uom',
        :'ext_price' => :'extPrice',
        :'ext_cost' => :'extCost',
        :'sequence_number' => :'sequenceNumber',
        :'margin' => :'margin',
        :'prorate_cost' => :'prorateCost',
        :'prorate_price' => :'proratePrice',
        :'extended_prorate_cost' => :'extendedProrateCost',
        :'extended_prorate_price' => :'extendedProratePrice',
        :'prorate_current_period_flag' => :'prorateCurrentPeriodFlag',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'product' => :'IvItemReference',
        :'quantity' => :'Float',
        :'less_included' => :'Float',
        :'unit_price' => :'Float',
        :'unit_cost' => :'Float',
        :'bill_customer' => :'String',
        :'effective_date' => :'DateTime',
        :'cancelled_date' => :'DateTime',
        :'taxable_flag' => :'BOOLEAN',
        :'serial_number' => :'String',
        :'invoice_description' => :'String',
        :'purchase_item_flag' => :'BOOLEAN',
        :'special_order_flag' => :'BOOLEAN',
        :'agreement_id' => :'Integer',
        :'description' => :'String',
        :'billed_quantity' => :'Float',
        :'uom' => :'String',
        :'ext_price' => :'Float',
        :'ext_cost' => :'Float',
        :'sequence_number' => :'Float',
        :'margin' => :'Float',
        :'prorate_cost' => :'Float',
        :'prorate_price' => :'Float',
        :'extended_prorate_cost' => :'Float',
        :'extended_prorate_price' => :'Float',
        :'prorate_current_period_flag' => :'BOOLEAN',
        :'_info' => :'Metadata'
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

      if attributes.has_key?(:'product')
        self.product = attributes[:'product']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'lessIncluded')
        self.less_included = attributes[:'lessIncluded']
      end

      if attributes.has_key?(:'unitPrice')
        self.unit_price = attributes[:'unitPrice']
      end

      if attributes.has_key?(:'unitCost')
        self.unit_cost = attributes[:'unitCost']
      end

      if attributes.has_key?(:'billCustomer')
        self.bill_customer = attributes[:'billCustomer']
      end

      if attributes.has_key?(:'effectiveDate')
        self.effective_date = attributes[:'effectiveDate']
      end

      if attributes.has_key?(:'cancelledDate')
        self.cancelled_date = attributes[:'cancelledDate']
      end

      if attributes.has_key?(:'taxableFlag')
        self.taxable_flag = attributes[:'taxableFlag']
      end

      if attributes.has_key?(:'serialNumber')
        self.serial_number = attributes[:'serialNumber']
      end

      if attributes.has_key?(:'invoiceDescription')
        self.invoice_description = attributes[:'invoiceDescription']
      end

      if attributes.has_key?(:'purchaseItemFlag')
        self.purchase_item_flag = attributes[:'purchaseItemFlag']
      end

      if attributes.has_key?(:'specialOrderFlag')
        self.special_order_flag = attributes[:'specialOrderFlag']
      end

      if attributes.has_key?(:'agreementId')
        self.agreement_id = attributes[:'agreementId']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'billedQuantity')
        self.billed_quantity = attributes[:'billedQuantity']
      end

      if attributes.has_key?(:'uom')
        self.uom = attributes[:'uom']
      end

      if attributes.has_key?(:'extPrice')
        self.ext_price = attributes[:'extPrice']
      end

      if attributes.has_key?(:'extCost')
        self.ext_cost = attributes[:'extCost']
      end

      if attributes.has_key?(:'sequenceNumber')
        self.sequence_number = attributes[:'sequenceNumber']
      end

      if attributes.has_key?(:'margin')
        self.margin = attributes[:'margin']
      end

      if attributes.has_key?(:'prorateCost')
        self.prorate_cost = attributes[:'prorateCost']
      end

      if attributes.has_key?(:'proratePrice')
        self.prorate_price = attributes[:'proratePrice']
      end

      if attributes.has_key?(:'extendedProrateCost')
        self.extended_prorate_cost = attributes[:'extendedProrateCost']
      end

      if attributes.has_key?(:'extendedProratePrice')
        self.extended_prorate_price = attributes[:'extendedProratePrice']
      end

      if attributes.has_key?(:'prorateCurrentPeriodFlag')
        self.prorate_current_period_flag = attributes[:'prorateCurrentPeriodFlag']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @product.nil?
        invalid_properties.push("invalid value for 'product', product cannot be nil.")
      end

      if @bill_customer.nil?
        invalid_properties.push("invalid value for 'bill_customer', bill_customer cannot be nil.")
      end

      if !@serial_number.nil? && @serial_number.to_s.length > 50
        invalid_properties.push("invalid value for 'serial_number', the character length must be smaller than or equal to 50.")
      end

      if !@invoice_description.nil? && @invoice_description.to_s.length > 6000
        invalid_properties.push("invalid value for 'invoice_description', the character length must be smaller than or equal to 6000.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @product.nil?
      return false if @bill_customer.nil?
      bill_customer_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge"])
      return false unless bill_customer_validator.valid?(@bill_customer)
      return false if !@serial_number.nil? && @serial_number.to_s.length > 50
      return false if !@invoice_description.nil? && @invoice_description.to_s.length > 6000
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bill_customer Object to be assigned
    def bill_customer=(bill_customer)
      validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge"])
      unless validator.valid?(bill_customer)
        fail ArgumentError, "invalid value for 'bill_customer', must be one of #{validator.allowable_values}."
      end
      @bill_customer = bill_customer
    end

    # Custom attribute writer method with validation
    # @param [Object] serial_number Value to be assigned
    def serial_number=(serial_number)

      if !serial_number.nil? && serial_number.to_s.length > 50
        fail ArgumentError, "invalid value for 'serial_number', the character length must be smaller than or equal to 50."
      end

      @serial_number = serial_number
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice_description Value to be assigned
    def invoice_description=(invoice_description)

      if !invoice_description.nil? && invoice_description.to_s.length > 6000
        fail ArgumentError, "invalid value for 'invoice_description', the character length must be smaller than or equal to 6000."
      end

      @invoice_description = invoice_description
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          product == o.product &&
          quantity == o.quantity &&
          less_included == o.less_included &&
          unit_price == o.unit_price &&
          unit_cost == o.unit_cost &&
          bill_customer == o.bill_customer &&
          effective_date == o.effective_date &&
          cancelled_date == o.cancelled_date &&
          taxable_flag == o.taxable_flag &&
          serial_number == o.serial_number &&
          invoice_description == o.invoice_description &&
          purchase_item_flag == o.purchase_item_flag &&
          special_order_flag == o.special_order_flag &&
          agreement_id == o.agreement_id &&
          description == o.description &&
          billed_quantity == o.billed_quantity &&
          uom == o.uom &&
          ext_price == o.ext_price &&
          ext_cost == o.ext_cost &&
          sequence_number == o.sequence_number &&
          margin == o.margin &&
          prorate_cost == o.prorate_cost &&
          prorate_price == o.prorate_price &&
          extended_prorate_cost == o.extended_prorate_cost &&
          extended_prorate_price == o.extended_prorate_price &&
          prorate_current_period_flag == o.prorate_current_period_flag &&
          _info == o._info
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, product, quantity, less_included, unit_price, unit_cost, bill_customer, effective_date, cancelled_date, taxable_flag, serial_number, invoice_description, purchase_item_flag, special_order_flag, agreement_id, description, billed_quantity, uom, ext_price, ext_cost, sequence_number, margin, prorate_cost, prorate_price, extended_prorate_cost, extended_prorate_price, prorate_current_period_flag, _info].hash
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
