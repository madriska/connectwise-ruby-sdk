
require 'date'

module ConnectWise

  class ServiceSurvey
    attr_accessor :id

    attr_accessor :name

    attr_accessor :inactive_flag

    attr_accessor :header_include_logo_flag

    attr_accessor :header_text

    attr_accessor :header_text_visible_flag

    attr_accessor :footer_text

    attr_accessor :footer_text_visible_flag

    attr_accessor :thank_you_text

    attr_accessor :notify_who

    attr_accessor :notify_who_visible_flag

    attr_accessor :notify_member

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'inactive_flag' => :'inactiveFlag',
        :'header_include_logo_flag' => :'headerIncludeLogoFlag',
        :'header_text' => :'headerText',
        :'header_text_visible_flag' => :'headerTextVisibleFlag',
        :'footer_text' => :'footerText',
        :'footer_text_visible_flag' => :'footerTextVisibleFlag',
        :'thank_you_text' => :'thankYouText',
        :'notify_who' => :'notifyWho',
        :'notify_who_visible_flag' => :'notifyWhoVisibleFlag',
        :'notify_member' => :'notifyMember',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'inactive_flag' => :'BOOLEAN',
        :'header_include_logo_flag' => :'BOOLEAN',
        :'header_text' => :'String',
        :'header_text_visible_flag' => :'BOOLEAN',
        :'footer_text' => :'String',
        :'footer_text_visible_flag' => :'BOOLEAN',
        :'thank_you_text' => :'String',
        :'notify_who' => :'GenericIdIdentifierReference',
        :'notify_who_visible_flag' => :'BOOLEAN',
        :'notify_member' => :'MemberReference',
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

      if attributes.has_key?(:'inactiveFlag')
        self.inactive_flag = attributes[:'inactiveFlag']
      end

      if attributes.has_key?(:'headerIncludeLogoFlag')
        self.header_include_logo_flag = attributes[:'headerIncludeLogoFlag']
      end

      if attributes.has_key?(:'headerText')
        self.header_text = attributes[:'headerText']
      end

      if attributes.has_key?(:'headerTextVisibleFlag')
        self.header_text_visible_flag = attributes[:'headerTextVisibleFlag']
      end

      if attributes.has_key?(:'footerText')
        self.footer_text = attributes[:'footerText']
      end

      if attributes.has_key?(:'footerTextVisibleFlag')
        self.footer_text_visible_flag = attributes[:'footerTextVisibleFlag']
      end

      if attributes.has_key?(:'thankYouText')
        self.thank_you_text = attributes[:'thankYouText']
      end

      if attributes.has_key?(:'notifyWho')
        self.notify_who = attributes[:'notifyWho']
      end

      if attributes.has_key?(:'notifyWhoVisibleFlag')
        self.notify_who_visible_flag = attributes[:'notifyWhoVisibleFlag']
      end

      if attributes.has_key?(:'notifyMember')
        self.notify_member = attributes[:'notifyMember']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @name.to_s.length > 50
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 50.")
      end

      if !@header_text.nil? && @header_text.to_s.length > 4000
        invalid_properties.push("invalid value for 'header_text', the character length must be smaller than or equal to 4000.")
      end

      if !@footer_text.nil? && @footer_text.to_s.length > 500
        invalid_properties.push("invalid value for 'footer_text', the character length must be smaller than or equal to 500.")
      end

      if !@thank_you_text.nil? && @thank_you_text.to_s.length > 4000
        invalid_properties.push("invalid value for 'thank_you_text', the character length must be smaller than or equal to 4000.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 50
      return false if !@header_text.nil? && @header_text.to_s.length > 4000
      return false if !@footer_text.nil? && @footer_text.to_s.length > 500
      return false if !@thank_you_text.nil? && @thank_you_text.to_s.length > 4000
      return true
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
    # @param [Object] header_text Value to be assigned
    def header_text=(header_text)

      if !header_text.nil? && header_text.to_s.length > 4000
        fail ArgumentError, "invalid value for 'header_text', the character length must be smaller than or equal to 4000."
      end

      @header_text = header_text
    end

    # Custom attribute writer method with validation
    # @param [Object] footer_text Value to be assigned
    def footer_text=(footer_text)

      if !footer_text.nil? && footer_text.to_s.length > 500
        fail ArgumentError, "invalid value for 'footer_text', the character length must be smaller than or equal to 500."
      end

      @footer_text = footer_text
    end

    # Custom attribute writer method with validation
    # @param [Object] thank_you_text Value to be assigned
    def thank_you_text=(thank_you_text)

      if !thank_you_text.nil? && thank_you_text.to_s.length > 4000
        fail ArgumentError, "invalid value for 'thank_you_text', the character length must be smaller than or equal to 4000."
      end

      @thank_you_text = thank_you_text
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          inactive_flag == o.inactive_flag &&
          header_include_logo_flag == o.header_include_logo_flag &&
          header_text == o.header_text &&
          header_text_visible_flag == o.header_text_visible_flag &&
          footer_text == o.footer_text &&
          footer_text_visible_flag == o.footer_text_visible_flag &&
          thank_you_text == o.thank_you_text &&
          notify_who == o.notify_who &&
          notify_who_visible_flag == o.notify_who_visible_flag &&
          notify_member == o.notify_member &&
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
      [id, name, inactive_flag, header_include_logo_flag, header_text, header_text_visible_flag, footer_text, footer_text_visible_flag, thank_you_text, notify_who, notify_who_visible_flag, notify_member, _info].hash
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
