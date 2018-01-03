
require 'date'

module ConnectWise

  class ServiceNote
    attr_accessor :id

    attr_accessor :ticket_id

    attr_accessor :text

    attr_accessor :detail_description_flag

    attr_accessor :internal_analysis_flag

    attr_accessor :resolution_flag

    attr_accessor :member

    attr_accessor :contact

    attr_accessor :customer_updated_flag

    attr_accessor :process_notifications

    attr_accessor :date_created

    attr_accessor :created_by

    attr_accessor :internal_flag

    attr_accessor :external_flag

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'ticket_id' => :'ticketId',
        :'text' => :'text',
        :'detail_description_flag' => :'detailDescriptionFlag',
        :'internal_analysis_flag' => :'internalAnalysisFlag',
        :'resolution_flag' => :'resolutionFlag',
        :'member' => :'member',
        :'contact' => :'contact',
        :'customer_updated_flag' => :'customerUpdatedFlag',
        :'process_notifications' => :'processNotifications',
        :'date_created' => :'dateCreated',
        :'created_by' => :'createdBy',
        :'internal_flag' => :'internalFlag',
        :'external_flag' => :'externalFlag',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'ticket_id' => :'Integer',
        :'text' => :'String',
        :'detail_description_flag' => :'BOOLEAN',
        :'internal_analysis_flag' => :'BOOLEAN',
        :'resolution_flag' => :'BOOLEAN',
        :'member' => :'MemberReference',
        :'contact' => :'ContactReference',
        :'customer_updated_flag' => :'BOOLEAN',
        :'process_notifications' => :'BOOLEAN',
        :'date_created' => :'String',
        :'created_by' => :'String',
        :'internal_flag' => :'BOOLEAN',
        :'external_flag' => :'BOOLEAN',
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

      if attributes.has_key?(:'ticketId')
        self.ticket_id = attributes[:'ticketId']
      end

      if attributes.has_key?(:'text')
        self.text = attributes[:'text']
      end

      if attributes.has_key?(:'detailDescriptionFlag')
        self.detail_description_flag = attributes[:'detailDescriptionFlag']
      end

      if attributes.has_key?(:'internalAnalysisFlag')
        self.internal_analysis_flag = attributes[:'internalAnalysisFlag']
      end

      if attributes.has_key?(:'resolutionFlag')
        self.resolution_flag = attributes[:'resolutionFlag']
      end

      if attributes.has_key?(:'member')
        self.member = attributes[:'member']
      end

      if attributes.has_key?(:'contact')
        self.contact = attributes[:'contact']
      end

      if attributes.has_key?(:'customerUpdatedFlag')
        self.customer_updated_flag = attributes[:'customerUpdatedFlag']
      end

      if attributes.has_key?(:'processNotifications')
        self.process_notifications = attributes[:'processNotifications']
      end

      if attributes.has_key?(:'dateCreated')
        self.date_created = attributes[:'dateCreated']
      end

      if attributes.has_key?(:'createdBy')
        self.created_by = attributes[:'createdBy']
      end

      if attributes.has_key?(:'internalFlag')
        self.internal_flag = attributes[:'internalFlag']
      end

      if attributes.has_key?(:'externalFlag')
        self.external_flag = attributes[:'externalFlag']
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
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          ticket_id == o.ticket_id &&
          text == o.text &&
          detail_description_flag == o.detail_description_flag &&
          internal_analysis_flag == o.internal_analysis_flag &&
          resolution_flag == o.resolution_flag &&
          member == o.member &&
          contact == o.contact &&
          customer_updated_flag == o.customer_updated_flag &&
          process_notifications == o.process_notifications &&
          date_created == o.date_created &&
          created_by == o.created_by &&
          internal_flag == o.internal_flag &&
          external_flag == o.external_flag &&
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
      [id, ticket_id, text, detail_description_flag, internal_analysis_flag, resolution_flag, member, contact, customer_updated_flag, process_notifications, date_created, created_by, internal_flag, external_flag, _info].hash
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
