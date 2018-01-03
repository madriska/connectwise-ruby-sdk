
require 'date'

module ConnectWise

  class Forecast
    attr_accessor :id

    attr_accessor :name

    attr_accessor :revenue

    attr_accessor :cost

    attr_accessor :type

    attr_accessor :status

    attr_accessor :included_flag

    attr_accessor :recurring

    attr_accessor :percent

    attr_accessor :margin

    attr_accessor :opportunity_id

    attr_accessor :quote_number

    attr_accessor :quote_name

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
        :'name' => :'name',
        :'revenue' => :'revenue',
        :'cost' => :'cost',
        :'type' => :'type',
        :'status' => :'status',
        :'included_flag' => :'includedFlag',
        :'recurring' => :'recurring',
        :'percent' => :'percent',
        :'margin' => :'margin',
        :'opportunity_id' => :'opportunityId',
        :'quote_number' => :'QuoteNumber',
        :'quote_name' => :'QuoteName',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'revenue' => :'Float',
        :'cost' => :'Float',
        :'type' => :'String',
        :'status' => :'OpportunityStatusReference',
        :'included_flag' => :'BOOLEAN',
        :'recurring' => :'ProductRecurring',
        :'percent' => :'Float',
        :'margin' => :'Float',
        :'opportunity_id' => :'Integer',
        :'quote_number' => :'String',
        :'quote_name' => :'String',
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

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'revenue')
        self.revenue = attributes[:'revenue']
      end

      if attributes.has_key?(:'cost')
        self.cost = attributes[:'cost']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'includedFlag')
        self.included_flag = attributes[:'includedFlag']
      end

      if attributes.has_key?(:'recurring')
        self.recurring = attributes[:'recurring']
      end

      if attributes.has_key?(:'percent')
        self.percent = attributes[:'percent']
      end

      if attributes.has_key?(:'margin')
        self.margin = attributes[:'margin']
      end

      if attributes.has_key?(:'opportunityId')
        self.opportunity_id = attributes[:'opportunityId']
      end

      if attributes.has_key?(:'QuoteNumber')
        self.quote_number = attributes[:'QuoteNumber']
      end

      if attributes.has_key?(:'QuoteName')
        self.quote_name = attributes[:'QuoteName']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@name.nil? && @name.to_s.length > 50
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 50.")
      end

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if !@quote_number.nil? && @quote_number.to_s.length > 20
        invalid_properties.push("invalid value for 'quote_number', the character length must be smaller than or equal to 20.")
      end

      if !@quote_name.nil? && @quote_name.to_s.length > 255
        invalid_properties.push("invalid value for 'quote_name', the character length must be smaller than or equal to 255.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@name.nil? && @name.to_s.length > 50
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["Product", "Service", "Agreement", "Other1", "Other2"])
      return false unless type_validator.valid?(@type)
      return false if !@quote_number.nil? && @quote_number.to_s.length > 20
      return false if !@quote_name.nil? && @quote_name.to_s.length > 255
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)

      if !name.nil? && name.to_s.length > 50
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 50."
      end

      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["Product", "Service", "Agreement", "Other1", "Other2"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] quote_number Value to be assigned
    def quote_number=(quote_number)

      if !quote_number.nil? && quote_number.to_s.length > 20
        fail ArgumentError, "invalid value for 'quote_number', the character length must be smaller than or equal to 20."
      end

      @quote_number = quote_number
    end

    # Custom attribute writer method with validation
    # @param [Object] quote_name Value to be assigned
    def quote_name=(quote_name)

      if !quote_name.nil? && quote_name.to_s.length > 255
        fail ArgumentError, "invalid value for 'quote_name', the character length must be smaller than or equal to 255."
      end

      @quote_name = quote_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          revenue == o.revenue &&
          cost == o.cost &&
          type == o.type &&
          status == o.status &&
          included_flag == o.included_flag &&
          recurring == o.recurring &&
          percent == o.percent &&
          margin == o.margin &&
          opportunity_id == o.opportunity_id &&
          quote_number == o.quote_number &&
          quote_name == o.quote_name &&
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
      [id, name, revenue, cost, type, status, included_flag, recurring, percent, margin, opportunity_id, quote_number, quote_name, _info].hash
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
