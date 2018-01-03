
require 'date'

module ConnectWise

  class Contact
    attr_accessor :id

    attr_accessor :first_name

    attr_accessor :last_name

    attr_accessor :type

    attr_accessor :company

    attr_accessor :site

    attr_accessor :address_line1

    attr_accessor :address_line2

    attr_accessor :city

    attr_accessor :state

    attr_accessor :zip

    attr_accessor :country

    attr_accessor :relationship

    attr_accessor :department

    attr_accessor :inactive_flag

    attr_accessor :default_merge_contact_id

    attr_accessor :security_identifier

    attr_accessor :manager_contact_id

    attr_accessor :assistant_contact_id

    attr_accessor :title

    attr_accessor :school

    attr_accessor :nick_name

    attr_accessor :married_flag

    attr_accessor :children_flag

    attr_accessor :significant_other

    attr_accessor :portal_password

    attr_accessor :portal_security_level

    attr_accessor :disable_portal_login_flag

    attr_accessor :unsubscribe_flag

    attr_accessor :gender

    attr_accessor :birth_day

    attr_accessor :anniversary

    attr_accessor :presence

    attr_accessor :mobile_guid

    attr_accessor :facebook_url

    attr_accessor :twitter_url

    attr_accessor :linked_in_url

    attr_accessor :default_billing_flag

    attr_accessor :default_flag

    attr_accessor :communication_items

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
        :'first_name' => :'firstName',
        :'last_name' => :'lastName',
        :'type' => :'type',
        :'company' => :'company',
        :'site' => :'site',
        :'address_line1' => :'addressLine1',
        :'address_line2' => :'addressLine2',
        :'city' => :'city',
        :'state' => :'state',
        :'zip' => :'zip',
        :'country' => :'country',
        :'relationship' => :'relationship',
        :'department' => :'department',
        :'inactive_flag' => :'inactiveFlag',
        :'default_merge_contact_id' => :'defaultMergeContactId',
        :'security_identifier' => :'securityIdentifier',
        :'manager_contact_id' => :'managerContactId',
        :'assistant_contact_id' => :'assistantContactId',
        :'title' => :'title',
        :'school' => :'school',
        :'nick_name' => :'nickName',
        :'married_flag' => :'marriedFlag',
        :'children_flag' => :'childrenFlag',
        :'significant_other' => :'significantOther',
        :'portal_password' => :'portalPassword',
        :'portal_security_level' => :'portalSecurityLevel',
        :'disable_portal_login_flag' => :'disablePortalLoginFlag',
        :'unsubscribe_flag' => :'unsubscribeFlag',
        :'gender' => :'gender',
        :'birth_day' => :'birthDay',
        :'anniversary' => :'anniversary',
        :'presence' => :'presence',
        :'mobile_guid' => :'mobileGuid',
        :'facebook_url' => :'facebookUrl',
        :'twitter_url' => :'twitterUrl',
        :'linked_in_url' => :'linkedInUrl',
        :'default_billing_flag' => :'defaultBillingFlag',
        :'default_flag' => :'defaultFlag',
        :'communication_items' => :'communicationItems',
        :'_info' => :'_info',
        :'custom_fields' => :'customFields'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'type' => :'ContactTypeReference',
        :'company' => :'CompanyReference',
        :'site' => :'SiteReference',
        :'address_line1' => :'String',
        :'address_line2' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'zip' => :'String',
        :'country' => :'String',
        :'relationship' => :'RelationshipReference',
        :'department' => :'ContactDepartmentReference',
        :'inactive_flag' => :'BOOLEAN',
        :'default_merge_contact_id' => :'Integer',
        :'security_identifier' => :'String',
        :'manager_contact_id' => :'Integer',
        :'assistant_contact_id' => :'Integer',
        :'title' => :'String',
        :'school' => :'String',
        :'nick_name' => :'String',
        :'married_flag' => :'BOOLEAN',
        :'children_flag' => :'BOOLEAN',
        :'significant_other' => :'String',
        :'portal_password' => :'String',
        :'portal_security_level' => :'Integer',
        :'disable_portal_login_flag' => :'BOOLEAN',
        :'unsubscribe_flag' => :'BOOLEAN',
        :'gender' => :'String',
        :'birth_day' => :'DateTime',
        :'anniversary' => :'DateTime',
        :'presence' => :'String',
        :'mobile_guid' => :'Guid',
        :'facebook_url' => :'String',
        :'twitter_url' => :'String',
        :'linked_in_url' => :'String',
        :'default_billing_flag' => :'BOOLEAN',
        :'default_flag' => :'BOOLEAN',
        :'communication_items' => :'Array<ContactCommunicationItem>',
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

      if attributes.has_key?(:'firstName')
        self.first_name = attributes[:'firstName']
      end

      if attributes.has_key?(:'lastName')
        self.last_name = attributes[:'lastName']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'site')
        self.site = attributes[:'site']
      end

      if attributes.has_key?(:'addressLine1')
        self.address_line1 = attributes[:'addressLine1']
      end

      if attributes.has_key?(:'addressLine2')
        self.address_line2 = attributes[:'addressLine2']
      end

      if attributes.has_key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'zip')
        self.zip = attributes[:'zip']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'relationship')
        self.relationship = attributes[:'relationship']
      end

      if attributes.has_key?(:'department')
        self.department = attributes[:'department']
      end

      if attributes.has_key?(:'inactiveFlag')
        self.inactive_flag = attributes[:'inactiveFlag']
      end

      if attributes.has_key?(:'defaultMergeContactId')
        self.default_merge_contact_id = attributes[:'defaultMergeContactId']
      end

      if attributes.has_key?(:'securityIdentifier')
        self.security_identifier = attributes[:'securityIdentifier']
      end

      if attributes.has_key?(:'managerContactId')
        self.manager_contact_id = attributes[:'managerContactId']
      end

      if attributes.has_key?(:'assistantContactId')
        self.assistant_contact_id = attributes[:'assistantContactId']
      end

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.has_key?(:'school')
        self.school = attributes[:'school']
      end

      if attributes.has_key?(:'nickName')
        self.nick_name = attributes[:'nickName']
      end

      if attributes.has_key?(:'marriedFlag')
        self.married_flag = attributes[:'marriedFlag']
      end

      if attributes.has_key?(:'childrenFlag')
        self.children_flag = attributes[:'childrenFlag']
      end

      if attributes.has_key?(:'significantOther')
        self.significant_other = attributes[:'significantOther']
      end

      if attributes.has_key?(:'portalPassword')
        self.portal_password = attributes[:'portalPassword']
      end

      if attributes.has_key?(:'portalSecurityLevel')
        self.portal_security_level = attributes[:'portalSecurityLevel']
      end

      if attributes.has_key?(:'disablePortalLoginFlag')
        self.disable_portal_login_flag = attributes[:'disablePortalLoginFlag']
      end

      if attributes.has_key?(:'unsubscribeFlag')
        self.unsubscribe_flag = attributes[:'unsubscribeFlag']
      end

      if attributes.has_key?(:'gender')
        self.gender = attributes[:'gender']
      end

      if attributes.has_key?(:'birthDay')
        self.birth_day = attributes[:'birthDay']
      end

      if attributes.has_key?(:'anniversary')
        self.anniversary = attributes[:'anniversary']
      end

      if attributes.has_key?(:'presence')
        self.presence = attributes[:'presence']
      end

      if attributes.has_key?(:'mobileGuid')
        self.mobile_guid = attributes[:'mobileGuid']
      end

      if attributes.has_key?(:'facebookUrl')
        self.facebook_url = attributes[:'facebookUrl']
      end

      if attributes.has_key?(:'twitterUrl')
        self.twitter_url = attributes[:'twitterUrl']
      end

      if attributes.has_key?(:'linkedInUrl')
        self.linked_in_url = attributes[:'linkedInUrl']
      end

      if attributes.has_key?(:'defaultBillingFlag')
        self.default_billing_flag = attributes[:'defaultBillingFlag']
      end

      if attributes.has_key?(:'defaultFlag')
        self.default_flag = attributes[:'defaultFlag']
      end

      if attributes.has_key?(:'communicationItems')
        if (value = attributes[:'communicationItems']).is_a?(Array)
          self.communication_items = value
        end
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
      if @first_name.nil?
        invalid_properties.push("invalid value for 'first_name', first_name cannot be nil.")
      end

      if @first_name.to_s.length > 30
        invalid_properties.push("invalid value for 'first_name', the character length must be smaller than or equal to 30.")
      end

      if !@last_name.nil? && @last_name.to_s.length > 30
        invalid_properties.push("invalid value for 'last_name', the character length must be smaller than or equal to 30.")
      end

      if !@address_line1.nil? && @address_line1.to_s.length > 50
        invalid_properties.push("invalid value for 'address_line1', the character length must be smaller than or equal to 50.")
      end

      if !@address_line2.nil? && @address_line2.to_s.length > 50
        invalid_properties.push("invalid value for 'address_line2', the character length must be smaller than or equal to 50.")
      end

      if !@city.nil? && @city.to_s.length > 50
        invalid_properties.push("invalid value for 'city', the character length must be smaller than or equal to 50.")
      end

      if !@state.nil? && @state.to_s.length > 50
        invalid_properties.push("invalid value for 'state', the character length must be smaller than or equal to 50.")
      end

      if !@zip.nil? && @zip.to_s.length > 12
        invalid_properties.push("invalid value for 'zip', the character length must be smaller than or equal to 12.")
      end

      if !@country.nil? && @country.to_s.length > 50
        invalid_properties.push("invalid value for 'country', the character length must be smaller than or equal to 50.")
      end

      if !@security_identifier.nil? && @security_identifier.to_s.length > 184
        invalid_properties.push("invalid value for 'security_identifier', the character length must be smaller than or equal to 184.")
      end

      if !@title.nil? && @title.to_s.length > 100
        invalid_properties.push("invalid value for 'title', the character length must be smaller than or equal to 100.")
      end

      if !@school.nil? && @school.to_s.length > 50
        invalid_properties.push("invalid value for 'school', the character length must be smaller than or equal to 50.")
      end

      if !@nick_name.nil? && @nick_name.to_s.length > 30
        invalid_properties.push("invalid value for 'nick_name', the character length must be smaller than or equal to 30.")
      end

      if !@significant_other.nil? && @significant_other.to_s.length > 30
        invalid_properties.push("invalid value for 'significant_other', the character length must be smaller than or equal to 30.")
      end

      if !@portal_password.nil? && @portal_password.to_s.length > 15
        invalid_properties.push("invalid value for 'portal_password', the character length must be smaller than or equal to 15.")
      end

      if !@portal_security_level.nil? && @portal_security_level > 6
        invalid_properties.push("invalid value for 'portal_security_level', must be smaller than or equal to 6.")
      end

      if !@portal_security_level.nil? && @portal_security_level < 1
        invalid_properties.push("invalid value for 'portal_security_level', must be greater than or equal to 1.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @first_name.nil?
      return false if @first_name.to_s.length > 30
      return false if !@last_name.nil? && @last_name.to_s.length > 30
      return false if !@address_line1.nil? && @address_line1.to_s.length > 50
      return false if !@address_line2.nil? && @address_line2.to_s.length > 50
      return false if !@city.nil? && @city.to_s.length > 50
      return false if !@state.nil? && @state.to_s.length > 50
      return false if !@zip.nil? && @zip.to_s.length > 12
      return false if !@country.nil? && @country.to_s.length > 50
      return false if !@security_identifier.nil? && @security_identifier.to_s.length > 184
      return false if !@title.nil? && @title.to_s.length > 100
      return false if !@school.nil? && @school.to_s.length > 50
      return false if !@nick_name.nil? && @nick_name.to_s.length > 30
      return false if !@significant_other.nil? && @significant_other.to_s.length > 30
      return false if !@portal_password.nil? && @portal_password.to_s.length > 15
      return false if !@portal_security_level.nil? && @portal_security_level > 6
      return false if !@portal_security_level.nil? && @portal_security_level < 1
      gender_validator = EnumAttributeValidator.new('String', ["Male", "Female"])
      return false unless gender_validator.valid?(@gender)
      presence_validator = EnumAttributeValidator.new('String', ["Online", "DoNotDisturb", "Away", "Offline", "NoAgent"])
      return false unless presence_validator.valid?(@presence)
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      if first_name.nil?
        fail ArgumentError, "first_name cannot be nil"
      end

      if first_name.to_s.length > 30
        fail ArgumentError, "invalid value for 'first_name', the character length must be smaller than or equal to 30."
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)

      if !last_name.nil? && last_name.to_s.length > 30
        fail ArgumentError, "invalid value for 'last_name', the character length must be smaller than or equal to 30."
      end

      @last_name = last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] address_line1 Value to be assigned
    def address_line1=(address_line1)

      if !address_line1.nil? && address_line1.to_s.length > 50
        fail ArgumentError, "invalid value for 'address_line1', the character length must be smaller than or equal to 50."
      end

      @address_line1 = address_line1
    end

    # Custom attribute writer method with validation
    # @param [Object] address_line2 Value to be assigned
    def address_line2=(address_line2)

      if !address_line2.nil? && address_line2.to_s.length > 50
        fail ArgumentError, "invalid value for 'address_line2', the character length must be smaller than or equal to 50."
      end

      @address_line2 = address_line2
    end

    # Custom attribute writer method with validation
    # @param [Object] city Value to be assigned
    def city=(city)

      if !city.nil? && city.to_s.length > 50
        fail ArgumentError, "invalid value for 'city', the character length must be smaller than or equal to 50."
      end

      @city = city
    end

    # Custom attribute writer method with validation
    # @param [Object] state Value to be assigned
    def state=(state)

      if !state.nil? && state.to_s.length > 50
        fail ArgumentError, "invalid value for 'state', the character length must be smaller than or equal to 50."
      end

      @state = state
    end

    # Custom attribute writer method with validation
    # @param [Object] zip Value to be assigned
    def zip=(zip)

      if !zip.nil? && zip.to_s.length > 12
        fail ArgumentError, "invalid value for 'zip', the character length must be smaller than or equal to 12."
      end

      @zip = zip
    end

    # Custom attribute writer method with validation
    # @param [Object] country Value to be assigned
    def country=(country)

      if !country.nil? && country.to_s.length > 50
        fail ArgumentError, "invalid value for 'country', the character length must be smaller than or equal to 50."
      end

      @country = country
    end

    # Custom attribute writer method with validation
    # @param [Object] security_identifier Value to be assigned
    def security_identifier=(security_identifier)

      if !security_identifier.nil? && security_identifier.to_s.length > 184
        fail ArgumentError, "invalid value for 'security_identifier', the character length must be smaller than or equal to 184."
      end

      @security_identifier = security_identifier
    end

    # Custom attribute writer method with validation
    # @param [Object] title Value to be assigned
    def title=(title)

      if !title.nil? && title.to_s.length > 100
        fail ArgumentError, "invalid value for 'title', the character length must be smaller than or equal to 100."
      end

      @title = title
    end

    # Custom attribute writer method with validation
    # @param [Object] school Value to be assigned
    def school=(school)

      if !school.nil? && school.to_s.length > 50
        fail ArgumentError, "invalid value for 'school', the character length must be smaller than or equal to 50."
      end

      @school = school
    end

    # Custom attribute writer method with validation
    # @param [Object] nick_name Value to be assigned
    def nick_name=(nick_name)

      if !nick_name.nil? && nick_name.to_s.length > 30
        fail ArgumentError, "invalid value for 'nick_name', the character length must be smaller than or equal to 30."
      end

      @nick_name = nick_name
    end

    # Custom attribute writer method with validation
    # @param [Object] significant_other Value to be assigned
    def significant_other=(significant_other)

      if !significant_other.nil? && significant_other.to_s.length > 30
        fail ArgumentError, "invalid value for 'significant_other', the character length must be smaller than or equal to 30."
      end

      @significant_other = significant_other
    end

    # Custom attribute writer method with validation
    # @param [Object] portal_password Value to be assigned
    def portal_password=(portal_password)

      if !portal_password.nil? && portal_password.to_s.length > 15
        fail ArgumentError, "invalid value for 'portal_password', the character length must be smaller than or equal to 15."
      end

      @portal_password = portal_password
    end

    # Custom attribute writer method with validation
    # @param [Object] portal_security_level Value to be assigned
    def portal_security_level=(portal_security_level)

      if !portal_security_level.nil? && portal_security_level > 6
        fail ArgumentError, "invalid value for 'portal_security_level', must be smaller than or equal to 6."
      end

      if !portal_security_level.nil? && portal_security_level < 1
        fail ArgumentError, "invalid value for 'portal_security_level', must be greater than or equal to 1."
      end

      @portal_security_level = portal_security_level
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] gender Object to be assigned
    def gender=(gender)
      validator = EnumAttributeValidator.new('String', ["Male", "Female"])
      unless validator.valid?(gender)
        fail ArgumentError, "invalid value for 'gender', must be one of #{validator.allowable_values}."
      end
      @gender = gender
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] presence Object to be assigned
    def presence=(presence)
      validator = EnumAttributeValidator.new('String', ["Online", "DoNotDisturb", "Away", "Offline", "NoAgent"])
      unless validator.valid?(presence)
        fail ArgumentError, "invalid value for 'presence', must be one of #{validator.allowable_values}."
      end
      @presence = presence
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          type == o.type &&
          company == o.company &&
          site == o.site &&
          address_line1 == o.address_line1 &&
          address_line2 == o.address_line2 &&
          city == o.city &&
          state == o.state &&
          zip == o.zip &&
          country == o.country &&
          relationship == o.relationship &&
          department == o.department &&
          inactive_flag == o.inactive_flag &&
          default_merge_contact_id == o.default_merge_contact_id &&
          security_identifier == o.security_identifier &&
          manager_contact_id == o.manager_contact_id &&
          assistant_contact_id == o.assistant_contact_id &&
          title == o.title &&
          school == o.school &&
          nick_name == o.nick_name &&
          married_flag == o.married_flag &&
          children_flag == o.children_flag &&
          significant_other == o.significant_other &&
          portal_password == o.portal_password &&
          portal_security_level == o.portal_security_level &&
          disable_portal_login_flag == o.disable_portal_login_flag &&
          unsubscribe_flag == o.unsubscribe_flag &&
          gender == o.gender &&
          birth_day == o.birth_day &&
          anniversary == o.anniversary &&
          presence == o.presence &&
          mobile_guid == o.mobile_guid &&
          facebook_url == o.facebook_url &&
          twitter_url == o.twitter_url &&
          linked_in_url == o.linked_in_url &&
          default_billing_flag == o.default_billing_flag &&
          default_flag == o.default_flag &&
          communication_items == o.communication_items &&
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
      [id, first_name, last_name, type, company, site, address_line1, address_line2, city, state, zip, country, relationship, department, inactive_flag, default_merge_contact_id, security_identifier, manager_contact_id, assistant_contact_id, title, school, nick_name, married_flag, children_flag, significant_other, portal_password, portal_security_level, disable_portal_login_flag, unsubscribe_flag, gender, birth_day, anniversary, presence, mobile_guid, facebook_url, twitter_url, linked_in_url, default_billing_flag, default_flag, communication_items, _info, custom_fields].hash
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
