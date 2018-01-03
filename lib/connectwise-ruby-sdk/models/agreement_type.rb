
require 'date'

module ConnectWise

  class AgreementType
    attr_accessor :id

    attr_accessor :name

    attr_accessor :prefix_suffix_option

    attr_accessor :default_flag

    attr_accessor :inactive_flag

    attr_accessor :pre_payment_flag

    attr_accessor :invoice_pre_suffix

    attr_accessor :location

    attr_accessor :department

    attr_accessor :restrict_location_flag

    attr_accessor :restrict_department_flag

    attr_accessor :sla

    attr_accessor :application_units

    attr_accessor :application_limit

    attr_accessor :application_cycle

    attr_accessor :application_unlimited_flag

    attr_accessor :one_time_flag

    attr_accessor :cover_agreement_time_flag

    attr_accessor :cover_agreement_product_flag

    attr_accessor :cover_agreement_expense_flag

    attr_accessor :cover_sales_tax_flag

    attr_accessor :carry_over_unused_flag

    attr_accessor :allow_overruns_flag

    attr_accessor :expired_days

    attr_accessor :limit

    attr_accessor :expire_when_zero

    attr_accessor :charge_to_firm_flag

    attr_accessor :employee_comp_rate

    attr_accessor :employee_comp_not_exceed

    attr_accessor :comp_hourly_rate

    attr_accessor :comp_limit_amount

    attr_accessor :billing_cycle

    attr_accessor :bill_one_time_flag

    attr_accessor :billing_terms

    attr_accessor :invoicing_cycle

    attr_accessor :bill_amount

    attr_accessor :taxable_flag

    attr_accessor :restrict_down_payment_flag

    attr_accessor :invoice_description

    attr_accessor :top_comment_flag

    attr_accessor :bottom_comment_flag

    attr_accessor :work_role

    attr_accessor :work_type

    attr_accessor :project_type

    attr_accessor :invoice_template

    attr_accessor :bill_time

    attr_accessor :bill_expenses

    attr_accessor :bill_products

    attr_accessor :billable_time_invoice_flag

    attr_accessor :billable_expense_invoice_flag

    attr_accessor :billable_product_invoice_flag

    attr_accessor :copy_work_roles_flag

    attr_accessor :copy_work_types_flag

    attr_accessor :exclusion_work_role_ids

    attr_accessor :add_all_work_role_exclusions

    attr_accessor :remove_all_work_role_exclusions

    attr_accessor :exclusion_work_type_ids

    attr_accessor :add_all_work_type_exclusions

    attr_accessor :remove_all_work_type_exclusions

    attr_accessor :integration_x_ref

    attr_accessor :prorate_flag

    attr_accessor :email_template

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
        :'name' => :'name',
        :'prefix_suffix_option' => :'prefixSuffixOption',
        :'default_flag' => :'defaultFlag',
        :'inactive_flag' => :'inactiveFlag',
        :'pre_payment_flag' => :'prePaymentFlag',
        :'invoice_pre_suffix' => :'invoicePreSuffix',
        :'location' => :'location',
        :'department' => :'department',
        :'restrict_location_flag' => :'restrictLocationFlag',
        :'restrict_department_flag' => :'restrictDepartmentFlag',
        :'sla' => :'sla',
        :'application_units' => :'applicationUnits',
        :'application_limit' => :'applicationLimit',
        :'application_cycle' => :'applicationCycle',
        :'application_unlimited_flag' => :'applicationUnlimitedFlag',
        :'one_time_flag' => :'oneTimeFlag',
        :'cover_agreement_time_flag' => :'coverAgreementTimeFlag',
        :'cover_agreement_product_flag' => :'coverAgreementProductFlag',
        :'cover_agreement_expense_flag' => :'coverAgreementExpenseFlag',
        :'cover_sales_tax_flag' => :'coverSalesTaxFlag',
        :'carry_over_unused_flag' => :'carryOverUnusedFlag',
        :'allow_overruns_flag' => :'allowOverrunsFlag',
        :'expired_days' => :'expiredDays',
        :'limit' => :'limit',
        :'expire_when_zero' => :'expireWhenZero',
        :'charge_to_firm_flag' => :'chargeToFirmFlag',
        :'employee_comp_rate' => :'employeeCompRate',
        :'employee_comp_not_exceed' => :'employeeCompNotExceed',
        :'comp_hourly_rate' => :'compHourlyRate',
        :'comp_limit_amount' => :'compLimitAmount',
        :'billing_cycle' => :'billingCycle',
        :'bill_one_time_flag' => :'billOneTimeFlag',
        :'billing_terms' => :'billingTerms',
        :'invoicing_cycle' => :'invoicingCycle',
        :'bill_amount' => :'billAmount',
        :'taxable_flag' => :'taxableFlag',
        :'restrict_down_payment_flag' => :'restrictDownPaymentFlag',
        :'invoice_description' => :'invoiceDescription',
        :'top_comment_flag' => :'topCommentFlag',
        :'bottom_comment_flag' => :'bottomCommentFlag',
        :'work_role' => :'workRole',
        :'work_type' => :'workType',
        :'project_type' => :'projectType',
        :'invoice_template' => :'invoiceTemplate',
        :'bill_time' => :'billTime',
        :'bill_expenses' => :'billExpenses',
        :'bill_products' => :'billProducts',
        :'billable_time_invoice_flag' => :'billableTimeInvoiceFlag',
        :'billable_expense_invoice_flag' => :'billableExpenseInvoiceFlag',
        :'billable_product_invoice_flag' => :'billableProductInvoiceFlag',
        :'copy_work_roles_flag' => :'copyWorkRolesFlag',
        :'copy_work_types_flag' => :'copyWorkTypesFlag',
        :'exclusion_work_role_ids' => :'exclusionWorkRoleIds',
        :'add_all_work_role_exclusions' => :'addAllWorkRoleExclusions',
        :'remove_all_work_role_exclusions' => :'removeAllWorkRoleExclusions',
        :'exclusion_work_type_ids' => :'exclusionWorkTypeIds',
        :'add_all_work_type_exclusions' => :'addAllWorkTypeExclusions',
        :'remove_all_work_type_exclusions' => :'removeAllWorkTypeExclusions',
        :'integration_x_ref' => :'integrationXRef',
        :'prorate_flag' => :'prorateFlag',
        :'email_template' => :'emailTemplate',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'prefix_suffix_option' => :'String',
        :'default_flag' => :'BOOLEAN',
        :'inactive_flag' => :'BOOLEAN',
        :'pre_payment_flag' => :'BOOLEAN',
        :'invoice_pre_suffix' => :'String',
        :'location' => :'SystemLocationReference',
        :'department' => :'SystemDepartmentReference',
        :'restrict_location_flag' => :'BOOLEAN',
        :'restrict_department_flag' => :'BOOLEAN',
        :'sla' => :'SLAReference',
        :'application_units' => :'String',
        :'application_limit' => :'Float',
        :'application_cycle' => :'String',
        :'application_unlimited_flag' => :'BOOLEAN',
        :'one_time_flag' => :'BOOLEAN',
        :'cover_agreement_time_flag' => :'BOOLEAN',
        :'cover_agreement_product_flag' => :'BOOLEAN',
        :'cover_agreement_expense_flag' => :'BOOLEAN',
        :'cover_sales_tax_flag' => :'BOOLEAN',
        :'carry_over_unused_flag' => :'BOOLEAN',
        :'allow_overruns_flag' => :'BOOLEAN',
        :'expired_days' => :'Integer',
        :'limit' => :'Integer',
        :'expire_when_zero' => :'BOOLEAN',
        :'charge_to_firm_flag' => :'BOOLEAN',
        :'employee_comp_rate' => :'String',
        :'employee_comp_not_exceed' => :'String',
        :'comp_hourly_rate' => :'Float',
        :'comp_limit_amount' => :'Float',
        :'billing_cycle' => :'BillingCycleReference',
        :'bill_one_time_flag' => :'BOOLEAN',
        :'billing_terms' => :'BillingTermsReference',
        :'invoicing_cycle' => :'String',
        :'bill_amount' => :'Float',
        :'taxable_flag' => :'BOOLEAN',
        :'restrict_down_payment_flag' => :'BOOLEAN',
        :'invoice_description' => :'String',
        :'top_comment_flag' => :'BOOLEAN',
        :'bottom_comment_flag' => :'BOOLEAN',
        :'work_role' => :'WorkRoleReference',
        :'work_type' => :'WorkTypeReference',
        :'project_type' => :'ProjectTypeReference',
        :'invoice_template' => :'InvoiceTemplateReference',
        :'bill_time' => :'String',
        :'bill_expenses' => :'String',
        :'bill_products' => :'String',
        :'billable_time_invoice_flag' => :'BOOLEAN',
        :'billable_expense_invoice_flag' => :'BOOLEAN',
        :'billable_product_invoice_flag' => :'BOOLEAN',
        :'copy_work_roles_flag' => :'BOOLEAN',
        :'copy_work_types_flag' => :'BOOLEAN',
        :'exclusion_work_role_ids' => :'Array<Integer>',
        :'add_all_work_role_exclusions' => :'BOOLEAN',
        :'remove_all_work_role_exclusions' => :'BOOLEAN',
        :'exclusion_work_type_ids' => :'Array<Integer>',
        :'add_all_work_type_exclusions' => :'BOOLEAN',
        :'remove_all_work_type_exclusions' => :'BOOLEAN',
        :'integration_x_ref' => :'String',
        :'prorate_flag' => :'BOOLEAN',
        :'email_template' => :'EmailTemplateReference',
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

      if attributes.has_key?(:'prefixSuffixOption')
        self.prefix_suffix_option = attributes[:'prefixSuffixOption']
      end

      if attributes.has_key?(:'defaultFlag')
        self.default_flag = attributes[:'defaultFlag']
      end

      if attributes.has_key?(:'inactiveFlag')
        self.inactive_flag = attributes[:'inactiveFlag']
      end

      if attributes.has_key?(:'prePaymentFlag')
        self.pre_payment_flag = attributes[:'prePaymentFlag']
      end

      if attributes.has_key?(:'invoicePreSuffix')
        self.invoice_pre_suffix = attributes[:'invoicePreSuffix']
      end

      if attributes.has_key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.has_key?(:'department')
        self.department = attributes[:'department']
      end

      if attributes.has_key?(:'restrictLocationFlag')
        self.restrict_location_flag = attributes[:'restrictLocationFlag']
      end

      if attributes.has_key?(:'restrictDepartmentFlag')
        self.restrict_department_flag = attributes[:'restrictDepartmentFlag']
      end

      if attributes.has_key?(:'sla')
        self.sla = attributes[:'sla']
      end

      if attributes.has_key?(:'applicationUnits')
        self.application_units = attributes[:'applicationUnits']
      end

      if attributes.has_key?(:'applicationLimit')
        self.application_limit = attributes[:'applicationLimit']
      end

      if attributes.has_key?(:'applicationCycle')
        self.application_cycle = attributes[:'applicationCycle']
      end

      if attributes.has_key?(:'applicationUnlimitedFlag')
        self.application_unlimited_flag = attributes[:'applicationUnlimitedFlag']
      end

      if attributes.has_key?(:'oneTimeFlag')
        self.one_time_flag = attributes[:'oneTimeFlag']
      end

      if attributes.has_key?(:'coverAgreementTimeFlag')
        self.cover_agreement_time_flag = attributes[:'coverAgreementTimeFlag']
      end

      if attributes.has_key?(:'coverAgreementProductFlag')
        self.cover_agreement_product_flag = attributes[:'coverAgreementProductFlag']
      end

      if attributes.has_key?(:'coverAgreementExpenseFlag')
        self.cover_agreement_expense_flag = attributes[:'coverAgreementExpenseFlag']
      end

      if attributes.has_key?(:'coverSalesTaxFlag')
        self.cover_sales_tax_flag = attributes[:'coverSalesTaxFlag']
      end

      if attributes.has_key?(:'carryOverUnusedFlag')
        self.carry_over_unused_flag = attributes[:'carryOverUnusedFlag']
      end

      if attributes.has_key?(:'allowOverrunsFlag')
        self.allow_overruns_flag = attributes[:'allowOverrunsFlag']
      end

      if attributes.has_key?(:'expiredDays')
        self.expired_days = attributes[:'expiredDays']
      end

      if attributes.has_key?(:'limit')
        self.limit = attributes[:'limit']
      end

      if attributes.has_key?(:'expireWhenZero')
        self.expire_when_zero = attributes[:'expireWhenZero']
      end

      if attributes.has_key?(:'chargeToFirmFlag')
        self.charge_to_firm_flag = attributes[:'chargeToFirmFlag']
      end

      if attributes.has_key?(:'employeeCompRate')
        self.employee_comp_rate = attributes[:'employeeCompRate']
      end

      if attributes.has_key?(:'employeeCompNotExceed')
        self.employee_comp_not_exceed = attributes[:'employeeCompNotExceed']
      end

      if attributes.has_key?(:'compHourlyRate')
        self.comp_hourly_rate = attributes[:'compHourlyRate']
      end

      if attributes.has_key?(:'compLimitAmount')
        self.comp_limit_amount = attributes[:'compLimitAmount']
      end

      if attributes.has_key?(:'billingCycle')
        self.billing_cycle = attributes[:'billingCycle']
      end

      if attributes.has_key?(:'billOneTimeFlag')
        self.bill_one_time_flag = attributes[:'billOneTimeFlag']
      end

      if attributes.has_key?(:'billingTerms')
        self.billing_terms = attributes[:'billingTerms']
      end

      if attributes.has_key?(:'invoicingCycle')
        self.invoicing_cycle = attributes[:'invoicingCycle']
      end

      if attributes.has_key?(:'billAmount')
        self.bill_amount = attributes[:'billAmount']
      end

      if attributes.has_key?(:'taxableFlag')
        self.taxable_flag = attributes[:'taxableFlag']
      end

      if attributes.has_key?(:'restrictDownPaymentFlag')
        self.restrict_down_payment_flag = attributes[:'restrictDownPaymentFlag']
      end

      if attributes.has_key?(:'invoiceDescription')
        self.invoice_description = attributes[:'invoiceDescription']
      end

      if attributes.has_key?(:'topCommentFlag')
        self.top_comment_flag = attributes[:'topCommentFlag']
      end

      if attributes.has_key?(:'bottomCommentFlag')
        self.bottom_comment_flag = attributes[:'bottomCommentFlag']
      end

      if attributes.has_key?(:'workRole')
        self.work_role = attributes[:'workRole']
      end

      if attributes.has_key?(:'workType')
        self.work_type = attributes[:'workType']
      end

      if attributes.has_key?(:'projectType')
        self.project_type = attributes[:'projectType']
      end

      if attributes.has_key?(:'invoiceTemplate')
        self.invoice_template = attributes[:'invoiceTemplate']
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

      if attributes.has_key?(:'billableTimeInvoiceFlag')
        self.billable_time_invoice_flag = attributes[:'billableTimeInvoiceFlag']
      end

      if attributes.has_key?(:'billableExpenseInvoiceFlag')
        self.billable_expense_invoice_flag = attributes[:'billableExpenseInvoiceFlag']
      end

      if attributes.has_key?(:'billableProductInvoiceFlag')
        self.billable_product_invoice_flag = attributes[:'billableProductInvoiceFlag']
      end

      if attributes.has_key?(:'copyWorkRolesFlag')
        self.copy_work_roles_flag = attributes[:'copyWorkRolesFlag']
      end

      if attributes.has_key?(:'copyWorkTypesFlag')
        self.copy_work_types_flag = attributes[:'copyWorkTypesFlag']
      end

      if attributes.has_key?(:'exclusionWorkRoleIds')
        if (value = attributes[:'exclusionWorkRoleIds']).is_a?(Array)
          self.exclusion_work_role_ids = value
        end
      end

      if attributes.has_key?(:'addAllWorkRoleExclusions')
        self.add_all_work_role_exclusions = attributes[:'addAllWorkRoleExclusions']
      end

      if attributes.has_key?(:'removeAllWorkRoleExclusions')
        self.remove_all_work_role_exclusions = attributes[:'removeAllWorkRoleExclusions']
      end

      if attributes.has_key?(:'exclusionWorkTypeIds')
        if (value = attributes[:'exclusionWorkTypeIds']).is_a?(Array)
          self.exclusion_work_type_ids = value
        end
      end

      if attributes.has_key?(:'addAllWorkTypeExclusions')
        self.add_all_work_type_exclusions = attributes[:'addAllWorkTypeExclusions']
      end

      if attributes.has_key?(:'removeAllWorkTypeExclusions')
        self.remove_all_work_type_exclusions = attributes[:'removeAllWorkTypeExclusions']
      end

      if attributes.has_key?(:'integrationXRef')
        self.integration_x_ref = attributes[:'integrationXRef']
      end

      if attributes.has_key?(:'prorateFlag')
        self.prorate_flag = attributes[:'prorateFlag']
      end

      if attributes.has_key?(:'emailTemplate')
        self.email_template = attributes[:'emailTemplate']
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

      if !@invoice_pre_suffix.nil? && @invoice_pre_suffix.to_s.length > 5
        invalid_properties.push("invalid value for 'invoice_pre_suffix', the character length must be smaller than or equal to 5.")
      end

      if !@expired_days.nil? && @expired_days > 99999
        invalid_properties.push("invalid value for 'expired_days', must be smaller than or equal to 99999.")
      end

      if !@expired_days.nil? && @expired_days < -9999
        invalid_properties.push("invalid value for 'expired_days', must be greater than or equal to -9999.")
      end

      if !@limit.nil? && @limit > 99999
        invalid_properties.push("invalid value for 'limit', must be smaller than or equal to 99999.")
      end

      if !@limit.nil? && @limit < -9999
        invalid_properties.push("invalid value for 'limit', must be greater than or equal to -9999.")
      end

      if @employee_comp_rate.nil?
        invalid_properties.push("invalid value for 'employee_comp_rate', employee_comp_rate cannot be nil.")
      end

      if @employee_comp_not_exceed.nil?
        invalid_properties.push("invalid value for 'employee_comp_not_exceed', employee_comp_not_exceed cannot be nil.")
      end

      if @invoicing_cycle.nil?
        invalid_properties.push("invalid value for 'invoicing_cycle', invoicing_cycle cannot be nil.")
      end

      if !@invoice_description.nil? && @invoice_description.to_s.length > 4000
        invalid_properties.push("invalid value for 'invoice_description', the character length must be smaller than or equal to 4000.")
      end

      if @bill_time.nil?
        invalid_properties.push("invalid value for 'bill_time', bill_time cannot be nil.")
      end

      if @bill_expenses.nil?
        invalid_properties.push("invalid value for 'bill_expenses', bill_expenses cannot be nil.")
      end

      if @bill_products.nil?
        invalid_properties.push("invalid value for 'bill_products', bill_products cannot be nil.")
      end

      if !@integration_x_ref.nil? && @integration_x_ref.to_s.length > 50
        invalid_properties.push("invalid value for 'integration_x_ref', the character length must be smaller than or equal to 50.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 50
      prefix_suffix_option_validator = EnumAttributeValidator.new('String', ["Prefix", "Suffix"])
      return false unless prefix_suffix_option_validator.valid?(@prefix_suffix_option)
      return false if !@invoice_pre_suffix.nil? && @invoice_pre_suffix.to_s.length > 5
      application_units_validator = EnumAttributeValidator.new('String', ["Amount", "Hours", "Incidents"])
      return false unless application_units_validator.valid?(@application_units)
      application_cycle_validator = EnumAttributeValidator.new('String', ["Contract2Weeks", "Contract4Weeks", "ContractYear", "CalendarMonth", "CalendarQuarter", "CalendarWeek", "ContractQuarter", "CalendarYear"])
      return false unless application_cycle_validator.valid?(@application_cycle)
      return false if !@expired_days.nil? && @expired_days > 99999
      return false if !@expired_days.nil? && @expired_days < -9999
      return false if !@limit.nil? && @limit > 99999
      return false if !@limit.nil? && @limit < -9999
      return false if @employee_comp_rate.nil?
      employee_comp_rate_validator = EnumAttributeValidator.new('String', ["Actual", "Hourly"])
      return false unless employee_comp_rate_validator.valid?(@employee_comp_rate)
      return false if @employee_comp_not_exceed.nil?
      employee_comp_not_exceed_validator = EnumAttributeValidator.new('String', ["Billing", "Percent", "Amount"])
      return false unless employee_comp_not_exceed_validator.valid?(@employee_comp_not_exceed)
      return false if @invoicing_cycle.nil?
      invoicing_cycle_validator = EnumAttributeValidator.new('String', ["CalendarYear", "ContractYear"])
      return false unless invoicing_cycle_validator.valid?(@invoicing_cycle)
      return false if !@invoice_description.nil? && @invoice_description.to_s.length > 4000
      return false if @bill_time.nil?
      bill_time_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      return false unless bill_time_validator.valid?(@bill_time)
      return false if @bill_expenses.nil?
      bill_expenses_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      return false unless bill_expenses_validator.valid?(@bill_expenses)
      return false if @bill_products.nil?
      bill_products_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      return false unless bill_products_validator.valid?(@bill_products)
      return false if !@integration_x_ref.nil? && @integration_x_ref.to_s.length > 50
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] prefix_suffix_option Object to be assigned
    def prefix_suffix_option=(prefix_suffix_option)
      validator = EnumAttributeValidator.new('String', ["Prefix", "Suffix"])
      unless validator.valid?(prefix_suffix_option)
        fail ArgumentError, "invalid value for 'prefix_suffix_option', must be one of #{validator.allowable_values}."
      end
      @prefix_suffix_option = prefix_suffix_option
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice_pre_suffix Value to be assigned
    def invoice_pre_suffix=(invoice_pre_suffix)

      if !invoice_pre_suffix.nil? && invoice_pre_suffix.to_s.length > 5
        fail ArgumentError, "invalid value for 'invoice_pre_suffix', the character length must be smaller than or equal to 5."
      end

      @invoice_pre_suffix = invoice_pre_suffix
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application_units Object to be assigned
    def application_units=(application_units)
      validator = EnumAttributeValidator.new('String', ["Amount", "Hours", "Incidents"])
      unless validator.valid?(application_units)
        fail ArgumentError, "invalid value for 'application_units', must be one of #{validator.allowable_values}."
      end
      @application_units = application_units
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application_cycle Object to be assigned
    def application_cycle=(application_cycle)
      validator = EnumAttributeValidator.new('String', ["Contract2Weeks", "Contract4Weeks", "ContractYear", "CalendarMonth", "CalendarQuarter", "CalendarWeek", "ContractQuarter", "CalendarYear"])
      unless validator.valid?(application_cycle)
        fail ArgumentError, "invalid value for 'application_cycle', must be one of #{validator.allowable_values}."
      end
      @application_cycle = application_cycle
    end

    # Custom attribute writer method with validation
    # @param [Object] expired_days Value to be assigned
    def expired_days=(expired_days)

      if !expired_days.nil? && expired_days > 99999
        fail ArgumentError, "invalid value for 'expired_days', must be smaller than or equal to 99999."
      end

      if !expired_days.nil? && expired_days < -9999
        fail ArgumentError, "invalid value for 'expired_days', must be greater than or equal to -9999."
      end

      @expired_days = expired_days
    end

    # Custom attribute writer method with validation
    # @param [Object] limit Value to be assigned
    def limit=(limit)

      if !limit.nil? && limit > 99999
        fail ArgumentError, "invalid value for 'limit', must be smaller than or equal to 99999."
      end

      if !limit.nil? && limit < -9999
        fail ArgumentError, "invalid value for 'limit', must be greater than or equal to -9999."
      end

      @limit = limit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] employee_comp_rate Object to be assigned
    def employee_comp_rate=(employee_comp_rate)
      validator = EnumAttributeValidator.new('String', ["Actual", "Hourly"])
      unless validator.valid?(employee_comp_rate)
        fail ArgumentError, "invalid value for 'employee_comp_rate', must be one of #{validator.allowable_values}."
      end
      @employee_comp_rate = employee_comp_rate
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] employee_comp_not_exceed Object to be assigned
    def employee_comp_not_exceed=(employee_comp_not_exceed)
      validator = EnumAttributeValidator.new('String', ["Billing", "Percent", "Amount"])
      unless validator.valid?(employee_comp_not_exceed)
        fail ArgumentError, "invalid value for 'employee_comp_not_exceed', must be one of #{validator.allowable_values}."
      end
      @employee_comp_not_exceed = employee_comp_not_exceed
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoicing_cycle Object to be assigned
    def invoicing_cycle=(invoicing_cycle)
      validator = EnumAttributeValidator.new('String', ["CalendarYear", "ContractYear"])
      unless validator.valid?(invoicing_cycle)
        fail ArgumentError, "invalid value for 'invoicing_cycle', must be one of #{validator.allowable_values}."
      end
      @invoicing_cycle = invoicing_cycle
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice_description Value to be assigned
    def invoice_description=(invoice_description)

      if !invoice_description.nil? && invoice_description.to_s.length > 4000
        fail ArgumentError, "invalid value for 'invoice_description', the character length must be smaller than or equal to 4000."
      end

      @invoice_description = invoice_description
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

    # Custom attribute writer method with validation
    # @param [Object] integration_x_ref Value to be assigned
    def integration_x_ref=(integration_x_ref)

      if !integration_x_ref.nil? && integration_x_ref.to_s.length > 50
        fail ArgumentError, "invalid value for 'integration_x_ref', the character length must be smaller than or equal to 50."
      end

      @integration_x_ref = integration_x_ref
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          prefix_suffix_option == o.prefix_suffix_option &&
          default_flag == o.default_flag &&
          inactive_flag == o.inactive_flag &&
          pre_payment_flag == o.pre_payment_flag &&
          invoice_pre_suffix == o.invoice_pre_suffix &&
          location == o.location &&
          department == o.department &&
          restrict_location_flag == o.restrict_location_flag &&
          restrict_department_flag == o.restrict_department_flag &&
          sla == o.sla &&
          application_units == o.application_units &&
          application_limit == o.application_limit &&
          application_cycle == o.application_cycle &&
          application_unlimited_flag == o.application_unlimited_flag &&
          one_time_flag == o.one_time_flag &&
          cover_agreement_time_flag == o.cover_agreement_time_flag &&
          cover_agreement_product_flag == o.cover_agreement_product_flag &&
          cover_agreement_expense_flag == o.cover_agreement_expense_flag &&
          cover_sales_tax_flag == o.cover_sales_tax_flag &&
          carry_over_unused_flag == o.carry_over_unused_flag &&
          allow_overruns_flag == o.allow_overruns_flag &&
          expired_days == o.expired_days &&
          limit == o.limit &&
          expire_when_zero == o.expire_when_zero &&
          charge_to_firm_flag == o.charge_to_firm_flag &&
          employee_comp_rate == o.employee_comp_rate &&
          employee_comp_not_exceed == o.employee_comp_not_exceed &&
          comp_hourly_rate == o.comp_hourly_rate &&
          comp_limit_amount == o.comp_limit_amount &&
          billing_cycle == o.billing_cycle &&
          bill_one_time_flag == o.bill_one_time_flag &&
          billing_terms == o.billing_terms &&
          invoicing_cycle == o.invoicing_cycle &&
          bill_amount == o.bill_amount &&
          taxable_flag == o.taxable_flag &&
          restrict_down_payment_flag == o.restrict_down_payment_flag &&
          invoice_description == o.invoice_description &&
          top_comment_flag == o.top_comment_flag &&
          bottom_comment_flag == o.bottom_comment_flag &&
          work_role == o.work_role &&
          work_type == o.work_type &&
          project_type == o.project_type &&
          invoice_template == o.invoice_template &&
          bill_time == o.bill_time &&
          bill_expenses == o.bill_expenses &&
          bill_products == o.bill_products &&
          billable_time_invoice_flag == o.billable_time_invoice_flag &&
          billable_expense_invoice_flag == o.billable_expense_invoice_flag &&
          billable_product_invoice_flag == o.billable_product_invoice_flag &&
          copy_work_roles_flag == o.copy_work_roles_flag &&
          copy_work_types_flag == o.copy_work_types_flag &&
          exclusion_work_role_ids == o.exclusion_work_role_ids &&
          add_all_work_role_exclusions == o.add_all_work_role_exclusions &&
          remove_all_work_role_exclusions == o.remove_all_work_role_exclusions &&
          exclusion_work_type_ids == o.exclusion_work_type_ids &&
          add_all_work_type_exclusions == o.add_all_work_type_exclusions &&
          remove_all_work_type_exclusions == o.remove_all_work_type_exclusions &&
          integration_x_ref == o.integration_x_ref &&
          prorate_flag == o.prorate_flag &&
          email_template == o.email_template &&
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
      [id, name, prefix_suffix_option, default_flag, inactive_flag, pre_payment_flag, invoice_pre_suffix, location, department, restrict_location_flag, restrict_department_flag, sla, application_units, application_limit, application_cycle, application_unlimited_flag, one_time_flag, cover_agreement_time_flag, cover_agreement_product_flag, cover_agreement_expense_flag, cover_sales_tax_flag, carry_over_unused_flag, allow_overruns_flag, expired_days, limit, expire_when_zero, charge_to_firm_flag, employee_comp_rate, employee_comp_not_exceed, comp_hourly_rate, comp_limit_amount, billing_cycle, bill_one_time_flag, billing_terms, invoicing_cycle, bill_amount, taxable_flag, restrict_down_payment_flag, invoice_description, top_comment_flag, bottom_comment_flag, work_role, work_type, project_type, invoice_template, bill_time, bill_expenses, bill_products, billable_time_invoice_flag, billable_expense_invoice_flag, billable_product_invoice_flag, copy_work_roles_flag, copy_work_types_flag, exclusion_work_role_ids, add_all_work_role_exclusions, remove_all_work_role_exclusions, exclusion_work_type_ids, add_all_work_type_exclusions, remove_all_work_type_exclusions, integration_x_ref, prorate_flag, email_template, _info].hash
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
