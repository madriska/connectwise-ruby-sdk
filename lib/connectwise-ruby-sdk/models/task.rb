
require 'date'

module ConnectWise

  class Task
    attr_accessor :id

    attr_accessor :ticket_id

    attr_accessor :notes

    attr_accessor :closed_flag

    attr_accessor :priority

    attr_accessor :schedule

    attr_accessor :code

    attr_accessor :resolution

    attr_accessor :child_schedule_action

    attr_accessor :child_ticket_id

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
        :'ticket_id' => :'ticketId',
        :'notes' => :'notes',
        :'closed_flag' => :'closedFlag',
        :'priority' => :'priority',
        :'schedule' => :'schedule',
        :'code' => :'code',
        :'resolution' => :'resolution',
        :'child_schedule_action' => :'childScheduleAction',
        :'child_ticket_id' => :'childTicketId',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'ticket_id' => :'Integer',
        :'notes' => :'String',
        :'closed_flag' => :'BOOLEAN',
        :'priority' => :'Integer',
        :'schedule' => :'ScheduleEntryReference',
        :'code' => :'ServiceCodeReference',
        :'resolution' => :'String',
        :'child_schedule_action' => :'String',
        :'child_ticket_id' => :'Integer',
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

      if attributes.has_key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.has_key?(:'closedFlag')
        self.closed_flag = attributes[:'closedFlag']
      end

      if attributes.has_key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.has_key?(:'schedule')
        self.schedule = attributes[:'schedule']
      end

      if attributes.has_key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.has_key?(:'resolution')
        self.resolution = attributes[:'resolution']
      end

      if attributes.has_key?(:'childScheduleAction')
        self.child_schedule_action = attributes[:'childScheduleAction']
      end

      if attributes.has_key?(:'childTicketId')
        self.child_ticket_id = attributes[:'childTicketId']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@priority.nil? && @priority > 2147483647
        invalid_properties.push("invalid value for 'priority', must be smaller than or equal to 2147483647.")
      end

      if !@priority.nil? && @priority < 1
        invalid_properties.push("invalid value for 'priority', must be greater than or equal to 1.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@priority.nil? && @priority > 2147483647
      return false if !@priority.nil? && @priority < 1
      child_schedule_action_validator = EnumAttributeValidator.new('String', ["Transfer", "Delete", "Done"])
      return false unless child_schedule_action_validator.valid?(@child_schedule_action)
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] priority Value to be assigned
    def priority=(priority)

      if !priority.nil? && priority > 2147483647
        fail ArgumentError, "invalid value for 'priority', must be smaller than or equal to 2147483647."
      end

      if !priority.nil? && priority < 1
        fail ArgumentError, "invalid value for 'priority', must be greater than or equal to 1."
      end

      @priority = priority
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] child_schedule_action Object to be assigned
    def child_schedule_action=(child_schedule_action)
      validator = EnumAttributeValidator.new('String', ["Transfer", "Delete", "Done"])
      unless validator.valid?(child_schedule_action)
        fail ArgumentError, "invalid value for 'child_schedule_action', must be one of #{validator.allowable_values}."
      end
      @child_schedule_action = child_schedule_action
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          ticket_id == o.ticket_id &&
          notes == o.notes &&
          closed_flag == o.closed_flag &&
          priority == o.priority &&
          schedule == o.schedule &&
          code == o.code &&
          resolution == o.resolution &&
          child_schedule_action == o.child_schedule_action &&
          child_ticket_id == o.child_ticket_id &&
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
      [id, ticket_id, notes, closed_flag, priority, schedule, code, resolution, child_schedule_action, child_ticket_id, _info].hash
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
