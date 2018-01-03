
require 'date'

module ConnectWise

  class IntegratorLogin
    attr_accessor :id

    attr_accessor :username

    # The password will never be returned in response
    attr_accessor :password

    # This flag controls whether the integrator can access only the db records it created, or all system records
    attr_accessor :can_access_all_records_flag

    attr_accessor :can_access_all_apis_flag

    attr_accessor :inactive_flag

    attr_accessor :date_inactivated

    attr_accessor :inactivated_by

    attr_accessor :service_ticket_api_flag

    # If integrator has access to ServiceTicket API, a service board is required
    attr_accessor :board

    attr_accessor :service_board_callback_url

    attr_accessor :service_board_legacy_callback_flag

    attr_accessor :time_entry_api_flag

    # If integrator has access to TimeEntry API, a member is required
    attr_accessor :member

    attr_accessor :time_entry_callback_url

    attr_accessor :time_entry_legacy_callback_flag

    attr_accessor :managed_services_api_flag

    attr_accessor :managed_services_auto_child_flag

    # True if integrator is allowed to child configurations
    attr_accessor :managed_services_childing_flag

    attr_accessor :contact_api_flag

    attr_accessor :contact_callback_url

    attr_accessor :contact_legacy_callback_flag

    attr_accessor :company_api_flag

    attr_accessor :company_callback_url

    attr_accessor :company_legacy_callback_flag

    attr_accessor :activity_api_flag

    attr_accessor :activity_callback_url

    attr_accessor :activity_legacy_callback_flag

    attr_accessor :ntr_support_api_flag

    attr_accessor :log_me_in_support_api_flag

    attr_accessor :invoice_api_flag

    attr_accessor :product_api_flag

    attr_accessor :product_callback_url

    attr_accessor :product_legacy_callback_flag

    attr_accessor :opportunity_api_flag

    attr_accessor :opportunity_callback_url

    attr_accessor :opportunity_legacy_callback_flag

    # True if the member has access to the Opportunity Conversion Api
    attr_accessor :opportunity_conversion_api_flag

    attr_accessor :member_api_flag

    attr_accessor :marketing_api_flag

    attr_accessor :purchasing_api_flag

    attr_accessor :purchasing_callback_url

    attr_accessor :purchasing_legacy_callback_flag

    attr_accessor :reporting_api_flag

    attr_accessor :system_api_flag

    attr_accessor :project_api_flag

    attr_accessor :project_callback_url

    attr_accessor :project_legacy_callback_flag

    attr_accessor :configuration_api_flag

    attr_accessor :configuration_auto_child_flag

    # True if integrator is allowed to child configurations
    attr_accessor :configuration_childling_flag

    attr_accessor :configuration_callback_url

    attr_accessor :configuration_legacy_callback_flag

    attr_accessor :schedule_api_flag

    attr_accessor :schedule_callback_url

    attr_accessor :schedule_legacy_callback_flag

    attr_accessor :agreement_api_flag

    attr_accessor :agreement_callback_url

    attr_accessor :agreement_callback_legacy_flag

    attr_accessor :document_api_flag

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'username' => :'username',
        :'password' => :'password',
        :'can_access_all_records_flag' => :'canAccessAllRecordsFlag',
        :'can_access_all_apis_flag' => :'canAccessAllApisFlag',
        :'inactive_flag' => :'inactiveFlag',
        :'date_inactivated' => :'dateInactivated',
        :'inactivated_by' => :'inactivatedBy',
        :'service_ticket_api_flag' => :'serviceTicketApiFlag',
        :'board' => :'board',
        :'service_board_callback_url' => :'serviceBoardCallbackUrl',
        :'service_board_legacy_callback_flag' => :'serviceBoardLegacyCallbackFlag',
        :'time_entry_api_flag' => :'timeEntryApiFlag',
        :'member' => :'member',
        :'time_entry_callback_url' => :'timeEntryCallbackUrl',
        :'time_entry_legacy_callback_flag' => :'timeEntryLegacyCallbackFlag',
        :'managed_services_api_flag' => :'managedServicesApiFlag',
        :'managed_services_auto_child_flag' => :'managedServicesAutoChildFlag',
        :'managed_services_childing_flag' => :'managedServicesChildingFlag',
        :'contact_api_flag' => :'contactApiFlag',
        :'contact_callback_url' => :'contactCallbackUrl',
        :'contact_legacy_callback_flag' => :'contactLegacyCallbackFlag',
        :'company_api_flag' => :'companyApiFlag',
        :'company_callback_url' => :'companyCallbackUrl',
        :'company_legacy_callback_flag' => :'CompanyLegacyCallbackFlag',
        :'activity_api_flag' => :'activityApiFlag',
        :'activity_callback_url' => :'activityCallbackUrl',
        :'activity_legacy_callback_flag' => :'activityLegacyCallbackFlag',
        :'ntr_support_api_flag' => :'ntrSupportApiFlag',
        :'log_me_in_support_api_flag' => :'logMeInSupportApiFlag',
        :'invoice_api_flag' => :'invoiceApiFlag',
        :'product_api_flag' => :'productApiFlag',
        :'product_callback_url' => :'productCallbackUrl',
        :'product_legacy_callback_flag' => :'productLegacyCallbackFlag',
        :'opportunity_api_flag' => :'opportunityApiFlag',
        :'opportunity_callback_url' => :'opportunityCallbackUrl',
        :'opportunity_legacy_callback_flag' => :'opportunityLegacyCallbackFlag',
        :'opportunity_conversion_api_flag' => :'opportunityConversionApiFlag',
        :'member_api_flag' => :'memberApiFlag',
        :'marketing_api_flag' => :'marketingApiFlag',
        :'purchasing_api_flag' => :'purchasingApiFlag',
        :'purchasing_callback_url' => :'purchasingCallbackUrl',
        :'purchasing_legacy_callback_flag' => :'purchasingLegacyCallbackFlag',
        :'reporting_api_flag' => :'reportingApiFlag',
        :'system_api_flag' => :'systemApiFlag',
        :'project_api_flag' => :'projectApiFlag',
        :'project_callback_url' => :'projectCallbackUrl',
        :'project_legacy_callback_flag' => :'projectLegacyCallbackFlag',
        :'configuration_api_flag' => :'configurationApiFlag',
        :'configuration_auto_child_flag' => :'configurationAutoChildFlag',
        :'configuration_childling_flag' => :'configurationChildlingFlag',
        :'configuration_callback_url' => :'configurationCallbackUrl',
        :'configuration_legacy_callback_flag' => :'configurationLegacyCallbackFlag',
        :'schedule_api_flag' => :'scheduleApiFlag',
        :'schedule_callback_url' => :'scheduleCallbackUrl',
        :'schedule_legacy_callback_flag' => :'scheduleLegacyCallbackFlag',
        :'agreement_api_flag' => :'agreementApiFlag',
        :'agreement_callback_url' => :'agreementCallbackUrl',
        :'agreement_callback_legacy_flag' => :'agreementCallbackLegacyFlag',
        :'document_api_flag' => :'documentApiFlag',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'username' => :'String',
        :'password' => :'String',
        :'can_access_all_records_flag' => :'BOOLEAN',
        :'can_access_all_apis_flag' => :'BOOLEAN',
        :'inactive_flag' => :'BOOLEAN',
        :'date_inactivated' => :'DateTime',
        :'inactivated_by' => :'MemberReference',
        :'service_ticket_api_flag' => :'BOOLEAN',
        :'board' => :'BoardReference',
        :'service_board_callback_url' => :'String',
        :'service_board_legacy_callback_flag' => :'BOOLEAN',
        :'time_entry_api_flag' => :'BOOLEAN',
        :'member' => :'MemberReference',
        :'time_entry_callback_url' => :'String',
        :'time_entry_legacy_callback_flag' => :'BOOLEAN',
        :'managed_services_api_flag' => :'BOOLEAN',
        :'managed_services_auto_child_flag' => :'BOOLEAN',
        :'managed_services_childing_flag' => :'BOOLEAN',
        :'contact_api_flag' => :'BOOLEAN',
        :'contact_callback_url' => :'String',
        :'contact_legacy_callback_flag' => :'BOOLEAN',
        :'company_api_flag' => :'BOOLEAN',
        :'company_callback_url' => :'String',
        :'company_legacy_callback_flag' => :'BOOLEAN',
        :'activity_api_flag' => :'BOOLEAN',
        :'activity_callback_url' => :'String',
        :'activity_legacy_callback_flag' => :'BOOLEAN',
        :'ntr_support_api_flag' => :'BOOLEAN',
        :'log_me_in_support_api_flag' => :'BOOLEAN',
        :'invoice_api_flag' => :'BOOLEAN',
        :'product_api_flag' => :'BOOLEAN',
        :'product_callback_url' => :'String',
        :'product_legacy_callback_flag' => :'BOOLEAN',
        :'opportunity_api_flag' => :'BOOLEAN',
        :'opportunity_callback_url' => :'String',
        :'opportunity_legacy_callback_flag' => :'BOOLEAN',
        :'opportunity_conversion_api_flag' => :'BOOLEAN',
        :'member_api_flag' => :'BOOLEAN',
        :'marketing_api_flag' => :'BOOLEAN',
        :'purchasing_api_flag' => :'BOOLEAN',
        :'purchasing_callback_url' => :'String',
        :'purchasing_legacy_callback_flag' => :'BOOLEAN',
        :'reporting_api_flag' => :'BOOLEAN',
        :'system_api_flag' => :'BOOLEAN',
        :'project_api_flag' => :'BOOLEAN',
        :'project_callback_url' => :'String',
        :'project_legacy_callback_flag' => :'BOOLEAN',
        :'configuration_api_flag' => :'BOOLEAN',
        :'configuration_auto_child_flag' => :'BOOLEAN',
        :'configuration_childling_flag' => :'BOOLEAN',
        :'configuration_callback_url' => :'String',
        :'configuration_legacy_callback_flag' => :'BOOLEAN',
        :'schedule_api_flag' => :'BOOLEAN',
        :'schedule_callback_url' => :'String',
        :'schedule_legacy_callback_flag' => :'BOOLEAN',
        :'agreement_api_flag' => :'BOOLEAN',
        :'agreement_callback_url' => :'String',
        :'agreement_callback_legacy_flag' => :'BOOLEAN',
        :'document_api_flag' => :'BOOLEAN',
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

      if attributes.has_key?(:'username')
        self.username = attributes[:'username']
      end

      if attributes.has_key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.has_key?(:'canAccessAllRecordsFlag')
        self.can_access_all_records_flag = attributes[:'canAccessAllRecordsFlag']
      end

      if attributes.has_key?(:'canAccessAllApisFlag')
        self.can_access_all_apis_flag = attributes[:'canAccessAllApisFlag']
      end

      if attributes.has_key?(:'inactiveFlag')
        self.inactive_flag = attributes[:'inactiveFlag']
      end

      if attributes.has_key?(:'dateInactivated')
        self.date_inactivated = attributes[:'dateInactivated']
      end

      if attributes.has_key?(:'inactivatedBy')
        self.inactivated_by = attributes[:'inactivatedBy']
      end

      if attributes.has_key?(:'serviceTicketApiFlag')
        self.service_ticket_api_flag = attributes[:'serviceTicketApiFlag']
      end

      if attributes.has_key?(:'board')
        self.board = attributes[:'board']
      end

      if attributes.has_key?(:'serviceBoardCallbackUrl')
        self.service_board_callback_url = attributes[:'serviceBoardCallbackUrl']
      end

      if attributes.has_key?(:'serviceBoardLegacyCallbackFlag')
        self.service_board_legacy_callback_flag = attributes[:'serviceBoardLegacyCallbackFlag']
      end

      if attributes.has_key?(:'timeEntryApiFlag')
        self.time_entry_api_flag = attributes[:'timeEntryApiFlag']
      end

      if attributes.has_key?(:'member')
        self.member = attributes[:'member']
      end

      if attributes.has_key?(:'timeEntryCallbackUrl')
        self.time_entry_callback_url = attributes[:'timeEntryCallbackUrl']
      end

      if attributes.has_key?(:'timeEntryLegacyCallbackFlag')
        self.time_entry_legacy_callback_flag = attributes[:'timeEntryLegacyCallbackFlag']
      end

      if attributes.has_key?(:'managedServicesApiFlag')
        self.managed_services_api_flag = attributes[:'managedServicesApiFlag']
      end

      if attributes.has_key?(:'managedServicesAutoChildFlag')
        self.managed_services_auto_child_flag = attributes[:'managedServicesAutoChildFlag']
      end

      if attributes.has_key?(:'managedServicesChildingFlag')
        self.managed_services_childing_flag = attributes[:'managedServicesChildingFlag']
      end

      if attributes.has_key?(:'contactApiFlag')
        self.contact_api_flag = attributes[:'contactApiFlag']
      end

      if attributes.has_key?(:'contactCallbackUrl')
        self.contact_callback_url = attributes[:'contactCallbackUrl']
      end

      if attributes.has_key?(:'contactLegacyCallbackFlag')
        self.contact_legacy_callback_flag = attributes[:'contactLegacyCallbackFlag']
      end

      if attributes.has_key?(:'companyApiFlag')
        self.company_api_flag = attributes[:'companyApiFlag']
      end

      if attributes.has_key?(:'companyCallbackUrl')
        self.company_callback_url = attributes[:'companyCallbackUrl']
      end

      if attributes.has_key?(:'CompanyLegacyCallbackFlag')
        self.company_legacy_callback_flag = attributes[:'CompanyLegacyCallbackFlag']
      end

      if attributes.has_key?(:'activityApiFlag')
        self.activity_api_flag = attributes[:'activityApiFlag']
      end

      if attributes.has_key?(:'activityCallbackUrl')
        self.activity_callback_url = attributes[:'activityCallbackUrl']
      end

      if attributes.has_key?(:'activityLegacyCallbackFlag')
        self.activity_legacy_callback_flag = attributes[:'activityLegacyCallbackFlag']
      end

      if attributes.has_key?(:'ntrSupportApiFlag')
        self.ntr_support_api_flag = attributes[:'ntrSupportApiFlag']
      end

      if attributes.has_key?(:'logMeInSupportApiFlag')
        self.log_me_in_support_api_flag = attributes[:'logMeInSupportApiFlag']
      end

      if attributes.has_key?(:'invoiceApiFlag')
        self.invoice_api_flag = attributes[:'invoiceApiFlag']
      end

      if attributes.has_key?(:'productApiFlag')
        self.product_api_flag = attributes[:'productApiFlag']
      end

      if attributes.has_key?(:'productCallbackUrl')
        self.product_callback_url = attributes[:'productCallbackUrl']
      end

      if attributes.has_key?(:'productLegacyCallbackFlag')
        self.product_legacy_callback_flag = attributes[:'productLegacyCallbackFlag']
      end

      if attributes.has_key?(:'opportunityApiFlag')
        self.opportunity_api_flag = attributes[:'opportunityApiFlag']
      end

      if attributes.has_key?(:'opportunityCallbackUrl')
        self.opportunity_callback_url = attributes[:'opportunityCallbackUrl']
      end

      if attributes.has_key?(:'opportunityLegacyCallbackFlag')
        self.opportunity_legacy_callback_flag = attributes[:'opportunityLegacyCallbackFlag']
      end

      if attributes.has_key?(:'opportunityConversionApiFlag')
        self.opportunity_conversion_api_flag = attributes[:'opportunityConversionApiFlag']
      end

      if attributes.has_key?(:'memberApiFlag')
        self.member_api_flag = attributes[:'memberApiFlag']
      end

      if attributes.has_key?(:'marketingApiFlag')
        self.marketing_api_flag = attributes[:'marketingApiFlag']
      end

      if attributes.has_key?(:'purchasingApiFlag')
        self.purchasing_api_flag = attributes[:'purchasingApiFlag']
      end

      if attributes.has_key?(:'purchasingCallbackUrl')
        self.purchasing_callback_url = attributes[:'purchasingCallbackUrl']
      end

      if attributes.has_key?(:'purchasingLegacyCallbackFlag')
        self.purchasing_legacy_callback_flag = attributes[:'purchasingLegacyCallbackFlag']
      end

      if attributes.has_key?(:'reportingApiFlag')
        self.reporting_api_flag = attributes[:'reportingApiFlag']
      end

      if attributes.has_key?(:'systemApiFlag')
        self.system_api_flag = attributes[:'systemApiFlag']
      end

      if attributes.has_key?(:'projectApiFlag')
        self.project_api_flag = attributes[:'projectApiFlag']
      end

      if attributes.has_key?(:'projectCallbackUrl')
        self.project_callback_url = attributes[:'projectCallbackUrl']
      end

      if attributes.has_key?(:'projectLegacyCallbackFlag')
        self.project_legacy_callback_flag = attributes[:'projectLegacyCallbackFlag']
      end

      if attributes.has_key?(:'configurationApiFlag')
        self.configuration_api_flag = attributes[:'configurationApiFlag']
      end

      if attributes.has_key?(:'configurationAutoChildFlag')
        self.configuration_auto_child_flag = attributes[:'configurationAutoChildFlag']
      end

      if attributes.has_key?(:'configurationChildlingFlag')
        self.configuration_childling_flag = attributes[:'configurationChildlingFlag']
      end

      if attributes.has_key?(:'configurationCallbackUrl')
        self.configuration_callback_url = attributes[:'configurationCallbackUrl']
      end

      if attributes.has_key?(:'configurationLegacyCallbackFlag')
        self.configuration_legacy_callback_flag = attributes[:'configurationLegacyCallbackFlag']
      end

      if attributes.has_key?(:'scheduleApiFlag')
        self.schedule_api_flag = attributes[:'scheduleApiFlag']
      end

      if attributes.has_key?(:'scheduleCallbackUrl')
        self.schedule_callback_url = attributes[:'scheduleCallbackUrl']
      end

      if attributes.has_key?(:'scheduleLegacyCallbackFlag')
        self.schedule_legacy_callback_flag = attributes[:'scheduleLegacyCallbackFlag']
      end

      if attributes.has_key?(:'agreementApiFlag')
        self.agreement_api_flag = attributes[:'agreementApiFlag']
      end

      if attributes.has_key?(:'agreementCallbackUrl')
        self.agreement_callback_url = attributes[:'agreementCallbackUrl']
      end

      if attributes.has_key?(:'agreementCallbackLegacyFlag')
        self.agreement_callback_legacy_flag = attributes[:'agreementCallbackLegacyFlag']
      end

      if attributes.has_key?(:'documentApiFlag')
        self.document_api_flag = attributes[:'documentApiFlag']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @username.nil?
        invalid_properties.push("invalid value for 'username', username cannot be nil.")
      end

      if @username.to_s.length > 50
        invalid_properties.push("invalid value for 'username', the character length must be smaller than or equal to 50.")
      end

      if @password.nil?
        invalid_properties.push("invalid value for 'password', password cannot be nil.")
      end

      if @password.to_s.length > 50
        invalid_properties.push("invalid value for 'password', the character length must be smaller than or equal to 50.")
      end

      if !@service_board_callback_url.nil? && @service_board_callback_url.to_s.length > 1000
        invalid_properties.push("invalid value for 'service_board_callback_url', the character length must be smaller than or equal to 1000.")
      end

      if !@time_entry_callback_url.nil? && @time_entry_callback_url.to_s.length > 1000
        invalid_properties.push("invalid value for 'time_entry_callback_url', the character length must be smaller than or equal to 1000.")
      end

      if !@contact_callback_url.nil? && @contact_callback_url.to_s.length > 1000
        invalid_properties.push("invalid value for 'contact_callback_url', the character length must be smaller than or equal to 1000.")
      end

      if !@company_callback_url.nil? && @company_callback_url.to_s.length > 1000
        invalid_properties.push("invalid value for 'company_callback_url', the character length must be smaller than or equal to 1000.")
      end

      if !@activity_callback_url.nil? && @activity_callback_url.to_s.length > 1000
        invalid_properties.push("invalid value for 'activity_callback_url', the character length must be smaller than or equal to 1000.")
      end

      if !@product_callback_url.nil? && @product_callback_url.to_s.length > 1000
        invalid_properties.push("invalid value for 'product_callback_url', the character length must be smaller than or equal to 1000.")
      end

      if !@opportunity_callback_url.nil? && @opportunity_callback_url.to_s.length > 1000
        invalid_properties.push("invalid value for 'opportunity_callback_url', the character length must be smaller than or equal to 1000.")
      end

      if !@purchasing_callback_url.nil? && @purchasing_callback_url.to_s.length > 1000
        invalid_properties.push("invalid value for 'purchasing_callback_url', the character length must be smaller than or equal to 1000.")
      end

      if !@project_callback_url.nil? && @project_callback_url.to_s.length > 1000
        invalid_properties.push("invalid value for 'project_callback_url', the character length must be smaller than or equal to 1000.")
      end

      if !@configuration_callback_url.nil? && @configuration_callback_url.to_s.length > 1000
        invalid_properties.push("invalid value for 'configuration_callback_url', the character length must be smaller than or equal to 1000.")
      end

      if !@schedule_callback_url.nil? && @schedule_callback_url.to_s.length > 1000
        invalid_properties.push("invalid value for 'schedule_callback_url', the character length must be smaller than or equal to 1000.")
      end

      if !@agreement_callback_url.nil? && @agreement_callback_url.to_s.length > 1000
        invalid_properties.push("invalid value for 'agreement_callback_url', the character length must be smaller than or equal to 1000.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @username.nil?
      return false if @username.to_s.length > 50
      return false if @password.nil?
      return false if @password.to_s.length > 50
      return false if !@service_board_callback_url.nil? && @service_board_callback_url.to_s.length > 1000
      return false if !@time_entry_callback_url.nil? && @time_entry_callback_url.to_s.length > 1000
      return false if !@contact_callback_url.nil? && @contact_callback_url.to_s.length > 1000
      return false if !@company_callback_url.nil? && @company_callback_url.to_s.length > 1000
      return false if !@activity_callback_url.nil? && @activity_callback_url.to_s.length > 1000
      return false if !@product_callback_url.nil? && @product_callback_url.to_s.length > 1000
      return false if !@opportunity_callback_url.nil? && @opportunity_callback_url.to_s.length > 1000
      return false if !@purchasing_callback_url.nil? && @purchasing_callback_url.to_s.length > 1000
      return false if !@project_callback_url.nil? && @project_callback_url.to_s.length > 1000
      return false if !@configuration_callback_url.nil? && @configuration_callback_url.to_s.length > 1000
      return false if !@schedule_callback_url.nil? && @schedule_callback_url.to_s.length > 1000
      return false if !@agreement_callback_url.nil? && @agreement_callback_url.to_s.length > 1000
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] username Value to be assigned
    def username=(username)
      if username.nil?
        fail ArgumentError, "username cannot be nil"
      end

      if username.to_s.length > 50
        fail ArgumentError, "invalid value for 'username', the character length must be smaller than or equal to 50."
      end

      @username = username
    end

    # Custom attribute writer method with validation
    # @param [Object] password Value to be assigned
    def password=(password)
      if password.nil?
        fail ArgumentError, "password cannot be nil"
      end

      if password.to_s.length > 50
        fail ArgumentError, "invalid value for 'password', the character length must be smaller than or equal to 50."
      end

      @password = password
    end

    # Custom attribute writer method with validation
    # @param [Object] service_board_callback_url Value to be assigned
    def service_board_callback_url=(service_board_callback_url)

      if !service_board_callback_url.nil? && service_board_callback_url.to_s.length > 1000
        fail ArgumentError, "invalid value for 'service_board_callback_url', the character length must be smaller than or equal to 1000."
      end

      @service_board_callback_url = service_board_callback_url
    end

    # Custom attribute writer method with validation
    # @param [Object] time_entry_callback_url Value to be assigned
    def time_entry_callback_url=(time_entry_callback_url)

      if !time_entry_callback_url.nil? && time_entry_callback_url.to_s.length > 1000
        fail ArgumentError, "invalid value for 'time_entry_callback_url', the character length must be smaller than or equal to 1000."
      end

      @time_entry_callback_url = time_entry_callback_url
    end

    # Custom attribute writer method with validation
    # @param [Object] contact_callback_url Value to be assigned
    def contact_callback_url=(contact_callback_url)

      if !contact_callback_url.nil? && contact_callback_url.to_s.length > 1000
        fail ArgumentError, "invalid value for 'contact_callback_url', the character length must be smaller than or equal to 1000."
      end

      @contact_callback_url = contact_callback_url
    end

    # Custom attribute writer method with validation
    # @param [Object] company_callback_url Value to be assigned
    def company_callback_url=(company_callback_url)

      if !company_callback_url.nil? && company_callback_url.to_s.length > 1000
        fail ArgumentError, "invalid value for 'company_callback_url', the character length must be smaller than or equal to 1000."
      end

      @company_callback_url = company_callback_url
    end

    # Custom attribute writer method with validation
    # @param [Object] activity_callback_url Value to be assigned
    def activity_callback_url=(activity_callback_url)

      if !activity_callback_url.nil? && activity_callback_url.to_s.length > 1000
        fail ArgumentError, "invalid value for 'activity_callback_url', the character length must be smaller than or equal to 1000."
      end

      @activity_callback_url = activity_callback_url
    end

    # Custom attribute writer method with validation
    # @param [Object] product_callback_url Value to be assigned
    def product_callback_url=(product_callback_url)

      if !product_callback_url.nil? && product_callback_url.to_s.length > 1000
        fail ArgumentError, "invalid value for 'product_callback_url', the character length must be smaller than or equal to 1000."
      end

      @product_callback_url = product_callback_url
    end

    # Custom attribute writer method with validation
    # @param [Object] opportunity_callback_url Value to be assigned
    def opportunity_callback_url=(opportunity_callback_url)

      if !opportunity_callback_url.nil? && opportunity_callback_url.to_s.length > 1000
        fail ArgumentError, "invalid value for 'opportunity_callback_url', the character length must be smaller than or equal to 1000."
      end

      @opportunity_callback_url = opportunity_callback_url
    end

    # Custom attribute writer method with validation
    # @param [Object] purchasing_callback_url Value to be assigned
    def purchasing_callback_url=(purchasing_callback_url)

      if !purchasing_callback_url.nil? && purchasing_callback_url.to_s.length > 1000
        fail ArgumentError, "invalid value for 'purchasing_callback_url', the character length must be smaller than or equal to 1000."
      end

      @purchasing_callback_url = purchasing_callback_url
    end

    # Custom attribute writer method with validation
    # @param [Object] project_callback_url Value to be assigned
    def project_callback_url=(project_callback_url)

      if !project_callback_url.nil? && project_callback_url.to_s.length > 1000
        fail ArgumentError, "invalid value for 'project_callback_url', the character length must be smaller than or equal to 1000."
      end

      @project_callback_url = project_callback_url
    end

    # Custom attribute writer method with validation
    # @param [Object] configuration_callback_url Value to be assigned
    def configuration_callback_url=(configuration_callback_url)

      if !configuration_callback_url.nil? && configuration_callback_url.to_s.length > 1000
        fail ArgumentError, "invalid value for 'configuration_callback_url', the character length must be smaller than or equal to 1000."
      end

      @configuration_callback_url = configuration_callback_url
    end

    # Custom attribute writer method with validation
    # @param [Object] schedule_callback_url Value to be assigned
    def schedule_callback_url=(schedule_callback_url)

      if !schedule_callback_url.nil? && schedule_callback_url.to_s.length > 1000
        fail ArgumentError, "invalid value for 'schedule_callback_url', the character length must be smaller than or equal to 1000."
      end

      @schedule_callback_url = schedule_callback_url
    end

    # Custom attribute writer method with validation
    # @param [Object] agreement_callback_url Value to be assigned
    def agreement_callback_url=(agreement_callback_url)

      if !agreement_callback_url.nil? && agreement_callback_url.to_s.length > 1000
        fail ArgumentError, "invalid value for 'agreement_callback_url', the character length must be smaller than or equal to 1000."
      end

      @agreement_callback_url = agreement_callback_url
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          username == o.username &&
          password == o.password &&
          can_access_all_records_flag == o.can_access_all_records_flag &&
          can_access_all_apis_flag == o.can_access_all_apis_flag &&
          inactive_flag == o.inactive_flag &&
          date_inactivated == o.date_inactivated &&
          inactivated_by == o.inactivated_by &&
          service_ticket_api_flag == o.service_ticket_api_flag &&
          board == o.board &&
          service_board_callback_url == o.service_board_callback_url &&
          service_board_legacy_callback_flag == o.service_board_legacy_callback_flag &&
          time_entry_api_flag == o.time_entry_api_flag &&
          member == o.member &&
          time_entry_callback_url == o.time_entry_callback_url &&
          time_entry_legacy_callback_flag == o.time_entry_legacy_callback_flag &&
          managed_services_api_flag == o.managed_services_api_flag &&
          managed_services_auto_child_flag == o.managed_services_auto_child_flag &&
          managed_services_childing_flag == o.managed_services_childing_flag &&
          contact_api_flag == o.contact_api_flag &&
          contact_callback_url == o.contact_callback_url &&
          contact_legacy_callback_flag == o.contact_legacy_callback_flag &&
          company_api_flag == o.company_api_flag &&
          company_callback_url == o.company_callback_url &&
          company_legacy_callback_flag == o.company_legacy_callback_flag &&
          activity_api_flag == o.activity_api_flag &&
          activity_callback_url == o.activity_callback_url &&
          activity_legacy_callback_flag == o.activity_legacy_callback_flag &&
          ntr_support_api_flag == o.ntr_support_api_flag &&
          log_me_in_support_api_flag == o.log_me_in_support_api_flag &&
          invoice_api_flag == o.invoice_api_flag &&
          product_api_flag == o.product_api_flag &&
          product_callback_url == o.product_callback_url &&
          product_legacy_callback_flag == o.product_legacy_callback_flag &&
          opportunity_api_flag == o.opportunity_api_flag &&
          opportunity_callback_url == o.opportunity_callback_url &&
          opportunity_legacy_callback_flag == o.opportunity_legacy_callback_flag &&
          opportunity_conversion_api_flag == o.opportunity_conversion_api_flag &&
          member_api_flag == o.member_api_flag &&
          marketing_api_flag == o.marketing_api_flag &&
          purchasing_api_flag == o.purchasing_api_flag &&
          purchasing_callback_url == o.purchasing_callback_url &&
          purchasing_legacy_callback_flag == o.purchasing_legacy_callback_flag &&
          reporting_api_flag == o.reporting_api_flag &&
          system_api_flag == o.system_api_flag &&
          project_api_flag == o.project_api_flag &&
          project_callback_url == o.project_callback_url &&
          project_legacy_callback_flag == o.project_legacy_callback_flag &&
          configuration_api_flag == o.configuration_api_flag &&
          configuration_auto_child_flag == o.configuration_auto_child_flag &&
          configuration_childling_flag == o.configuration_childling_flag &&
          configuration_callback_url == o.configuration_callback_url &&
          configuration_legacy_callback_flag == o.configuration_legacy_callback_flag &&
          schedule_api_flag == o.schedule_api_flag &&
          schedule_callback_url == o.schedule_callback_url &&
          schedule_legacy_callback_flag == o.schedule_legacy_callback_flag &&
          agreement_api_flag == o.agreement_api_flag &&
          agreement_callback_url == o.agreement_callback_url &&
          agreement_callback_legacy_flag == o.agreement_callback_legacy_flag &&
          document_api_flag == o.document_api_flag &&
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
      [id, username, password, can_access_all_records_flag, can_access_all_apis_flag, inactive_flag, date_inactivated, inactivated_by, service_ticket_api_flag, board, service_board_callback_url, service_board_legacy_callback_flag, time_entry_api_flag, member, time_entry_callback_url, time_entry_legacy_callback_flag, managed_services_api_flag, managed_services_auto_child_flag, managed_services_childing_flag, contact_api_flag, contact_callback_url, contact_legacy_callback_flag, company_api_flag, company_callback_url, company_legacy_callback_flag, activity_api_flag, activity_callback_url, activity_legacy_callback_flag, ntr_support_api_flag, log_me_in_support_api_flag, invoice_api_flag, product_api_flag, product_callback_url, product_legacy_callback_flag, opportunity_api_flag, opportunity_callback_url, opportunity_legacy_callback_flag, opportunity_conversion_api_flag, member_api_flag, marketing_api_flag, purchasing_api_flag, purchasing_callback_url, purchasing_legacy_callback_flag, reporting_api_flag, system_api_flag, project_api_flag, project_callback_url, project_legacy_callback_flag, configuration_api_flag, configuration_auto_child_flag, configuration_childling_flag, configuration_callback_url, configuration_legacy_callback_flag, schedule_api_flag, schedule_callback_url, schedule_legacy_callback_flag, agreement_api_flag, agreement_callback_url, agreement_callback_legacy_flag, document_api_flag, _info].hash
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
