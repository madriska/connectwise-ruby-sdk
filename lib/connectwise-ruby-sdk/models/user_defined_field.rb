
require 'date'

module ConnectWise

  class UserDefinedField
    # ID of the custom user defined field
    attr_accessor :id

    # Id of the Pod where the custom field will be placed
    attr_accessor :pod_id

    # Field caption
    attr_accessor :caption

    # Must be between 1 and 50.  This defines the order in which the custom fields will appear
    attr_accessor :sequence_number

    # Help text to accompany the custom field
    attr_accessor :help_text

    attr_accessor :field_type_identifier

    # Only valid for Number or percent
    attr_accessor :number_decimals

    attr_accessor :entry_type_identifier

    attr_accessor :required_flag

    attr_accessor :display_on_screen_flag

    attr_accessor :read_only_flag

    # Denotes that this custom field is included on a list view
    attr_accessor :list_view_flag

    # Only available with Button Field Type. Required when entryTypeIdentifier is button
    attr_accessor :button_url

    attr_accessor :options

    attr_accessor :business_unit_ids

    attr_accessor :location_ids

    attr_accessor :add_all_business_units

    attr_accessor :remove_all_business_units

    attr_accessor :add_all_locations

    attr_accessor :remove_all_locations

    # Date in UTC the custom field was created
    attr_accessor :date_created

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
        :'pod_id' => :'podId',
        :'caption' => :'caption',
        :'sequence_number' => :'sequenceNumber',
        :'help_text' => :'helpText',
        :'field_type_identifier' => :'fieldTypeIdentifier',
        :'number_decimals' => :'numberDecimals',
        :'entry_type_identifier' => :'entryTypeIdentifier',
        :'required_flag' => :'requiredFlag',
        :'display_on_screen_flag' => :'displayOnScreenFlag',
        :'read_only_flag' => :'readOnlyFlag',
        :'list_view_flag' => :'listViewFlag',
        :'button_url' => :'buttonUrl',
        :'options' => :'options',
        :'business_unit_ids' => :'businessUnitIds',
        :'location_ids' => :'locationIds',
        :'add_all_business_units' => :'addAllBusinessUnits',
        :'remove_all_business_units' => :'removeAllBusinessUnits',
        :'add_all_locations' => :'addAllLocations',
        :'remove_all_locations' => :'removeAllLocations',
        :'date_created' => :'dateCreated',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'pod_id' => :'Integer',
        :'caption' => :'String',
        :'sequence_number' => :'Integer',
        :'help_text' => :'String',
        :'field_type_identifier' => :'String',
        :'number_decimals' => :'Integer',
        :'entry_type_identifier' => :'String',
        :'required_flag' => :'BOOLEAN',
        :'display_on_screen_flag' => :'BOOLEAN',
        :'read_only_flag' => :'BOOLEAN',
        :'list_view_flag' => :'BOOLEAN',
        :'button_url' => :'String',
        :'options' => :'Array<UserDefinedFieldOption>',
        :'business_unit_ids' => :'Array<Integer>',
        :'location_ids' => :'Array<Integer>',
        :'add_all_business_units' => :'BOOLEAN',
        :'remove_all_business_units' => :'BOOLEAN',
        :'add_all_locations' => :'BOOLEAN',
        :'remove_all_locations' => :'BOOLEAN',
        :'date_created' => :'DateTime',
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

      if attributes.has_key?(:'podId')
        self.pod_id = attributes[:'podId']
      end

      if attributes.has_key?(:'caption')
        self.caption = attributes[:'caption']
      end

      if attributes.has_key?(:'sequenceNumber')
        self.sequence_number = attributes[:'sequenceNumber']
      end

      if attributes.has_key?(:'helpText')
        self.help_text = attributes[:'helpText']
      end

      if attributes.has_key?(:'fieldTypeIdentifier')
        self.field_type_identifier = attributes[:'fieldTypeIdentifier']
      end

      if attributes.has_key?(:'numberDecimals')
        self.number_decimals = attributes[:'numberDecimals']
      end

      if attributes.has_key?(:'entryTypeIdentifier')
        self.entry_type_identifier = attributes[:'entryTypeIdentifier']
      end

      if attributes.has_key?(:'requiredFlag')
        self.required_flag = attributes[:'requiredFlag']
      end

      if attributes.has_key?(:'displayOnScreenFlag')
        self.display_on_screen_flag = attributes[:'displayOnScreenFlag']
      end

      if attributes.has_key?(:'readOnlyFlag')
        self.read_only_flag = attributes[:'readOnlyFlag']
      end

      if attributes.has_key?(:'listViewFlag')
        self.list_view_flag = attributes[:'listViewFlag']
      end

      if attributes.has_key?(:'buttonUrl')
        self.button_url = attributes[:'buttonUrl']
      end

      if attributes.has_key?(:'options')
        if (value = attributes[:'options']).is_a?(Array)
          self.options = value
        end
      end

      if attributes.has_key?(:'businessUnitIds')
        if (value = attributes[:'businessUnitIds']).is_a?(Array)
          self.business_unit_ids = value
        end
      end

      if attributes.has_key?(:'locationIds')
        if (value = attributes[:'locationIds']).is_a?(Array)
          self.location_ids = value
        end
      end

      if attributes.has_key?(:'addAllBusinessUnits')
        self.add_all_business_units = attributes[:'addAllBusinessUnits']
      end

      if attributes.has_key?(:'removeAllBusinessUnits')
        self.remove_all_business_units = attributes[:'removeAllBusinessUnits']
      end

      if attributes.has_key?(:'addAllLocations')
        self.add_all_locations = attributes[:'addAllLocations']
      end

      if attributes.has_key?(:'removeAllLocations')
        self.remove_all_locations = attributes[:'removeAllLocations']
      end

      if attributes.has_key?(:'dateCreated')
        self.date_created = attributes[:'dateCreated']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @pod_id.nil?
        invalid_properties.push("invalid value for 'pod_id', pod_id cannot be nil.")
      end

      if @caption.nil?
        invalid_properties.push("invalid value for 'caption', caption cannot be nil.")
      end

      if @caption.to_s.length > 25
        invalid_properties.push("invalid value for 'caption', the character length must be smaller than or equal to 25.")
      end

      if @sequence_number.nil?
        invalid_properties.push("invalid value for 'sequence_number', sequence_number cannot be nil.")
      end

      if @sequence_number > 50
        invalid_properties.push("invalid value for 'sequence_number', must be smaller than or equal to 50.")
      end

      if @sequence_number < 1
        invalid_properties.push("invalid value for 'sequence_number', must be greater than or equal to 1.")
      end

      if !@help_text.nil? && @help_text.to_s.length > 1000
        invalid_properties.push("invalid value for 'help_text', the character length must be smaller than or equal to 1000.")
      end

      if @field_type_identifier.nil?
        invalid_properties.push("invalid value for 'field_type_identifier', field_type_identifier cannot be nil.")
      end

      if !@number_decimals.nil? && @number_decimals > 5
        invalid_properties.push("invalid value for 'number_decimals', must be smaller than or equal to 5.")
      end

      if !@number_decimals.nil? && @number_decimals < 0
        invalid_properties.push("invalid value for 'number_decimals', must be greater than or equal to 0.")
      end

      if !@button_url.nil? && @button_url.to_s.length > 1000
        invalid_properties.push("invalid value for 'button_url', the character length must be smaller than or equal to 1000.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @pod_id.nil?
      return false if @caption.nil?
      return false if @caption.to_s.length > 25
      return false if @sequence_number.nil?
      return false if @sequence_number > 50
      return false if @sequence_number < 1
      return false if !@help_text.nil? && @help_text.to_s.length > 1000
      return false if @field_type_identifier.nil?
      field_type_identifier_validator = EnumAttributeValidator.new('String', ["Button", "Checkbox", "Date", "Hyperlink", "Number", "Percent", "Text", "TextArea"])
      return false unless field_type_identifier_validator.valid?(@field_type_identifier)
      return false if !@number_decimals.nil? && @number_decimals > 5
      return false if !@number_decimals.nil? && @number_decimals < 0
      entry_type_identifier_validator = EnumAttributeValidator.new('String', ["EntryField", "List", "Option"])
      return false unless entry_type_identifier_validator.valid?(@entry_type_identifier)
      return false if !@button_url.nil? && @button_url.to_s.length > 1000
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] caption Value to be assigned
    def caption=(caption)
      if caption.nil?
        fail ArgumentError, "caption cannot be nil"
      end

      if caption.to_s.length > 25
        fail ArgumentError, "invalid value for 'caption', the character length must be smaller than or equal to 25."
      end

      @caption = caption
    end

    # Custom attribute writer method with validation
    # @param [Object] sequence_number Value to be assigned
    def sequence_number=(sequence_number)
      if sequence_number.nil?
        fail ArgumentError, "sequence_number cannot be nil"
      end

      if sequence_number > 50
        fail ArgumentError, "invalid value for 'sequence_number', must be smaller than or equal to 50."
      end

      if sequence_number < 1
        fail ArgumentError, "invalid value for 'sequence_number', must be greater than or equal to 1."
      end

      @sequence_number = sequence_number
    end

    # Custom attribute writer method with validation
    # @param [Object] help_text Value to be assigned
    def help_text=(help_text)

      if !help_text.nil? && help_text.to_s.length > 1000
        fail ArgumentError, "invalid value for 'help_text', the character length must be smaller than or equal to 1000."
      end

      @help_text = help_text
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] field_type_identifier Object to be assigned
    def field_type_identifier=(field_type_identifier)
      validator = EnumAttributeValidator.new('String', ["Button", "Checkbox", "Date", "Hyperlink", "Number", "Percent", "Text", "TextArea"])
      unless validator.valid?(field_type_identifier)
        fail ArgumentError, "invalid value for 'field_type_identifier', must be one of #{validator.allowable_values}."
      end
      @field_type_identifier = field_type_identifier
    end

    # Custom attribute writer method with validation
    # @param [Object] number_decimals Value to be assigned
    def number_decimals=(number_decimals)

      if !number_decimals.nil? && number_decimals > 5
        fail ArgumentError, "invalid value for 'number_decimals', must be smaller than or equal to 5."
      end

      if !number_decimals.nil? && number_decimals < 0
        fail ArgumentError, "invalid value for 'number_decimals', must be greater than or equal to 0."
      end

      @number_decimals = number_decimals
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] entry_type_identifier Object to be assigned
    def entry_type_identifier=(entry_type_identifier)
      validator = EnumAttributeValidator.new('String', ["EntryField", "List", "Option"])
      unless validator.valid?(entry_type_identifier)
        fail ArgumentError, "invalid value for 'entry_type_identifier', must be one of #{validator.allowable_values}."
      end
      @entry_type_identifier = entry_type_identifier
    end

    # Custom attribute writer method with validation
    # @param [Object] button_url Value to be assigned
    def button_url=(button_url)

      if !button_url.nil? && button_url.to_s.length > 1000
        fail ArgumentError, "invalid value for 'button_url', the character length must be smaller than or equal to 1000."
      end

      @button_url = button_url
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          pod_id == o.pod_id &&
          caption == o.caption &&
          sequence_number == o.sequence_number &&
          help_text == o.help_text &&
          field_type_identifier == o.field_type_identifier &&
          number_decimals == o.number_decimals &&
          entry_type_identifier == o.entry_type_identifier &&
          required_flag == o.required_flag &&
          display_on_screen_flag == o.display_on_screen_flag &&
          read_only_flag == o.read_only_flag &&
          list_view_flag == o.list_view_flag &&
          button_url == o.button_url &&
          options == o.options &&
          business_unit_ids == o.business_unit_ids &&
          location_ids == o.location_ids &&
          add_all_business_units == o.add_all_business_units &&
          remove_all_business_units == o.remove_all_business_units &&
          add_all_locations == o.add_all_locations &&
          remove_all_locations == o.remove_all_locations &&
          date_created == o.date_created &&
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
      [id, pod_id, caption, sequence_number, help_text, field_type_identifier, number_decimals, entry_type_identifier, required_flag, display_on_screen_flag, read_only_flag, list_view_flag, button_url, options, business_unit_ids, location_ids, add_all_business_units, remove_all_business_units, add_all_locations, remove_all_locations, date_created, _info].hash
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
