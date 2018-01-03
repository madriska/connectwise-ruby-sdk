
require 'date'

module ConnectWise

  class MenuEntry
    attr_accessor :id

    attr_accessor :menu_location

    attr_accessor :caption

    attr_accessor :link

    attr_accessor :new_window_flag

    attr_accessor :location_ids

    attr_accessor :origin

    attr_accessor :add_all_locations

    attr_accessor :remove_all_locations

    attr_accessor :small_menu_icon_id

    attr_accessor :large_menu_icon_id

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'menu_location' => :'menuLocation',
        :'caption' => :'caption',
        :'link' => :'link',
        :'new_window_flag' => :'newWindowFlag',
        :'location_ids' => :'locationIds',
        :'origin' => :'origin',
        :'add_all_locations' => :'addAllLocations',
        :'remove_all_locations' => :'removeAllLocations',
        :'small_menu_icon_id' => :'smallMenuIconId',
        :'large_menu_icon_id' => :'largeMenuIconId',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'menu_location' => :'MenuLocationReference',
        :'caption' => :'String',
        :'link' => :'String',
        :'new_window_flag' => :'BOOLEAN',
        :'location_ids' => :'Array<Integer>',
        :'origin' => :'String',
        :'add_all_locations' => :'BOOLEAN',
        :'remove_all_locations' => :'BOOLEAN',
        :'small_menu_icon_id' => :'Integer',
        :'large_menu_icon_id' => :'Integer',
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

      if attributes.has_key?(:'menuLocation')
        self.menu_location = attributes[:'menuLocation']
      end

      if attributes.has_key?(:'caption')
        self.caption = attributes[:'caption']
      end

      if attributes.has_key?(:'link')
        self.link = attributes[:'link']
      end

      if attributes.has_key?(:'newWindowFlag')
        self.new_window_flag = attributes[:'newWindowFlag']
      end

      if attributes.has_key?(:'locationIds')
        if (value = attributes[:'locationIds']).is_a?(Array)
          self.location_ids = value
        end
      end

      if attributes.has_key?(:'origin')
        self.origin = attributes[:'origin']
      end

      if attributes.has_key?(:'addAllLocations')
        self.add_all_locations = attributes[:'addAllLocations']
      end

      if attributes.has_key?(:'removeAllLocations')
        self.remove_all_locations = attributes[:'removeAllLocations']
      end

      if attributes.has_key?(:'smallMenuIconId')
        self.small_menu_icon_id = attributes[:'smallMenuIconId']
      end

      if attributes.has_key?(:'largeMenuIconId')
        self.large_menu_icon_id = attributes[:'largeMenuIconId']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @menu_location.nil?
        invalid_properties.push("invalid value for 'menu_location', menu_location cannot be nil.")
      end

      if @caption.nil?
        invalid_properties.push("invalid value for 'caption', caption cannot be nil.")
      end

      if @caption.to_s.length > 50
        invalid_properties.push("invalid value for 'caption', the character length must be smaller than or equal to 50.")
      end

      if @link.nil?
        invalid_properties.push("invalid value for 'link', link cannot be nil.")
      end

      if @link.to_s.length > 2000
        invalid_properties.push("invalid value for 'link', the character length must be smaller than or equal to 2000.")
      end

      if @new_window_flag.nil?
        invalid_properties.push("invalid value for 'new_window_flag', new_window_flag cannot be nil.")
      end

      if !@origin.nil? && @origin.to_s.length > 2000
        invalid_properties.push("invalid value for 'origin', the character length must be smaller than or equal to 2000.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @menu_location.nil?
      return false if @caption.nil?
      return false if @caption.to_s.length > 50
      return false if @link.nil?
      return false if @link.to_s.length > 2000
      return false if @new_window_flag.nil?
      return false if !@origin.nil? && @origin.to_s.length > 2000
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] caption Value to be assigned
    def caption=(caption)
      if caption.nil?
        fail ArgumentError, "caption cannot be nil"
      end

      if caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'caption', the character length must be smaller than or equal to 50."
      end

      @caption = caption
    end

    # Custom attribute writer method with validation
    # @param [Object] link Value to be assigned
    def link=(link)
      if link.nil?
        fail ArgumentError, "link cannot be nil"
      end

      if link.to_s.length > 2000
        fail ArgumentError, "invalid value for 'link', the character length must be smaller than or equal to 2000."
      end

      @link = link
    end

    # Custom attribute writer method with validation
    # @param [Object] origin Value to be assigned
    def origin=(origin)

      if !origin.nil? && origin.to_s.length > 2000
        fail ArgumentError, "invalid value for 'origin', the character length must be smaller than or equal to 2000."
      end

      @origin = origin
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          menu_location == o.menu_location &&
          caption == o.caption &&
          link == o.link &&
          new_window_flag == o.new_window_flag &&
          location_ids == o.location_ids &&
          origin == o.origin &&
          add_all_locations == o.add_all_locations &&
          remove_all_locations == o.remove_all_locations &&
          small_menu_icon_id == o.small_menu_icon_id &&
          large_menu_icon_id == o.large_menu_icon_id &&
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
      [id, menu_location, caption, link, new_window_flag, location_ids, origin, add_all_locations, remove_all_locations, small_menu_icon_id, large_menu_icon_id, _info].hash
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
