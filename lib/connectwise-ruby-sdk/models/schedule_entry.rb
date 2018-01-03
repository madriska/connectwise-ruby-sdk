
require 'date'

module ConnectWise

  class ScheduleEntry
    attr_accessor :id

    attr_accessor :object_id

    attr_accessor :name

    # Activity schedule requires a member
    attr_accessor :member

    attr_accessor :where

    attr_accessor :date_start

    attr_accessor :date_end

    attr_accessor :reminder

    attr_accessor :status

    attr_accessor :type

    attr_accessor :span

    attr_accessor :done_flag

    attr_accessor :acknowledged_flag

    attr_accessor :owner_flag

    attr_accessor :allow_schedule_conflicts_flag

    attr_accessor :add_member_to_project_flag

    attr_accessor :project_role_id

    attr_accessor :mobile_guid

    attr_accessor :close_date

    attr_accessor :hours

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'object_id' => :'objectId',
        :'name' => :'name',
        :'member' => :'member',
        :'where' => :'where',
        :'date_start' => :'dateStart',
        :'date_end' => :'dateEnd',
        :'reminder' => :'reminder',
        :'status' => :'status',
        :'type' => :'type',
        :'span' => :'span',
        :'done_flag' => :'doneFlag',
        :'acknowledged_flag' => :'acknowledgedFlag',
        :'owner_flag' => :'ownerFlag',
        :'allow_schedule_conflicts_flag' => :'allowScheduleConflictsFlag',
        :'add_member_to_project_flag' => :'addMemberToProjectFlag',
        :'project_role_id' => :'projectRoleId',
        :'mobile_guid' => :'mobileGuid',
        :'close_date' => :'closeDate',
        :'hours' => :'hours',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'object_id' => :'Integer',
        :'name' => :'String',
        :'member' => :'MemberReference',
        :'where' => :'ServiceLocationReference',
        :'date_start' => :'DateTime',
        :'date_end' => :'DateTime',
        :'reminder' => :'ReminderReference',
        :'status' => :'ScheduleStatusReference',
        :'type' => :'ScheduleTypeReference',
        :'span' => :'ScheduleSpanReference',
        :'done_flag' => :'BOOLEAN',
        :'acknowledged_flag' => :'BOOLEAN',
        :'owner_flag' => :'BOOLEAN',
        :'allow_schedule_conflicts_flag' => :'BOOLEAN',
        :'add_member_to_project_flag' => :'BOOLEAN',
        :'project_role_id' => :'Integer',
        :'mobile_guid' => :'Guid',
        :'close_date' => :'DateTime',
        :'hours' => :'Float',
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

      if attributes.has_key?(:'objectId')
        self.object_id = attributes[:'objectId']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'member')
        self.member = attributes[:'member']
      end

      if attributes.has_key?(:'where')
        self.where = attributes[:'where']
      end

      if attributes.has_key?(:'dateStart')
        self.date_start = attributes[:'dateStart']
      end

      if attributes.has_key?(:'dateEnd')
        self.date_end = attributes[:'dateEnd']
      end

      if attributes.has_key?(:'reminder')
        self.reminder = attributes[:'reminder']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'span')
        self.span = attributes[:'span']
      end

      if attributes.has_key?(:'doneFlag')
        self.done_flag = attributes[:'doneFlag']
      end

      if attributes.has_key?(:'acknowledgedFlag')
        self.acknowledged_flag = attributes[:'acknowledgedFlag']
      end

      if attributes.has_key?(:'ownerFlag')
        self.owner_flag = attributes[:'ownerFlag']
      end

      if attributes.has_key?(:'allowScheduleConflictsFlag')
        self.allow_schedule_conflicts_flag = attributes[:'allowScheduleConflictsFlag']
      end

      if attributes.has_key?(:'addMemberToProjectFlag')
        self.add_member_to_project_flag = attributes[:'addMemberToProjectFlag']
      end

      if attributes.has_key?(:'projectRoleId')
        self.project_role_id = attributes[:'projectRoleId']
      end

      if attributes.has_key?(:'mobileGuid')
        self.mobile_guid = attributes[:'mobileGuid']
      end

      if attributes.has_key?(:'closeDate')
        self.close_date = attributes[:'closeDate']
      end

      if attributes.has_key?(:'hours')
        self.hours = attributes[:'hours']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@name.nil? && @name.to_s.length > 250
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 250.")
      end

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@name.nil? && @name.to_s.length > 250
      return false if @type.nil?
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)

      if !name.nil? && name.to_s.length > 250
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 250."
      end

      @name = name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          object_id == o.object_id &&
          name == o.name &&
          member == o.member &&
          where == o.where &&
          date_start == o.date_start &&
          date_end == o.date_end &&
          reminder == o.reminder &&
          status == o.status &&
          type == o.type &&
          span == o.span &&
          done_flag == o.done_flag &&
          acknowledged_flag == o.acknowledged_flag &&
          owner_flag == o.owner_flag &&
          allow_schedule_conflicts_flag == o.allow_schedule_conflicts_flag &&
          add_member_to_project_flag == o.add_member_to_project_flag &&
          project_role_id == o.project_role_id &&
          mobile_guid == o.mobile_guid &&
          close_date == o.close_date &&
          hours == o.hours &&
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
      [id, object_id, name, member, where, date_start, date_end, reminder, status, type, span, done_flag, acknowledged_flag, owner_flag, allow_schedule_conflicts_flag, add_member_to_project_flag, project_role_id, mobile_guid, close_date, hours, _info].hash
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
