
require 'date'

module ConnectWise

  class Campaign
    attr_accessor :id

    attr_accessor :name

    attr_accessor :type

    attr_accessor :sub_type

    attr_accessor :status

    attr_accessor :start_date

    attr_accessor :end_date

    attr_accessor :location_id

    attr_accessor :member

    attr_accessor :inactive

    attr_accessor :inactive_days_after_end

    attr_accessor :notes

    attr_accessor :default_group

    attr_accessor :marketing_manager_default_track_id

    attr_accessor :opportunity_default_track_id

    attr_accessor :impressions

    attr_accessor :budget_revenue

    attr_accessor :budget_cost

    attr_accessor :actual_cost

    attr_accessor :budget_gross_margin

    attr_accessor :budget_roi

    attr_accessor :actual_revenue

    attr_accessor :actual_gross_margin

    attr_accessor :actual_roi

    attr_accessor :emails_sent

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'type' => :'type',
        :'sub_type' => :'subType',
        :'status' => :'status',
        :'start_date' => :'startDate',
        :'end_date' => :'endDate',
        :'location_id' => :'locationId',
        :'member' => :'member',
        :'inactive' => :'inactive',
        :'inactive_days_after_end' => :'inactiveDaysAfterEnd',
        :'notes' => :'notes',
        :'default_group' => :'defaultGroup',
        :'marketing_manager_default_track_id' => :'marketingManagerDefaultTrackId',
        :'opportunity_default_track_id' => :'opportunityDefaultTrackId',
        :'impressions' => :'impressions',
        :'budget_revenue' => :'budgetRevenue',
        :'budget_cost' => :'budgetCost',
        :'actual_cost' => :'actualCost',
        :'budget_gross_margin' => :'budgetGrossMargin',
        :'budget_roi' => :'budgetROI',
        :'actual_revenue' => :'actualRevenue',
        :'actual_gross_margin' => :'actualGrossMargin',
        :'actual_roi' => :'actualROI',
        :'emails_sent' => :'emailsSent',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'type' => :'CampaignTypeReference',
        :'sub_type' => :'CampaignSubTypeReference',
        :'status' => :'CampaignStatusReference',
        :'start_date' => :'DateTime',
        :'end_date' => :'DateTime',
        :'location_id' => :'Integer',
        :'member' => :'MemberReference',
        :'inactive' => :'BOOLEAN',
        :'inactive_days_after_end' => :'Integer',
        :'notes' => :'String',
        :'default_group' => :'GroupReference',
        :'marketing_manager_default_track_id' => :'Integer',
        :'opportunity_default_track_id' => :'Integer',
        :'impressions' => :'Integer',
        :'budget_revenue' => :'Float',
        :'budget_cost' => :'Float',
        :'actual_cost' => :'Float',
        :'budget_gross_margin' => :'Float',
        :'budget_roi' => :'Float',
        :'actual_revenue' => :'Float',
        :'actual_gross_margin' => :'Float',
        :'actual_roi' => :'Float',
        :'emails_sent' => :'Integer',
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

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'subType')
        self.sub_type = attributes[:'subType']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'startDate')
        self.start_date = attributes[:'startDate']
      end

      if attributes.has_key?(:'endDate')
        self.end_date = attributes[:'endDate']
      end

      if attributes.has_key?(:'locationId')
        self.location_id = attributes[:'locationId']
      end

      if attributes.has_key?(:'member')
        self.member = attributes[:'member']
      end

      if attributes.has_key?(:'inactive')
        self.inactive = attributes[:'inactive']
      end

      if attributes.has_key?(:'inactiveDaysAfterEnd')
        self.inactive_days_after_end = attributes[:'inactiveDaysAfterEnd']
      end

      if attributes.has_key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.has_key?(:'defaultGroup')
        self.default_group = attributes[:'defaultGroup']
      end

      if attributes.has_key?(:'marketingManagerDefaultTrackId')
        self.marketing_manager_default_track_id = attributes[:'marketingManagerDefaultTrackId']
      end

      if attributes.has_key?(:'opportunityDefaultTrackId')
        self.opportunity_default_track_id = attributes[:'opportunityDefaultTrackId']
      end

      if attributes.has_key?(:'impressions')
        self.impressions = attributes[:'impressions']
      end

      if attributes.has_key?(:'budgetRevenue')
        self.budget_revenue = attributes[:'budgetRevenue']
      end

      if attributes.has_key?(:'budgetCost')
        self.budget_cost = attributes[:'budgetCost']
      end

      if attributes.has_key?(:'actualCost')
        self.actual_cost = attributes[:'actualCost']
      end

      if attributes.has_key?(:'budgetGrossMargin')
        self.budget_gross_margin = attributes[:'budgetGrossMargin']
      end

      if attributes.has_key?(:'budgetROI')
        self.budget_roi = attributes[:'budgetROI']
      end

      if attributes.has_key?(:'actualRevenue')
        self.actual_revenue = attributes[:'actualRevenue']
      end

      if attributes.has_key?(:'actualGrossMargin')
        self.actual_gross_margin = attributes[:'actualGrossMargin']
      end

      if attributes.has_key?(:'actualROI')
        self.actual_roi = attributes[:'actualROI']
      end

      if attributes.has_key?(:'emailsSent')
        self.emails_sent = attributes[:'emailsSent']
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

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if @sub_type.nil?
        invalid_properties.push("invalid value for 'sub_type', sub_type cannot be nil.")
      end

      if @start_date.nil?
        invalid_properties.push("invalid value for 'start_date', start_date cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 50
      return false if @type.nil?
      return false if @sub_type.nil?
      return false if @start_date.nil?
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          type == o.type &&
          sub_type == o.sub_type &&
          status == o.status &&
          start_date == o.start_date &&
          end_date == o.end_date &&
          location_id == o.location_id &&
          member == o.member &&
          inactive == o.inactive &&
          inactive_days_after_end == o.inactive_days_after_end &&
          notes == o.notes &&
          default_group == o.default_group &&
          marketing_manager_default_track_id == o.marketing_manager_default_track_id &&
          opportunity_default_track_id == o.opportunity_default_track_id &&
          impressions == o.impressions &&
          budget_revenue == o.budget_revenue &&
          budget_cost == o.budget_cost &&
          actual_cost == o.actual_cost &&
          budget_gross_margin == o.budget_gross_margin &&
          budget_roi == o.budget_roi &&
          actual_revenue == o.actual_revenue &&
          actual_gross_margin == o.actual_gross_margin &&
          actual_roi == o.actual_roi &&
          emails_sent == o.emails_sent &&
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
      [id, name, type, sub_type, status, start_date, end_date, location_id, member, inactive, inactive_days_after_end, notes, default_group, marketing_manager_default_track_id, opportunity_default_track_id, impressions, budget_revenue, budget_cost, actual_cost, budget_gross_margin, budget_roi, actual_revenue, actual_gross_margin, actual_roi, emails_sent, _info].hash
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
