
require 'date'

module ConnectWise

  class PortalConfigurationInvoiceSetup
    attr_accessor :id

    attr_accessor :portal_configuration

    attr_accessor :display_inv_pmt_flag

    attr_accessor :allow_inv_pmt_flag

    attr_accessor :location

    attr_accessor :payment_processor

    attr_accessor :login

    attr_accessor :password

    attr_accessor :url_override

    attr_accessor :billing_status_ids

    attr_accessor :add_all_statuses

    attr_accessor :remove_all_statuses

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
        :'portal_configuration' => :'portalConfiguration',
        :'display_inv_pmt_flag' => :'displayInvPmtFlag',
        :'allow_inv_pmt_flag' => :'allowInvPmtFlag',
        :'location' => :'location',
        :'payment_processor' => :'paymentProcessor',
        :'login' => :'login',
        :'password' => :'password',
        :'url_override' => :'urlOverride',
        :'billing_status_ids' => :'billingStatusIds',
        :'add_all_statuses' => :'addAllStatuses',
        :'remove_all_statuses' => :'removeAllStatuses',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'portal_configuration' => :'PortalConfigurationReference',
        :'display_inv_pmt_flag' => :'BOOLEAN',
        :'allow_inv_pmt_flag' => :'BOOLEAN',
        :'location' => :'SystemLocationReference',
        :'payment_processor' => :'String',
        :'login' => :'String',
        :'password' => :'String',
        :'url_override' => :'String',
        :'billing_status_ids' => :'Array<Integer>',
        :'add_all_statuses' => :'BOOLEAN',
        :'remove_all_statuses' => :'BOOLEAN',
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

      if attributes.has_key?(:'portalConfiguration')
        self.portal_configuration = attributes[:'portalConfiguration']
      end

      if attributes.has_key?(:'displayInvPmtFlag')
        self.display_inv_pmt_flag = attributes[:'displayInvPmtFlag']
      end

      if attributes.has_key?(:'allowInvPmtFlag')
        self.allow_inv_pmt_flag = attributes[:'allowInvPmtFlag']
      end

      if attributes.has_key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.has_key?(:'paymentProcessor')
        self.payment_processor = attributes[:'paymentProcessor']
      end

      if attributes.has_key?(:'login')
        self.login = attributes[:'login']
      end

      if attributes.has_key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.has_key?(:'urlOverride')
        self.url_override = attributes[:'urlOverride']
      end

      if attributes.has_key?(:'billingStatusIds')
        if (value = attributes[:'billingStatusIds']).is_a?(Array)
          self.billing_status_ids = value
        end
      end

      if attributes.has_key?(:'addAllStatuses')
        self.add_all_statuses = attributes[:'addAllStatuses']
      end

      if attributes.has_key?(:'removeAllStatuses')
        self.remove_all_statuses = attributes[:'removeAllStatuses']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      payment_processor_validator = EnumAttributeValidator.new('String', ["AuthorizeNET", "PayPal"])
      return false unless payment_processor_validator.valid?(@payment_processor)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_processor Object to be assigned
    def payment_processor=(payment_processor)
      validator = EnumAttributeValidator.new('String', ["AuthorizeNET", "PayPal"])
      unless validator.valid?(payment_processor)
        fail ArgumentError, "invalid value for 'payment_processor', must be one of #{validator.allowable_values}."
      end
      @payment_processor = payment_processor
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          portal_configuration == o.portal_configuration &&
          display_inv_pmt_flag == o.display_inv_pmt_flag &&
          allow_inv_pmt_flag == o.allow_inv_pmt_flag &&
          location == o.location &&
          payment_processor == o.payment_processor &&
          login == o.login &&
          password == o.password &&
          url_override == o.url_override &&
          billing_status_ids == o.billing_status_ids &&
          add_all_statuses == o.add_all_statuses &&
          remove_all_statuses == o.remove_all_statuses &&
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
      [id, portal_configuration, display_inv_pmt_flag, allow_inv_pmt_flag, location, payment_processor, login, password, url_override, billing_status_ids, add_all_statuses, remove_all_statuses, _info].hash
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
