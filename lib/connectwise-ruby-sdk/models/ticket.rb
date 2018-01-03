
require 'date'

module ConnectWise

  class Ticket
    attr_accessor :id

    attr_accessor :summary

    attr_accessor :record_type

    attr_accessor :board

    attr_accessor :status

    attr_accessor :project

    attr_accessor :phase

    attr_accessor :wbs_code

    attr_accessor :company

    attr_accessor :site

    attr_accessor :site_name

    attr_accessor :address_line1

    attr_accessor :address_line2

    attr_accessor :city

    attr_accessor :state_identifier

    attr_accessor :zip

    attr_accessor :country

    attr_accessor :contact

    attr_accessor :contact_name

    attr_accessor :contact_phone_number

    attr_accessor :contact_phone_extension

    attr_accessor :contact_email_address

    attr_accessor :type

    attr_accessor :sub_type

    attr_accessor :item

    attr_accessor :team

    attr_accessor :owner

    attr_accessor :priority

    attr_accessor :service_location

    attr_accessor :source

    attr_accessor :required_date

    attr_accessor :budget_hours

    attr_accessor :opportunity

    attr_accessor :agreement

    attr_accessor :severity

    attr_accessor :impact

    attr_accessor :external_x_ref

    attr_accessor :po_number

    attr_accessor :knowledge_base_category_id

    attr_accessor :knowledge_base_sub_category_id

    attr_accessor :allow_all_clients_portal_view

    attr_accessor :customer_updated_flag

    attr_accessor :automatic_email_contact_flag

    attr_accessor :automatic_email_resource_flag

    attr_accessor :automatic_email_cc_flag

    attr_accessor :automatic_email_cc

    # Only available for POST, will not be returned in the response
    attr_accessor :initial_description

    # Only available for POST, will not be returned in the response
    attr_accessor :initial_internal_analysis

    # Only available for POST, will not be returned in the response
    attr_accessor :initial_resolution

    attr_accessor :contact_email_lookup

    # Can be set to false to skip notification processing when adding or updating a ticket (Defaults to True)
    attr_accessor :process_notifications

    attr_accessor :skip_callback

    attr_accessor :closed_date

    attr_accessor :closed_by

    attr_accessor :closed_flag

    attr_accessor :date_entered

    attr_accessor :entered_by

    attr_accessor :actual_hours

    attr_accessor :approved

    attr_accessor :sub_billing_method

    attr_accessor :sub_billing_amount

    attr_accessor :sub_date_accepted

    attr_accessor :date_resolved

    attr_accessor :date_resplan

    attr_accessor :date_responded

    attr_accessor :resolve_minutes

    attr_accessor :res_plan_minutes

    attr_accessor :respond_minutes

    attr_accessor :is_in_sla

    attr_accessor :knowledge_base_link_id

    attr_accessor :resources

    attr_accessor :parent_ticket_id

    attr_accessor :has_child_ticket

    attr_accessor :knowledge_base_link_type

    attr_accessor :bill_time

    attr_accessor :bill_expenses

    attr_accessor :bill_products

    attr_accessor :predecessor_type

    attr_accessor :predecessor_id

    attr_accessor :predecessor_closed_flag

    attr_accessor :lag_days

    attr_accessor :lag_nonworking_days_flag

    attr_accessor :estimated_start_date

    attr_accessor :duration

    attr_accessor :location_id

    attr_accessor :business_unit_id

    attr_accessor :mobile_guid

    attr_accessor :sla

    attr_accessor :currency

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
        :'summary' => :'summary',
        :'record_type' => :'recordType',
        :'board' => :'board',
        :'status' => :'status',
        :'project' => :'project',
        :'phase' => :'phase',
        :'wbs_code' => :'wbsCode',
        :'company' => :'company',
        :'site' => :'site',
        :'site_name' => :'siteName',
        :'address_line1' => :'addressLine1',
        :'address_line2' => :'addressLine2',
        :'city' => :'city',
        :'state_identifier' => :'stateIdentifier',
        :'zip' => :'zip',
        :'country' => :'country',
        :'contact' => :'contact',
        :'contact_name' => :'contactName',
        :'contact_phone_number' => :'contactPhoneNumber',
        :'contact_phone_extension' => :'contactPhoneExtension',
        :'contact_email_address' => :'contactEmailAddress',
        :'type' => :'type',
        :'sub_type' => :'subType',
        :'item' => :'item',
        :'team' => :'team',
        :'owner' => :'owner',
        :'priority' => :'priority',
        :'service_location' => :'serviceLocation',
        :'source' => :'source',
        :'required_date' => :'requiredDate',
        :'budget_hours' => :'budgetHours',
        :'opportunity' => :'opportunity',
        :'agreement' => :'agreement',
        :'severity' => :'severity',
        :'impact' => :'impact',
        :'external_x_ref' => :'externalXRef',
        :'po_number' => :'poNumber',
        :'knowledge_base_category_id' => :'knowledgeBaseCategoryId',
        :'knowledge_base_sub_category_id' => :'knowledgeBaseSubCategoryId',
        :'allow_all_clients_portal_view' => :'allowAllClientsPortalView',
        :'customer_updated_flag' => :'customerUpdatedFlag',
        :'automatic_email_contact_flag' => :'automaticEmailContactFlag',
        :'automatic_email_resource_flag' => :'automaticEmailResourceFlag',
        :'automatic_email_cc_flag' => :'automaticEmailCcFlag',
        :'automatic_email_cc' => :'automaticEmailCc',
        :'initial_description' => :'initialDescription',
        :'initial_internal_analysis' => :'initialInternalAnalysis',
        :'initial_resolution' => :'initialResolution',
        :'contact_email_lookup' => :'contactEmailLookup',
        :'process_notifications' => :'processNotifications',
        :'skip_callback' => :'skipCallback',
        :'closed_date' => :'closedDate',
        :'closed_by' => :'closedBy',
        :'closed_flag' => :'closedFlag',
        :'date_entered' => :'dateEntered',
        :'entered_by' => :'enteredBy',
        :'actual_hours' => :'actualHours',
        :'approved' => :'approved',
        :'sub_billing_method' => :'subBillingMethod',
        :'sub_billing_amount' => :'subBillingAmount',
        :'sub_date_accepted' => :'subDateAccepted',
        :'date_resolved' => :'dateResolved',
        :'date_resplan' => :'dateResplan',
        :'date_responded' => :'dateResponded',
        :'resolve_minutes' => :'resolveMinutes',
        :'res_plan_minutes' => :'resPlanMinutes',
        :'respond_minutes' => :'respondMinutes',
        :'is_in_sla' => :'isInSla',
        :'knowledge_base_link_id' => :'knowledgeBaseLinkId',
        :'resources' => :'resources',
        :'parent_ticket_id' => :'parentTicketId',
        :'has_child_ticket' => :'hasChildTicket',
        :'knowledge_base_link_type' => :'knowledgeBaseLinkType',
        :'bill_time' => :'billTime',
        :'bill_expenses' => :'billExpenses',
        :'bill_products' => :'billProducts',
        :'predecessor_type' => :'predecessorType',
        :'predecessor_id' => :'predecessorId',
        :'predecessor_closed_flag' => :'predecessorClosedFlag',
        :'lag_days' => :'lagDays',
        :'lag_nonworking_days_flag' => :'lagNonworkingDaysFlag',
        :'estimated_start_date' => :'estimatedStartDate',
        :'duration' => :'duration',
        :'location_id' => :'locationId',
        :'business_unit_id' => :'businessUnitId',
        :'mobile_guid' => :'mobileGuid',
        :'sla' => :'sla',
        :'currency' => :'currency',
        :'_info' => :'_info',
        :'custom_fields' => :'customFields'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'summary' => :'String',
        :'record_type' => :'String',
        :'board' => :'BoardReference',
        :'status' => :'ServiceStatusReference',
        :'project' => :'ProjectReference',
        :'phase' => :'ProjectPhaseReference',
        :'wbs_code' => :'String',
        :'company' => :'CompanyReference',
        :'site' => :'SiteReference',
        :'site_name' => :'String',
        :'address_line1' => :'String',
        :'address_line2' => :'String',
        :'city' => :'String',
        :'state_identifier' => :'String',
        :'zip' => :'String',
        :'country' => :'CountryReference',
        :'contact' => :'ContactReference',
        :'contact_name' => :'String',
        :'contact_phone_number' => :'String',
        :'contact_phone_extension' => :'String',
        :'contact_email_address' => :'String',
        :'type' => :'ServiceTypeReference',
        :'sub_type' => :'ServiceSubTypeReference',
        :'item' => :'ServiceItemReference',
        :'team' => :'ServiceTeamReference',
        :'owner' => :'MemberReference',
        :'priority' => :'PriorityReference',
        :'service_location' => :'ServiceLocationReference',
        :'source' => :'ServiceSourceReference',
        :'required_date' => :'DateTime',
        :'budget_hours' => :'Float',
        :'opportunity' => :'OpportunityReference',
        :'agreement' => :'AgreementReference',
        :'severity' => :'String',
        :'impact' => :'String',
        :'external_x_ref' => :'String',
        :'po_number' => :'String',
        :'knowledge_base_category_id' => :'Integer',
        :'knowledge_base_sub_category_id' => :'Integer',
        :'allow_all_clients_portal_view' => :'BOOLEAN',
        :'customer_updated_flag' => :'BOOLEAN',
        :'automatic_email_contact_flag' => :'BOOLEAN',
        :'automatic_email_resource_flag' => :'BOOLEAN',
        :'automatic_email_cc_flag' => :'BOOLEAN',
        :'automatic_email_cc' => :'String',
        :'initial_description' => :'String',
        :'initial_internal_analysis' => :'String',
        :'initial_resolution' => :'String',
        :'contact_email_lookup' => :'String',
        :'process_notifications' => :'BOOLEAN',
        :'skip_callback' => :'BOOLEAN',
        :'closed_date' => :'String',
        :'closed_by' => :'String',
        :'closed_flag' => :'BOOLEAN',
        :'date_entered' => :'String',
        :'entered_by' => :'String',
        :'actual_hours' => :'Float',
        :'approved' => :'BOOLEAN',
        :'sub_billing_method' => :'String',
        :'sub_billing_amount' => :'Float',
        :'sub_date_accepted' => :'String',
        :'date_resolved' => :'String',
        :'date_resplan' => :'String',
        :'date_responded' => :'String',
        :'resolve_minutes' => :'Integer',
        :'res_plan_minutes' => :'Integer',
        :'respond_minutes' => :'Integer',
        :'is_in_sla' => :'BOOLEAN',
        :'knowledge_base_link_id' => :'Integer',
        :'resources' => :'String',
        :'parent_ticket_id' => :'Integer',
        :'has_child_ticket' => :'BOOLEAN',
        :'knowledge_base_link_type' => :'String',
        :'bill_time' => :'String',
        :'bill_expenses' => :'String',
        :'bill_products' => :'String',
        :'predecessor_type' => :'String',
        :'predecessor_id' => :'Integer',
        :'predecessor_closed_flag' => :'BOOLEAN',
        :'lag_days' => :'Integer',
        :'lag_nonworking_days_flag' => :'BOOLEAN',
        :'estimated_start_date' => :'DateTime',
        :'duration' => :'Integer',
        :'location_id' => :'Integer',
        :'business_unit_id' => :'Integer',
        :'mobile_guid' => :'Guid',
        :'sla' => :'SLAReference',
        :'currency' => :'CurrencyReference',
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

      if attributes.has_key?(:'summary')
        self.summary = attributes[:'summary']
      end

      if attributes.has_key?(:'recordType')
        self.record_type = attributes[:'recordType']
      end

      if attributes.has_key?(:'board')
        self.board = attributes[:'board']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'project')
        self.project = attributes[:'project']
      end

      if attributes.has_key?(:'phase')
        self.phase = attributes[:'phase']
      end

      if attributes.has_key?(:'wbsCode')
        self.wbs_code = attributes[:'wbsCode']
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'site')
        self.site = attributes[:'site']
      end

      if attributes.has_key?(:'siteName')
        self.site_name = attributes[:'siteName']
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

      if attributes.has_key?(:'stateIdentifier')
        self.state_identifier = attributes[:'stateIdentifier']
      end

      if attributes.has_key?(:'zip')
        self.zip = attributes[:'zip']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'contact')
        self.contact = attributes[:'contact']
      end

      if attributes.has_key?(:'contactName')
        self.contact_name = attributes[:'contactName']
      end

      if attributes.has_key?(:'contactPhoneNumber')
        self.contact_phone_number = attributes[:'contactPhoneNumber']
      end

      if attributes.has_key?(:'contactPhoneExtension')
        self.contact_phone_extension = attributes[:'contactPhoneExtension']
      end

      if attributes.has_key?(:'contactEmailAddress')
        self.contact_email_address = attributes[:'contactEmailAddress']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'subType')
        self.sub_type = attributes[:'subType']
      end

      if attributes.has_key?(:'item')
        self.item = attributes[:'item']
      end

      if attributes.has_key?(:'team')
        self.team = attributes[:'team']
      end

      if attributes.has_key?(:'owner')
        self.owner = attributes[:'owner']
      end

      if attributes.has_key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.has_key?(:'serviceLocation')
        self.service_location = attributes[:'serviceLocation']
      end

      if attributes.has_key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.has_key?(:'requiredDate')
        self.required_date = attributes[:'requiredDate']
      end

      if attributes.has_key?(:'budgetHours')
        self.budget_hours = attributes[:'budgetHours']
      end

      if attributes.has_key?(:'opportunity')
        self.opportunity = attributes[:'opportunity']
      end

      if attributes.has_key?(:'agreement')
        self.agreement = attributes[:'agreement']
      end

      if attributes.has_key?(:'severity')
        self.severity = attributes[:'severity']
      end

      if attributes.has_key?(:'impact')
        self.impact = attributes[:'impact']
      end

      if attributes.has_key?(:'externalXRef')
        self.external_x_ref = attributes[:'externalXRef']
      end

      if attributes.has_key?(:'poNumber')
        self.po_number = attributes[:'poNumber']
      end

      if attributes.has_key?(:'knowledgeBaseCategoryId')
        self.knowledge_base_category_id = attributes[:'knowledgeBaseCategoryId']
      end

      if attributes.has_key?(:'knowledgeBaseSubCategoryId')
        self.knowledge_base_sub_category_id = attributes[:'knowledgeBaseSubCategoryId']
      end

      if attributes.has_key?(:'allowAllClientsPortalView')
        self.allow_all_clients_portal_view = attributes[:'allowAllClientsPortalView']
      end

      if attributes.has_key?(:'customerUpdatedFlag')
        self.customer_updated_flag = attributes[:'customerUpdatedFlag']
      end

      if attributes.has_key?(:'automaticEmailContactFlag')
        self.automatic_email_contact_flag = attributes[:'automaticEmailContactFlag']
      end

      if attributes.has_key?(:'automaticEmailResourceFlag')
        self.automatic_email_resource_flag = attributes[:'automaticEmailResourceFlag']
      end

      if attributes.has_key?(:'automaticEmailCcFlag')
        self.automatic_email_cc_flag = attributes[:'automaticEmailCcFlag']
      end

      if attributes.has_key?(:'automaticEmailCc')
        self.automatic_email_cc = attributes[:'automaticEmailCc']
      end

      if attributes.has_key?(:'initialDescription')
        self.initial_description = attributes[:'initialDescription']
      end

      if attributes.has_key?(:'initialInternalAnalysis')
        self.initial_internal_analysis = attributes[:'initialInternalAnalysis']
      end

      if attributes.has_key?(:'initialResolution')
        self.initial_resolution = attributes[:'initialResolution']
      end

      if attributes.has_key?(:'contactEmailLookup')
        self.contact_email_lookup = attributes[:'contactEmailLookup']
      end

      if attributes.has_key?(:'processNotifications')
        self.process_notifications = attributes[:'processNotifications']
      end

      if attributes.has_key?(:'skipCallback')
        self.skip_callback = attributes[:'skipCallback']
      end

      if attributes.has_key?(:'closedDate')
        self.closed_date = attributes[:'closedDate']
      end

      if attributes.has_key?(:'closedBy')
        self.closed_by = attributes[:'closedBy']
      end

      if attributes.has_key?(:'closedFlag')
        self.closed_flag = attributes[:'closedFlag']
      end

      if attributes.has_key?(:'dateEntered')
        self.date_entered = attributes[:'dateEntered']
      end

      if attributes.has_key?(:'enteredBy')
        self.entered_by = attributes[:'enteredBy']
      end

      if attributes.has_key?(:'actualHours')
        self.actual_hours = attributes[:'actualHours']
      end

      if attributes.has_key?(:'approved')
        self.approved = attributes[:'approved']
      end

      if attributes.has_key?(:'subBillingMethod')
        self.sub_billing_method = attributes[:'subBillingMethod']
      end

      if attributes.has_key?(:'subBillingAmount')
        self.sub_billing_amount = attributes[:'subBillingAmount']
      end

      if attributes.has_key?(:'subDateAccepted')
        self.sub_date_accepted = attributes[:'subDateAccepted']
      end

      if attributes.has_key?(:'dateResolved')
        self.date_resolved = attributes[:'dateResolved']
      end

      if attributes.has_key?(:'dateResplan')
        self.date_resplan = attributes[:'dateResplan']
      end

      if attributes.has_key?(:'dateResponded')
        self.date_responded = attributes[:'dateResponded']
      end

      if attributes.has_key?(:'resolveMinutes')
        self.resolve_minutes = attributes[:'resolveMinutes']
      end

      if attributes.has_key?(:'resPlanMinutes')
        self.res_plan_minutes = attributes[:'resPlanMinutes']
      end

      if attributes.has_key?(:'respondMinutes')
        self.respond_minutes = attributes[:'respondMinutes']
      end

      if attributes.has_key?(:'isInSla')
        self.is_in_sla = attributes[:'isInSla']
      end

      if attributes.has_key?(:'knowledgeBaseLinkId')
        self.knowledge_base_link_id = attributes[:'knowledgeBaseLinkId']
      end

      if attributes.has_key?(:'resources')
        self.resources = attributes[:'resources']
      end

      if attributes.has_key?(:'parentTicketId')
        self.parent_ticket_id = attributes[:'parentTicketId']
      end

      if attributes.has_key?(:'hasChildTicket')
        self.has_child_ticket = attributes[:'hasChildTicket']
      end

      if attributes.has_key?(:'knowledgeBaseLinkType')
        self.knowledge_base_link_type = attributes[:'knowledgeBaseLinkType']
      end

      if attributes.has_key?(:'billTime')
        self.bill_time = attributes[:'billTime']
      end

      if attributes.has_key?(:'billExpenses')
        self.bill_expenses = attributes[:'billExpenses']
      end

      if attributes.has_key?(:'billProducts')
        self.bill_products = attributes[:'billProducts']
      end

      if attributes.has_key?(:'predecessorType')
        self.predecessor_type = attributes[:'predecessorType']
      end

      if attributes.has_key?(:'predecessorId')
        self.predecessor_id = attributes[:'predecessorId']
      end

      if attributes.has_key?(:'predecessorClosedFlag')
        self.predecessor_closed_flag = attributes[:'predecessorClosedFlag']
      end

      if attributes.has_key?(:'lagDays')
        self.lag_days = attributes[:'lagDays']
      end

      if attributes.has_key?(:'lagNonworkingDaysFlag')
        self.lag_nonworking_days_flag = attributes[:'lagNonworkingDaysFlag']
      end

      if attributes.has_key?(:'estimatedStartDate')
        self.estimated_start_date = attributes[:'estimatedStartDate']
      end

      if attributes.has_key?(:'duration')
        self.duration = attributes[:'duration']
      end

      if attributes.has_key?(:'locationId')
        self.location_id = attributes[:'locationId']
      end

      if attributes.has_key?(:'businessUnitId')
        self.business_unit_id = attributes[:'businessUnitId']
      end

      if attributes.has_key?(:'mobileGuid')
        self.mobile_guid = attributes[:'mobileGuid']
      end

      if attributes.has_key?(:'sla')
        self.sla = attributes[:'sla']
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

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @summary.nil?
        invalid_properties.push("invalid value for 'summary', summary cannot be nil.")
      end

      if @summary.to_s.length > 100
        invalid_properties.push("invalid value for 'summary', the character length must be smaller than or equal to 100.")
      end

      if !@wbs_code.nil? && @wbs_code.to_s.length > 50
        invalid_properties.push("invalid value for 'wbs_code', the character length must be smaller than or equal to 50.")
      end

      if @company.nil?
        invalid_properties.push("invalid value for 'company', company cannot be nil.")
      end

      if !@site_name.nil? && @site_name.to_s.length > 50
        invalid_properties.push("invalid value for 'site_name', the character length must be smaller than or equal to 50.")
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

      if !@state_identifier.nil? && @state_identifier.to_s.length > 50
        invalid_properties.push("invalid value for 'state_identifier', the character length must be smaller than or equal to 50.")
      end

      if !@zip.nil? && @zip.to_s.length > 12
        invalid_properties.push("invalid value for 'zip', the character length must be smaller than or equal to 12.")
      end

      if !@contact_name.nil? && @contact_name.to_s.length > 62
        invalid_properties.push("invalid value for 'contact_name', the character length must be smaller than or equal to 62.")
      end

      if !@contact_phone_number.nil? && @contact_phone_number.to_s.length > 20
        invalid_properties.push("invalid value for 'contact_phone_number', the character length must be smaller than or equal to 20.")
      end

      if !@contact_phone_extension.nil? && @contact_phone_extension.to_s.length > 15
        invalid_properties.push("invalid value for 'contact_phone_extension', the character length must be smaller than or equal to 15.")
      end

      if !@contact_email_address.nil? && @contact_email_address.to_s.length > 250
        invalid_properties.push("invalid value for 'contact_email_address', the character length must be smaller than or equal to 250.")
      end

      if !@external_x_ref.nil? && @external_x_ref.to_s.length > 100
        invalid_properties.push("invalid value for 'external_x_ref', the character length must be smaller than or equal to 100.")
      end

      if !@po_number.nil? && @po_number.to_s.length > 50
        invalid_properties.push("invalid value for 'po_number', the character length must be smaller than or equal to 50.")
      end

      if !@automatic_email_cc.nil? && @automatic_email_cc.to_s.length > 1000
        invalid_properties.push("invalid value for 'automatic_email_cc', the character length must be smaller than or equal to 1000.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @summary.nil?
      return false if @summary.to_s.length > 100
      record_type_validator = EnumAttributeValidator.new('String', ["ServiceTicket", "ProjectTicket", "ProjectIssue"])
      return false unless record_type_validator.valid?(@record_type)
      return false if !@wbs_code.nil? && @wbs_code.to_s.length > 50
      return false if @company.nil?
      return false if !@site_name.nil? && @site_name.to_s.length > 50
      return false if !@address_line1.nil? && @address_line1.to_s.length > 50
      return false if !@address_line2.nil? && @address_line2.to_s.length > 50
      return false if !@city.nil? && @city.to_s.length > 50
      return false if !@state_identifier.nil? && @state_identifier.to_s.length > 50
      return false if !@zip.nil? && @zip.to_s.length > 12
      return false if !@contact_name.nil? && @contact_name.to_s.length > 62
      return false if !@contact_phone_number.nil? && @contact_phone_number.to_s.length > 20
      return false if !@contact_phone_extension.nil? && @contact_phone_extension.to_s.length > 15
      return false if !@contact_email_address.nil? && @contact_email_address.to_s.length > 250
      severity_validator = EnumAttributeValidator.new('String', ["Low", "Medium", "High"])
      return false unless severity_validator.valid?(@severity)
      impact_validator = EnumAttributeValidator.new('String', ["Low", "Medium", "High"])
      return false unless impact_validator.valid?(@impact)
      return false if !@external_x_ref.nil? && @external_x_ref.to_s.length > 100
      return false if !@po_number.nil? && @po_number.to_s.length > 50
      return false if !@automatic_email_cc.nil? && @automatic_email_cc.to_s.length > 1000
      sub_billing_method_validator = EnumAttributeValidator.new('String', ["ActualRates", "FixedFee", "NotToExceed", "OverrideRate"])
      return false unless sub_billing_method_validator.valid?(@sub_billing_method)
      knowledge_base_link_type_validator = EnumAttributeValidator.new('String', ["ServiceTicket", "ProjectTicket", "ProjectIssue", "KnowledgeBaseArticle", "Time", "Activity"])
      return false unless knowledge_base_link_type_validator.valid?(@knowledge_base_link_type)
      bill_time_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      return false unless bill_time_validator.valid?(@bill_time)
      bill_expenses_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      return false unless bill_expenses_validator.valid?(@bill_expenses)
      bill_products_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      return false unless bill_products_validator.valid?(@bill_products)
      predecessor_type_validator = EnumAttributeValidator.new('String', ["Ticket", "Phase"])
      return false unless predecessor_type_validator.valid?(@predecessor_type)
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] summary Value to be assigned
    def summary=(summary)
      if summary.nil?
        fail ArgumentError, "summary cannot be nil"
      end

      if summary.to_s.length > 100
        fail ArgumentError, "invalid value for 'summary', the character length must be smaller than or equal to 100."
      end

      @summary = summary
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] record_type Object to be assigned
    def record_type=(record_type)
      validator = EnumAttributeValidator.new('String', ["ServiceTicket", "ProjectTicket", "ProjectIssue"])
      unless validator.valid?(record_type)
        fail ArgumentError, "invalid value for 'record_type', must be one of #{validator.allowable_values}."
      end
      @record_type = record_type
    end

    # Custom attribute writer method with validation
    # @param [Object] wbs_code Value to be assigned
    def wbs_code=(wbs_code)

      if !wbs_code.nil? && wbs_code.to_s.length > 50
        fail ArgumentError, "invalid value for 'wbs_code', the character length must be smaller than or equal to 50."
      end

      @wbs_code = wbs_code
    end

    # Custom attribute writer method with validation
    # @param [Object] site_name Value to be assigned
    def site_name=(site_name)

      if !site_name.nil? && site_name.to_s.length > 50
        fail ArgumentError, "invalid value for 'site_name', the character length must be smaller than or equal to 50."
      end

      @site_name = site_name
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
    # @param [Object] state_identifier Value to be assigned
    def state_identifier=(state_identifier)

      if !state_identifier.nil? && state_identifier.to_s.length > 50
        fail ArgumentError, "invalid value for 'state_identifier', the character length must be smaller than or equal to 50."
      end

      @state_identifier = state_identifier
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
    # @param [Object] contact_name Value to be assigned
    def contact_name=(contact_name)

      if !contact_name.nil? && contact_name.to_s.length > 62
        fail ArgumentError, "invalid value for 'contact_name', the character length must be smaller than or equal to 62."
      end

      @contact_name = contact_name
    end

    # Custom attribute writer method with validation
    # @param [Object] contact_phone_number Value to be assigned
    def contact_phone_number=(contact_phone_number)

      if !contact_phone_number.nil? && contact_phone_number.to_s.length > 20
        fail ArgumentError, "invalid value for 'contact_phone_number', the character length must be smaller than or equal to 20."
      end

      @contact_phone_number = contact_phone_number
    end

    # Custom attribute writer method with validation
    # @param [Object] contact_phone_extension Value to be assigned
    def contact_phone_extension=(contact_phone_extension)

      if !contact_phone_extension.nil? && contact_phone_extension.to_s.length > 15
        fail ArgumentError, "invalid value for 'contact_phone_extension', the character length must be smaller than or equal to 15."
      end

      @contact_phone_extension = contact_phone_extension
    end

    # Custom attribute writer method with validation
    # @param [Object] contact_email_address Value to be assigned
    def contact_email_address=(contact_email_address)

      if !contact_email_address.nil? && contact_email_address.to_s.length > 250
        fail ArgumentError, "invalid value for 'contact_email_address', the character length must be smaller than or equal to 250."
      end

      @contact_email_address = contact_email_address
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] severity Object to be assigned
    def severity=(severity)
      validator = EnumAttributeValidator.new('String', ["Low", "Medium", "High"])
      unless validator.valid?(severity)
        fail ArgumentError, "invalid value for 'severity', must be one of #{validator.allowable_values}."
      end
      @severity = severity
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] impact Object to be assigned
    def impact=(impact)
      validator = EnumAttributeValidator.new('String', ["Low", "Medium", "High"])
      unless validator.valid?(impact)
        fail ArgumentError, "invalid value for 'impact', must be one of #{validator.allowable_values}."
      end
      @impact = impact
    end

    # Custom attribute writer method with validation
    # @param [Object] external_x_ref Value to be assigned
    def external_x_ref=(external_x_ref)

      if !external_x_ref.nil? && external_x_ref.to_s.length > 100
        fail ArgumentError, "invalid value for 'external_x_ref', the character length must be smaller than or equal to 100."
      end

      @external_x_ref = external_x_ref
    end

    # Custom attribute writer method with validation
    # @param [Object] po_number Value to be assigned
    def po_number=(po_number)

      if !po_number.nil? && po_number.to_s.length > 50
        fail ArgumentError, "invalid value for 'po_number', the character length must be smaller than or equal to 50."
      end

      @po_number = po_number
    end

    # Custom attribute writer method with validation
    # @param [Object] automatic_email_cc Value to be assigned
    def automatic_email_cc=(automatic_email_cc)

      if !automatic_email_cc.nil? && automatic_email_cc.to_s.length > 1000
        fail ArgumentError, "invalid value for 'automatic_email_cc', the character length must be smaller than or equal to 1000."
      end

      @automatic_email_cc = automatic_email_cc
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sub_billing_method Object to be assigned
    def sub_billing_method=(sub_billing_method)
      validator = EnumAttributeValidator.new('String', ["ActualRates", "FixedFee", "NotToExceed", "OverrideRate"])
      unless validator.valid?(sub_billing_method)
        fail ArgumentError, "invalid value for 'sub_billing_method', must be one of #{validator.allowable_values}."
      end
      @sub_billing_method = sub_billing_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] knowledge_base_link_type Object to be assigned
    def knowledge_base_link_type=(knowledge_base_link_type)
      validator = EnumAttributeValidator.new('String', ["ServiceTicket", "ProjectTicket", "ProjectIssue", "KnowledgeBaseArticle", "Time", "Activity"])
      unless validator.valid?(knowledge_base_link_type)
        fail ArgumentError, "invalid value for 'knowledge_base_link_type', must be one of #{validator.allowable_values}."
      end
      @knowledge_base_link_type = knowledge_base_link_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bill_time Object to be assigned
    def bill_time=(bill_time)
      validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      unless validator.valid?(bill_time)
        fail ArgumentError, "invalid value for 'bill_time', must be one of #{validator.allowable_values}."
      end
      @bill_time = bill_time
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bill_expenses Object to be assigned
    def bill_expenses=(bill_expenses)
      validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      unless validator.valid?(bill_expenses)
        fail ArgumentError, "invalid value for 'bill_expenses', must be one of #{validator.allowable_values}."
      end
      @bill_expenses = bill_expenses
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bill_products Object to be assigned
    def bill_products=(bill_products)
      validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      unless validator.valid?(bill_products)
        fail ArgumentError, "invalid value for 'bill_products', must be one of #{validator.allowable_values}."
      end
      @bill_products = bill_products
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] predecessor_type Object to be assigned
    def predecessor_type=(predecessor_type)
      validator = EnumAttributeValidator.new('String', ["Ticket", "Phase"])
      unless validator.valid?(predecessor_type)
        fail ArgumentError, "invalid value for 'predecessor_type', must be one of #{validator.allowable_values}."
      end
      @predecessor_type = predecessor_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          summary == o.summary &&
          record_type == o.record_type &&
          board == o.board &&
          status == o.status &&
          project == o.project &&
          phase == o.phase &&
          wbs_code == o.wbs_code &&
          company == o.company &&
          site == o.site &&
          site_name == o.site_name &&
          address_line1 == o.address_line1 &&
          address_line2 == o.address_line2 &&
          city == o.city &&
          state_identifier == o.state_identifier &&
          zip == o.zip &&
          country == o.country &&
          contact == o.contact &&
          contact_name == o.contact_name &&
          contact_phone_number == o.contact_phone_number &&
          contact_phone_extension == o.contact_phone_extension &&
          contact_email_address == o.contact_email_address &&
          type == o.type &&
          sub_type == o.sub_type &&
          item == o.item &&
          team == o.team &&
          owner == o.owner &&
          priority == o.priority &&
          service_location == o.service_location &&
          source == o.source &&
          required_date == o.required_date &&
          budget_hours == o.budget_hours &&
          opportunity == o.opportunity &&
          agreement == o.agreement &&
          severity == o.severity &&
          impact == o.impact &&
          external_x_ref == o.external_x_ref &&
          po_number == o.po_number &&
          knowledge_base_category_id == o.knowledge_base_category_id &&
          knowledge_base_sub_category_id == o.knowledge_base_sub_category_id &&
          allow_all_clients_portal_view == o.allow_all_clients_portal_view &&
          customer_updated_flag == o.customer_updated_flag &&
          automatic_email_contact_flag == o.automatic_email_contact_flag &&
          automatic_email_resource_flag == o.automatic_email_resource_flag &&
          automatic_email_cc_flag == o.automatic_email_cc_flag &&
          automatic_email_cc == o.automatic_email_cc &&
          initial_description == o.initial_description &&
          initial_internal_analysis == o.initial_internal_analysis &&
          initial_resolution == o.initial_resolution &&
          contact_email_lookup == o.contact_email_lookup &&
          process_notifications == o.process_notifications &&
          skip_callback == o.skip_callback &&
          closed_date == o.closed_date &&
          closed_by == o.closed_by &&
          closed_flag == o.closed_flag &&
          date_entered == o.date_entered &&
          entered_by == o.entered_by &&
          actual_hours == o.actual_hours &&
          approved == o.approved &&
          sub_billing_method == o.sub_billing_method &&
          sub_billing_amount == o.sub_billing_amount &&
          sub_date_accepted == o.sub_date_accepted &&
          date_resolved == o.date_resolved &&
          date_resplan == o.date_resplan &&
          date_responded == o.date_responded &&
          resolve_minutes == o.resolve_minutes &&
          res_plan_minutes == o.res_plan_minutes &&
          respond_minutes == o.respond_minutes &&
          is_in_sla == o.is_in_sla &&
          knowledge_base_link_id == o.knowledge_base_link_id &&
          resources == o.resources &&
          parent_ticket_id == o.parent_ticket_id &&
          has_child_ticket == o.has_child_ticket &&
          knowledge_base_link_type == o.knowledge_base_link_type &&
          bill_time == o.bill_time &&
          bill_expenses == o.bill_expenses &&
          bill_products == o.bill_products &&
          predecessor_type == o.predecessor_type &&
          predecessor_id == o.predecessor_id &&
          predecessor_closed_flag == o.predecessor_closed_flag &&
          lag_days == o.lag_days &&
          lag_nonworking_days_flag == o.lag_nonworking_days_flag &&
          estimated_start_date == o.estimated_start_date &&
          duration == o.duration &&
          location_id == o.location_id &&
          business_unit_id == o.business_unit_id &&
          mobile_guid == o.mobile_guid &&
          sla == o.sla &&
          currency == o.currency &&
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
      [id, summary, record_type, board, status, project, phase, wbs_code, company, site, site_name, address_line1, address_line2, city, state_identifier, zip, country, contact, contact_name, contact_phone_number, contact_phone_extension, contact_email_address, type, sub_type, item, team, owner, priority, service_location, source, required_date, budget_hours, opportunity, agreement, severity, impact, external_x_ref, po_number, knowledge_base_category_id, knowledge_base_sub_category_id, allow_all_clients_portal_view, customer_updated_flag, automatic_email_contact_flag, automatic_email_resource_flag, automatic_email_cc_flag, automatic_email_cc, initial_description, initial_internal_analysis, initial_resolution, contact_email_lookup, process_notifications, skip_callback, closed_date, closed_by, closed_flag, date_entered, entered_by, actual_hours, approved, sub_billing_method, sub_billing_amount, sub_date_accepted, date_resolved, date_resplan, date_responded, resolve_minutes, res_plan_minutes, respond_minutes, is_in_sla, knowledge_base_link_id, resources, parent_ticket_id, has_child_ticket, knowledge_base_link_type, bill_time, bill_expenses, bill_products, predecessor_type, predecessor_id, predecessor_closed_flag, lag_days, lag_nonworking_days_flag, estimated_start_date, duration, location_id, business_unit_id, mobile_guid, sla, currency, _info, custom_fields].hash
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
