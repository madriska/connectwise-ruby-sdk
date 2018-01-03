
require 'date'

module ConnectWise

  class TimeEntry
    attr_accessor :id

    # If chargeToId is not specified, we asume you enter time against the company specified
    attr_accessor :company

    # If chargeToId is not specified, we asume you enter time against the company specified
    attr_accessor :charge_to_id

    # If chargeToId is not specified, we asume you enter time against the company specified
    attr_accessor :charge_to_type

    attr_accessor :member

    attr_accessor :location_id

    attr_accessor :business_unit_id

    attr_accessor :work_type

    attr_accessor :work_role

    attr_accessor :agreement

    attr_accessor :time_start

    attr_accessor :time_end

    attr_accessor :hours_deduct

    attr_accessor :actual_hours

    attr_accessor :billable_option

    attr_accessor :notes

    attr_accessor :internal_notes

    attr_accessor :add_to_detail_description_flag

    attr_accessor :add_to_internal_analysis_flag

    attr_accessor :add_to_resolution_flag

    # This is an action flag. To update this value use the /service/tickets endpoint automaticEmailResourceFlag field
    attr_accessor :email_resource_flag

    # This is an action flag. To update this value use the /service/tickets endpoint automaticEmailContactFlag field
    attr_accessor :email_contact_flag

    # This is an action flag. To update this value use the /service/tickets endpoint automaticEmailCcFlag field
    attr_accessor :email_cc_flag

    # To update this value use the /service/tickets endpoint automaticEmailCc field
    attr_accessor :email_cc

    attr_accessor :hours_billed

    attr_accessor :entered_by

    attr_accessor :date_entered

    attr_accessor :invoice

    attr_accessor :mobile_guid

    # This field may only be Updated, it is defaulted on Create
    attr_accessor :hourly_rate

    attr_accessor :time_sheet

    attr_accessor :status

    # Metadata of the entity
    attr_accessor :_info

    attr_accessor :custom_fields

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
        :'company' => :'company',
        :'charge_to_id' => :'chargeToId',
        :'charge_to_type' => :'chargeToType',
        :'member' => :'member',
        :'location_id' => :'locationId',
        :'business_unit_id' => :'businessUnitId',
        :'work_type' => :'workType',
        :'work_role' => :'workRole',
        :'agreement' => :'agreement',
        :'time_start' => :'timeStart',
        :'time_end' => :'timeEnd',
        :'hours_deduct' => :'hoursDeduct',
        :'actual_hours' => :'actualHours',
        :'billable_option' => :'billableOption',
        :'notes' => :'notes',
        :'internal_notes' => :'internalNotes',
        :'add_to_detail_description_flag' => :'addToDetailDescriptionFlag',
        :'add_to_internal_analysis_flag' => :'addToInternalAnalysisFlag',
        :'add_to_resolution_flag' => :'addToResolutionFlag',
        :'email_resource_flag' => :'emailResourceFlag',
        :'email_contact_flag' => :'emailContactFlag',
        :'email_cc_flag' => :'emailCcFlag',
        :'email_cc' => :'emailCc',
        :'hours_billed' => :'hoursBilled',
        :'entered_by' => :'enteredBy',
        :'date_entered' => :'dateEntered',
        :'invoice' => :'invoice',
        :'mobile_guid' => :'mobileGuid',
        :'hourly_rate' => :'hourlyRate',
        :'time_sheet' => :'timeSheet',
        :'status' => :'status',
        :'_info' => :'_info',
        :'custom_fields' => :'customFields'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'company' => :'CompanyReference',
        :'charge_to_id' => :'Integer',
        :'charge_to_type' => :'String',
        :'member' => :'MemberReference',
        :'location_id' => :'Integer',
        :'business_unit_id' => :'Integer',
        :'work_type' => :'WorkTypeReference',
        :'work_role' => :'WorkRoleReference',
        :'agreement' => :'AgreementReference',
        :'time_start' => :'DateTime',
        :'time_end' => :'DateTime',
        :'hours_deduct' => :'Float',
        :'actual_hours' => :'Float',
        :'billable_option' => :'String',
        :'notes' => :'String',
        :'internal_notes' => :'String',
        :'add_to_detail_description_flag' => :'BOOLEAN',
        :'add_to_internal_analysis_flag' => :'BOOLEAN',
        :'add_to_resolution_flag' => :'BOOLEAN',
        :'email_resource_flag' => :'BOOLEAN',
        :'email_contact_flag' => :'BOOLEAN',
        :'email_cc_flag' => :'BOOLEAN',
        :'email_cc' => :'String',
        :'hours_billed' => :'Float',
        :'entered_by' => :'String',
        :'date_entered' => :'DateTime',
        :'invoice' => :'InvoiceReference',
        :'mobile_guid' => :'Guid',
        :'hourly_rate' => :'Float',
        :'time_sheet' => :'TimeSheetReference',
        :'status' => :'String',
        :'_info' => :'Metadata',
        :'custom_fields' => :'Array<CustomFieldValue>'
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

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'chargeToId')
        self.charge_to_id = attributes[:'chargeToId']
      end

      if attributes.has_key?(:'chargeToType')
        self.charge_to_type = attributes[:'chargeToType']
      end

      if attributes.has_key?(:'member')
        self.member = attributes[:'member']
      end

      if attributes.has_key?(:'locationId')
        self.location_id = attributes[:'locationId']
      end

      if attributes.has_key?(:'businessUnitId')
        self.business_unit_id = attributes[:'businessUnitId']
      end

      if attributes.has_key?(:'workType')
        self.work_type = attributes[:'workType']
      end

      if attributes.has_key?(:'workRole')
        self.work_role = attributes[:'workRole']
      end

      if attributes.has_key?(:'agreement')
        self.agreement = attributes[:'agreement']
      end

      if attributes.has_key?(:'timeStart')
        self.time_start = attributes[:'timeStart']
      end

      if attributes.has_key?(:'timeEnd')
        self.time_end = attributes[:'timeEnd']
      end

      if attributes.has_key?(:'hoursDeduct')
        self.hours_deduct = attributes[:'hoursDeduct']
      end

      if attributes.has_key?(:'actualHours')
        self.actual_hours = attributes[:'actualHours']
      end

      if attributes.has_key?(:'billableOption')
        self.billable_option = attributes[:'billableOption']
      end

      if attributes.has_key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.has_key?(:'internalNotes')
        self.internal_notes = attributes[:'internalNotes']
      end

      if attributes.has_key?(:'addToDetailDescriptionFlag')
        self.add_to_detail_description_flag = attributes[:'addToDetailDescriptionFlag']
      end

      if attributes.has_key?(:'addToInternalAnalysisFlag')
        self.add_to_internal_analysis_flag = attributes[:'addToInternalAnalysisFlag']
      end

      if attributes.has_key?(:'addToResolutionFlag')
        self.add_to_resolution_flag = attributes[:'addToResolutionFlag']
      end

      if attributes.has_key?(:'emailResourceFlag')
        self.email_resource_flag = attributes[:'emailResourceFlag']
      end

      if attributes.has_key?(:'emailContactFlag')
        self.email_contact_flag = attributes[:'emailContactFlag']
      end

      if attributes.has_key?(:'emailCcFlag')
        self.email_cc_flag = attributes[:'emailCcFlag']
      end

      if attributes.has_key?(:'emailCc')
        self.email_cc = attributes[:'emailCc']
      end

      if attributes.has_key?(:'hoursBilled')
        self.hours_billed = attributes[:'hoursBilled']
      end

      if attributes.has_key?(:'enteredBy')
        self.entered_by = attributes[:'enteredBy']
      end

      if attributes.has_key?(:'dateEntered')
        self.date_entered = attributes[:'dateEntered']
      end

      if attributes.has_key?(:'invoice')
        self.invoice = attributes[:'invoice']
      end

      if attributes.has_key?(:'mobileGuid')
        self.mobile_guid = attributes[:'mobileGuid']
      end

      if attributes.has_key?(:'hourlyRate')
        self.hourly_rate = attributes[:'hourlyRate']
      end

      if attributes.has_key?(:'timeSheet')
        self.time_sheet = attributes[:'timeSheet']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

      if attributes.has_key?(:'customFields')
        if (value = attributes[:'customFields']).is_a?(Array)
          self.custom_fields = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @time_start.nil?
        invalid_properties.push("invalid value for 'time_start', time_start cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      charge_to_type_validator = EnumAttributeValidator.new('String', ["ServiceTicket", "ProjectTicket", "ChargeCode", "Activity"])
      return false unless charge_to_type_validator.valid?(@charge_to_type)
      return false if @time_start.nil?
      billable_option_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      return false unless billable_option_validator.valid?(@billable_option)
      status_validator = EnumAttributeValidator.new('String', ["Open", "Rejected", "PendingApproval", "ErrorsCorrected", "PendingProjectApproval", "ApprovedByTierOne", "RejectBySecondTier", "ApprovedByTierTwo", "ReadyToBill", "Billed", "WrittenOff", "BilledAgreement"])
      return false unless status_validator.valid?(@status)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] charge_to_type Object to be assigned
    def charge_to_type=(charge_to_type)
      validator = EnumAttributeValidator.new('String', ["ServiceTicket", "ProjectTicket", "ChargeCode", "Activity"])
      unless validator.valid?(charge_to_type)
        fail ArgumentError, "invalid value for 'charge_to_type', must be one of #{validator.allowable_values}."
      end
      @charge_to_type = charge_to_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billable_option Object to be assigned
    def billable_option=(billable_option)
      validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      unless validator.valid?(billable_option)
        fail ArgumentError, "invalid value for 'billable_option', must be one of #{validator.allowable_values}."
      end
      @billable_option = billable_option
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["Open", "Rejected", "PendingApproval", "ErrorsCorrected", "PendingProjectApproval", "ApprovedByTierOne", "RejectBySecondTier", "ApprovedByTierTwo", "ReadyToBill", "Billed", "WrittenOff", "BilledAgreement"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for 'status', must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          company == o.company &&
          charge_to_id == o.charge_to_id &&
          charge_to_type == o.charge_to_type &&
          member == o.member &&
          location_id == o.location_id &&
          business_unit_id == o.business_unit_id &&
          work_type == o.work_type &&
          work_role == o.work_role &&
          agreement == o.agreement &&
          time_start == o.time_start &&
          time_end == o.time_end &&
          hours_deduct == o.hours_deduct &&
          actual_hours == o.actual_hours &&
          billable_option == o.billable_option &&
          notes == o.notes &&
          internal_notes == o.internal_notes &&
          add_to_detail_description_flag == o.add_to_detail_description_flag &&
          add_to_internal_analysis_flag == o.add_to_internal_analysis_flag &&
          add_to_resolution_flag == o.add_to_resolution_flag &&
          email_resource_flag == o.email_resource_flag &&
          email_contact_flag == o.email_contact_flag &&
          email_cc_flag == o.email_cc_flag &&
          email_cc == o.email_cc &&
          hours_billed == o.hours_billed &&
          entered_by == o.entered_by &&
          date_entered == o.date_entered &&
          invoice == o.invoice &&
          mobile_guid == o.mobile_guid &&
          hourly_rate == o.hourly_rate &&
          time_sheet == o.time_sheet &&
          status == o.status &&
          _info == o._info &&
          custom_fields == o.custom_fields
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, company, charge_to_id, charge_to_type, member, location_id, business_unit_id, work_type, work_role, agreement, time_start, time_end, hours_deduct, actual_hours, billable_option, notes, internal_notes, add_to_detail_description_flag, add_to_internal_analysis_flag, add_to_resolution_flag, email_resource_flag, email_contact_flag, email_cc_flag, email_cc, hours_billed, entered_by, date_entered, invoice, mobile_guid, hourly_rate, time_sheet, status, _info, custom_fields].hash
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
