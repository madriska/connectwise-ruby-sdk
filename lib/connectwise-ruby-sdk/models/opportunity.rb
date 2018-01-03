
require 'date'

module ConnectWise
  # A list of the member's currently assigned Opportunities
  class Opportunity
    attr_accessor :id

    attr_accessor :name

    attr_accessor :expected_close_date

    attr_accessor :type

    attr_accessor :stage

    attr_accessor :status

    attr_accessor :priority

    attr_accessor :notes

    attr_accessor :probability

    attr_accessor :source

    attr_accessor :rating

    attr_accessor :campaign

    attr_accessor :primary_sales_rep

    attr_accessor :secondary_sales_rep

    attr_accessor :location_id

    attr_accessor :business_unit_id

    attr_accessor :company

    attr_accessor :contact

    attr_accessor :site

    attr_accessor :customer_po

    attr_accessor :pipeline_change_date

    attr_accessor :date_became_lead

    attr_accessor :closed_date

    attr_accessor :closed_by

    attr_accessor :total_sales_tax

    attr_accessor :ship_to_company

    attr_accessor :ship_to_contact

    attr_accessor :ship_to_site

    attr_accessor :bill_to_company

    attr_accessor :bill_to_contact

    attr_accessor :bill_to_site

    attr_accessor :billing_terms

    attr_accessor :tax_code

    attr_accessor :currency

    # Metadata of the entity
    attr_accessor :_info

    attr_accessor :custom_fields

    attr_accessor :count

    attr_accessor :re_assign_to_member


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'expected_close_date' => :'expectedCloseDate',
        :'type' => :'type',
        :'stage' => :'stage',
        :'status' => :'status',
        :'priority' => :'priority',
        :'notes' => :'notes',
        :'probability' => :'probability',
        :'source' => :'source',
        :'rating' => :'rating',
        :'campaign' => :'campaign',
        :'primary_sales_rep' => :'primarySalesRep',
        :'secondary_sales_rep' => :'secondarySalesRep',
        :'location_id' => :'locationId',
        :'business_unit_id' => :'businessUnitId',
        :'company' => :'company',
        :'contact' => :'contact',
        :'site' => :'site',
        :'customer_po' => :'customerPO',
        :'pipeline_change_date' => :'pipelineChangeDate',
        :'date_became_lead' => :'dateBecameLead',
        :'closed_date' => :'closedDate',
        :'closed_by' => :'closedBy',
        :'total_sales_tax' => :'totalSalesTax',
        :'ship_to_company' => :'shipToCompany',
        :'ship_to_contact' => :'shipToContact',
        :'ship_to_site' => :'shipToSite',
        :'bill_to_company' => :'billToCompany',
        :'bill_to_contact' => :'billToContact',
        :'bill_to_site' => :'billToSite',
        :'billing_terms' => :'billingTerms',
        :'tax_code' => :'taxCode',
        :'currency' => :'currency',
        :'_info' => :'_info',
        :'custom_fields' => :'customFields',
        :'count' => :'count',
        :'re_assign_to_member' => :'reAssignToMember'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'expected_close_date' => :'DateTime',
        :'type' => :'OpportunityTypeReference',
        :'stage' => :'OpportunityStageReference',
        :'status' => :'OpportunityStatusReference',
        :'priority' => :'OpportunityPriorityReference',
        :'notes' => :'String',
        :'probability' => :'OpportunityProbabilityReference',
        :'source' => :'String',
        :'rating' => :'OpportunityRatingReference',
        :'campaign' => :'CampaignReference',
        :'primary_sales_rep' => :'MemberReference',
        :'secondary_sales_rep' => :'MemberReference',
        :'location_id' => :'Integer',
        :'business_unit_id' => :'Integer',
        :'company' => :'CompanyReference',
        :'contact' => :'ContactReference',
        :'site' => :'SiteReference',
        :'customer_po' => :'String',
        :'pipeline_change_date' => :'DateTime',
        :'date_became_lead' => :'DateTime',
        :'closed_date' => :'DateTime',
        :'closed_by' => :'MemberReference',
        :'total_sales_tax' => :'Float',
        :'ship_to_company' => :'CompanyReference',
        :'ship_to_contact' => :'ContactReference',
        :'ship_to_site' => :'SiteReference',
        :'bill_to_company' => :'CompanyReference',
        :'bill_to_contact' => :'ContactReference',
        :'bill_to_site' => :'SiteReference',
        :'billing_terms' => :'BillingTermsReference',
        :'tax_code' => :'TaxCodeReference',
        :'currency' => :'CurrencyReference',
        :'_info' => :'Metadata',
        :'custom_fields' => :'Array<CustomFieldValue>',
        :'count' => :'Integer',
        :'re_assign_to_member' => :'MemberReference'
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

      if attributes.has_key?(:'expectedCloseDate')
        self.expected_close_date = attributes[:'expectedCloseDate']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'stage')
        self.stage = attributes[:'stage']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.has_key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.has_key?(:'probability')
        self.probability = attributes[:'probability']
      end

      if attributes.has_key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.has_key?(:'rating')
        self.rating = attributes[:'rating']
      end

      if attributes.has_key?(:'campaign')
        self.campaign = attributes[:'campaign']
      end

      if attributes.has_key?(:'primarySalesRep')
        self.primary_sales_rep = attributes[:'primarySalesRep']
      end

      if attributes.has_key?(:'secondarySalesRep')
        self.secondary_sales_rep = attributes[:'secondarySalesRep']
      end

      if attributes.has_key?(:'locationId')
        self.location_id = attributes[:'locationId']
      end

      if attributes.has_key?(:'businessUnitId')
        self.business_unit_id = attributes[:'businessUnitId']
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'contact')
        self.contact = attributes[:'contact']
      end

      if attributes.has_key?(:'site')
        self.site = attributes[:'site']
      end

      if attributes.has_key?(:'customerPO')
        self.customer_po = attributes[:'customerPO']
      end

      if attributes.has_key?(:'pipelineChangeDate')
        self.pipeline_change_date = attributes[:'pipelineChangeDate']
      end

      if attributes.has_key?(:'dateBecameLead')
        self.date_became_lead = attributes[:'dateBecameLead']
      end

      if attributes.has_key?(:'closedDate')
        self.closed_date = attributes[:'closedDate']
      end

      if attributes.has_key?(:'closedBy')
        self.closed_by = attributes[:'closedBy']
      end

      if attributes.has_key?(:'totalSalesTax')
        self.total_sales_tax = attributes[:'totalSalesTax']
      end

      if attributes.has_key?(:'shipToCompany')
        self.ship_to_company = attributes[:'shipToCompany']
      end

      if attributes.has_key?(:'shipToContact')
        self.ship_to_contact = attributes[:'shipToContact']
      end

      if attributes.has_key?(:'shipToSite')
        self.ship_to_site = attributes[:'shipToSite']
      end

      if attributes.has_key?(:'billToCompany')
        self.bill_to_company = attributes[:'billToCompany']
      end

      if attributes.has_key?(:'billToContact')
        self.bill_to_contact = attributes[:'billToContact']
      end

      if attributes.has_key?(:'billToSite')
        self.bill_to_site = attributes[:'billToSite']
      end

      if attributes.has_key?(:'billingTerms')
        self.billing_terms = attributes[:'billingTerms']
      end

      if attributes.has_key?(:'taxCode')
        self.tax_code = attributes[:'taxCode']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

      if attributes.has_key?(:'customFields')
        if (value = attributes[:'customFields']).is_a?(Array)
          self.custom_fields = value
        end
      end

      if attributes.has_key?(:'count')
        self.count = attributes[:'count']
      end

      if attributes.has_key?(:'reAssignToMember')
        self.re_assign_to_member = attributes[:'reAssignToMember']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @name.to_s.length > 100
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 100.")
      end

      if !@source.nil? && @source.to_s.length > 50
        invalid_properties.push("invalid value for 'source', the character length must be smaller than or equal to 50.")
      end

      if @primary_sales_rep.nil?
        invalid_properties.push("invalid value for 'primary_sales_rep', primary_sales_rep cannot be nil.")
      end

      if @company.nil?
        invalid_properties.push("invalid value for 'company', company cannot be nil.")
      end

      if @contact.nil?
        invalid_properties.push("invalid value for 'contact', contact cannot be nil.")
      end

      if @site.nil?
        invalid_properties.push("invalid value for 'site', site cannot be nil.")
      end

      if !@customer_po.nil? && @customer_po.to_s.length > 25
        invalid_properties.push("invalid value for 'customer_po', the character length must be smaller than or equal to 25.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 100
      return false if !@source.nil? && @source.to_s.length > 50
      return false if @primary_sales_rep.nil?
      return false if @company.nil?
      return false if @contact.nil?
      return false if @site.nil?
      return false if !@customer_po.nil? && @customer_po.to_s.length > 25
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, "name cannot be nil"
      end

      if name.to_s.length > 100
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 100."
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] source Value to be assigned
    def source=(source)

      if !source.nil? && source.to_s.length > 50
        fail ArgumentError, "invalid value for 'source', the character length must be smaller than or equal to 50."
      end

      @source = source
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_po Value to be assigned
    def customer_po=(customer_po)

      if !customer_po.nil? && customer_po.to_s.length > 25
        fail ArgumentError, "invalid value for 'customer_po', the character length must be smaller than or equal to 25."
      end

      @customer_po = customer_po
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          expected_close_date == o.expected_close_date &&
          type == o.type &&
          stage == o.stage &&
          status == o.status &&
          priority == o.priority &&
          notes == o.notes &&
          probability == o.probability &&
          source == o.source &&
          rating == o.rating &&
          campaign == o.campaign &&
          primary_sales_rep == o.primary_sales_rep &&
          secondary_sales_rep == o.secondary_sales_rep &&
          location_id == o.location_id &&
          business_unit_id == o.business_unit_id &&
          company == o.company &&
          contact == o.contact &&
          site == o.site &&
          customer_po == o.customer_po &&
          pipeline_change_date == o.pipeline_change_date &&
          date_became_lead == o.date_became_lead &&
          closed_date == o.closed_date &&
          closed_by == o.closed_by &&
          total_sales_tax == o.total_sales_tax &&
          ship_to_company == o.ship_to_company &&
          ship_to_contact == o.ship_to_contact &&
          ship_to_site == o.ship_to_site &&
          bill_to_company == o.bill_to_company &&
          bill_to_contact == o.bill_to_contact &&
          bill_to_site == o.bill_to_site &&
          billing_terms == o.billing_terms &&
          tax_code == o.tax_code &&
          currency == o.currency &&
          _info == o._info &&
          custom_fields == o.custom_fields &&
          count == o.count &&
          re_assign_to_member == o.re_assign_to_member
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, expected_close_date, type, stage, status, priority, notes, probability, source, rating, campaign, primary_sales_rep, secondary_sales_rep, location_id, business_unit_id, company, contact, site, customer_po, pipeline_change_date, date_became_lead, closed_date, closed_by, total_sales_tax, ship_to_company, ship_to_contact, ship_to_site, bill_to_company, bill_to_contact, bill_to_site, billing_terms, tax_code, currency, _info, custom_fields, count, re_assign_to_member].hash
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
