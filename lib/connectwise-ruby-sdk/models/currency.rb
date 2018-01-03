
require 'date'

module ConnectWise

  class Currency
    attr_accessor :id

    attr_accessor :currency_identifier

    attr_accessor :name

    attr_accessor :symbol

    attr_accessor :display_id_flag

    attr_accessor :display_symbol_flag

    attr_accessor :iso_code

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'currency_identifier' => :'currencyIdentifier',
        :'name' => :'name',
        :'symbol' => :'symbol',
        :'display_id_flag' => :'displayIdFlag',
        :'display_symbol_flag' => :'displaySymbolFlag',
        :'iso_code' => :'isoCode',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'currency_identifier' => :'String',
        :'name' => :'String',
        :'symbol' => :'String',
        :'display_id_flag' => :'BOOLEAN',
        :'display_symbol_flag' => :'BOOLEAN',
        :'iso_code' => :'String',
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

      if attributes.has_key?(:'currencyIdentifier')
        self.currency_identifier = attributes[:'currencyIdentifier']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'symbol')
        self.symbol = attributes[:'symbol']
      end

      if attributes.has_key?(:'displayIdFlag')
        self.display_id_flag = attributes[:'displayIdFlag']
      end

      if attributes.has_key?(:'displaySymbolFlag')
        self.display_symbol_flag = attributes[:'displaySymbolFlag']
      end

      if attributes.has_key?(:'isoCode')
        self.iso_code = attributes[:'isoCode']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @currency_identifier.nil?
        invalid_properties.push("invalid value for 'currency_identifier', currency_identifier cannot be nil.")
      end

      if @currency_identifier.to_s.length > 10
        invalid_properties.push("invalid value for 'currency_identifier', the character length must be smaller than or equal to 10.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @name.to_s.length > 50
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 50.")
      end

      if !@symbol.nil? && @symbol.to_s.length > 10
        invalid_properties.push("invalid value for 'symbol', the character length must be smaller than or equal to 10.")
      end

      if @iso_code.nil?
        invalid_properties.push("invalid value for 'iso_code', iso_code cannot be nil.")
      end

      if @iso_code.to_s.length > 3
        invalid_properties.push("invalid value for 'iso_code', the character length must be smaller than or equal to 3.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @currency_identifier.nil?
      return false if @currency_identifier.to_s.length > 10
      return false if @name.nil?
      return false if @name.to_s.length > 50
      return false if !@symbol.nil? && @symbol.to_s.length > 10
      return false if @iso_code.nil?
      return false if @iso_code.to_s.length > 3
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] currency_identifier Value to be assigned
    def currency_identifier=(currency_identifier)
      if currency_identifier.nil?
        fail ArgumentError, "currency_identifier cannot be nil"
      end

      if currency_identifier.to_s.length > 10
        fail ArgumentError, "invalid value for 'currency_identifier', the character length must be smaller than or equal to 10."
      end

      @currency_identifier = currency_identifier
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, "name cannot be nil"
      end

      if name.to_s.length > 50
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 50."
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] symbol Value to be assigned
    def symbol=(symbol)

      if !symbol.nil? && symbol.to_s.length > 10
        fail ArgumentError, "invalid value for 'symbol', the character length must be smaller than or equal to 10."
      end

      @symbol = symbol
    end

    # Custom attribute writer method with validation
    # @param [Object] iso_code Value to be assigned
    def iso_code=(iso_code)
      if iso_code.nil?
        fail ArgumentError, "iso_code cannot be nil"
      end

      if iso_code.to_s.length > 3
        fail ArgumentError, "invalid value for 'iso_code', the character length must be smaller than or equal to 3."
      end

      @iso_code = iso_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          currency_identifier == o.currency_identifier &&
          name == o.name &&
          symbol == o.symbol &&
          display_id_flag == o.display_id_flag &&
          display_symbol_flag == o.display_symbol_flag &&
          iso_code == o.iso_code &&
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
      [id, currency_identifier, name, symbol, display_id_flag, display_symbol_flag, iso_code, _info].hash
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
