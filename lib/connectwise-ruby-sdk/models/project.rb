
require 'date'

module ConnectWise

  class Project
    attr_accessor :id

    # Metadata of the entity
    attr_accessor :_info

    attr_accessor :actual_end

    attr_accessor :actual_hours

    attr_accessor :actual_start

    attr_accessor :agreement

    attr_accessor :bill_expenses

    attr_accessor :billing_amount

    attr_accessor :billing_attention

    attr_accessor :billing_method

    attr_accessor :billing_rate_type

    attr_accessor :billing_terms

    attr_accessor :bill_products

    attr_accessor :bill_project_after_closed_flag

    attr_accessor :bill_time

    attr_accessor :bill_to_company

    attr_accessor :bill_to_contact

    attr_accessor :bill_to_site

    attr_accessor :bill_unapproved_time_and_expense

    attr_accessor :board

    attr_accessor :budget_analysis

    attr_accessor :budget_flag

    attr_accessor :budget_hours

    attr_accessor :business_unit_id

    attr_accessor :company

    attr_accessor :contact

    attr_accessor :customer_po

    attr_accessor :description

    attr_accessor :currency

    attr_accessor :downpayment

    attr_accessor :estimated_end

    attr_accessor :estimated_expense_revenue

    attr_accessor :estimated_hours

    attr_accessor :estimated_product_revenue

    attr_accessor :estimated_start

    attr_accessor :estimated_time_revenue

    attr_accessor :expense_approver

    attr_accessor :include_dependencies_flag

    attr_accessor :include_estimates_flag

    attr_accessor :location_id

    attr_accessor :manager

    attr_accessor :name

    attr_accessor :opportunity

    attr_accessor :project_template_id

    attr_accessor :restrict_down_payment_flag

    attr_accessor :scheduled_end

    attr_accessor :scheduled_hours

    attr_accessor :scheduled_start

    attr_accessor :ship_to_company

    attr_accessor :ship_to_contact

    attr_accessor :ship_to_site

    attr_accessor :site

    attr_accessor :status

    attr_accessor :time_approver

    attr_accessor :type

    attr_accessor :do_not_display_in_portal_flag

    attr_accessor :billing_start_date

    attr_accessor :estimated_time_cost

    attr_accessor :estimated_expense_cost

    attr_accessor :estimated_product_cost

    attr_accessor :tax_code

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
        :'_info' => :'_info',
        :'actual_end' => :'actualEnd',
        :'actual_hours' => :'actualHours',
        :'actual_start' => :'actualStart',
        :'agreement' => :'agreement',
        :'bill_expenses' => :'billExpenses',
        :'billing_amount' => :'billingAmount',
        :'billing_attention' => :'billingAttention',
        :'billing_method' => :'billingMethod',
        :'billing_rate_type' => :'billingRateType',
        :'billing_terms' => :'billingTerms',
        :'bill_products' => :'billProducts',
        :'bill_project_after_closed_flag' => :'billProjectAfterClosedFlag',
        :'bill_time' => :'billTime',
        :'bill_to_company' => :'billToCompany',
        :'bill_to_contact' => :'billToContact',
        :'bill_to_site' => :'billToSite',
        :'bill_unapproved_time_and_expense' => :'billUnapprovedTimeAndExpense',
        :'board' => :'board',
        :'budget_analysis' => :'budgetAnalysis',
        :'budget_flag' => :'budgetFlag',
        :'budget_hours' => :'budgetHours',
        :'business_unit_id' => :'businessUnitId',
        :'company' => :'company',
        :'contact' => :'contact',
        :'customer_po' => :'customerPO',
        :'description' => :'description',
        :'currency' => :'currency',
        :'downpayment' => :'downpayment',
        :'estimated_end' => :'estimatedEnd',
        :'estimated_expense_revenue' => :'estimatedExpenseRevenue',
        :'estimated_hours' => :'estimatedHours',
        :'estimated_product_revenue' => :'estimatedProductRevenue',
        :'estimated_start' => :'estimatedStart',
        :'estimated_time_revenue' => :'estimatedTimeRevenue',
        :'expense_approver' => :'expenseApprover',
        :'include_dependencies_flag' => :'includeDependenciesFlag',
        :'include_estimates_flag' => :'includeEstimatesFlag',
        :'location_id' => :'locationId',
        :'manager' => :'manager',
        :'name' => :'name',
        :'opportunity' => :'opportunity',
        :'project_template_id' => :'projectTemplateId',
        :'restrict_down_payment_flag' => :'restrictDownPaymentFlag',
        :'scheduled_end' => :'scheduledEnd',
        :'scheduled_hours' => :'scheduledHours',
        :'scheduled_start' => :'scheduledStart',
        :'ship_to_company' => :'shipToCompany',
        :'ship_to_contact' => :'shipToContact',
        :'ship_to_site' => :'shipToSite',
        :'site' => :'site',
        :'status' => :'status',
        :'time_approver' => :'timeApprover',
        :'type' => :'type',
        :'do_not_display_in_portal_flag' => :'doNotDisplayInPortalFlag',
        :'billing_start_date' => :'billingStartDate',
        :'estimated_time_cost' => :'estimatedTimeCost',
        :'estimated_expense_cost' => :'estimatedExpenseCost',
        :'estimated_product_cost' => :'estimatedProductCost',
        :'tax_code' => :'taxCode'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'_info' => :'Metadata',
        :'actual_end' => :'DateTime',
        :'actual_hours' => :'Float',
        :'actual_start' => :'DateTime',
        :'agreement' => :'AgreementReference',
        :'bill_expenses' => :'String',
        :'billing_amount' => :'Float',
        :'billing_attention' => :'String',
        :'billing_method' => :'String',
        :'billing_rate_type' => :'String',
        :'billing_terms' => :'BillingTermsReference',
        :'bill_products' => :'String',
        :'bill_project_after_closed_flag' => :'BOOLEAN',
        :'bill_time' => :'String',
        :'bill_to_company' => :'CompanyReference',
        :'bill_to_contact' => :'ContactReference',
        :'bill_to_site' => :'SiteReference',
        :'bill_unapproved_time_and_expense' => :'BOOLEAN',
        :'board' => :'ProjectBoardReference',
        :'budget_analysis' => :'String',
        :'budget_flag' => :'BOOLEAN',
        :'budget_hours' => :'Float',
        :'business_unit_id' => :'Integer',
        :'company' => :'CompanyReference',
        :'contact' => :'ContactReference',
        :'customer_po' => :'String',
        :'description' => :'String',
        :'currency' => :'CurrencyReference',
        :'downpayment' => :'Float',
        :'estimated_end' => :'DateTime',
        :'estimated_expense_revenue' => :'Float',
        :'estimated_hours' => :'Float',
        :'estimated_product_revenue' => :'Float',
        :'estimated_start' => :'DateTime',
        :'estimated_time_revenue' => :'Float',
        :'expense_approver' => :'MemberReference',
        :'include_dependencies_flag' => :'BOOLEAN',
        :'include_estimates_flag' => :'BOOLEAN',
        :'location_id' => :'Integer',
        :'manager' => :'MemberReference',
        :'name' => :'String',
        :'opportunity' => :'OpportunityReference',
        :'project_template_id' => :'Integer',
        :'restrict_down_payment_flag' => :'BOOLEAN',
        :'scheduled_end' => :'DateTime',
        :'scheduled_hours' => :'Float',
        :'scheduled_start' => :'DateTime',
        :'ship_to_company' => :'CompanyReference',
        :'ship_to_contact' => :'ContactReference',
        :'ship_to_site' => :'SiteReference',
        :'site' => :'SiteReference',
        :'status' => :'ProjectStatusReference',
        :'time_approver' => :'MemberReference',
        :'type' => :'ProjectTypeReference',
        :'do_not_display_in_portal_flag' => :'BOOLEAN',
        :'billing_start_date' => :'DateTime',
        :'estimated_time_cost' => :'Float',
        :'estimated_expense_cost' => :'Float',
        :'estimated_product_cost' => :'Float',
        :'tax_code' => :'TaxCodeReference'
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

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

      if attributes.has_key?(:'actualEnd')
        self.actual_end = attributes[:'actualEnd']
      end

      if attributes.has_key?(:'actualHours')
        self.actual_hours = attributes[:'actualHours']
      end

      if attributes.has_key?(:'actualStart')
        self.actual_start = attributes[:'actualStart']
      end

      if attributes.has_key?(:'agreement')
        self.agreement = attributes[:'agreement']
      end

      if attributes.has_key?(:'billExpenses')
        self.bill_expenses = attributes[:'billExpenses']
      end

      if attributes.has_key?(:'billingAmount')
        self.billing_amount = attributes[:'billingAmount']
      end

      if attributes.has_key?(:'billingAttention')
        self.billing_attention = attributes[:'billingAttention']
      end

      if attributes.has_key?(:'billingMethod')
        self.billing_method = attributes[:'billingMethod']
      end

      if attributes.has_key?(:'billingRateType')
        self.billing_rate_type = attributes[:'billingRateType']
      end

      if attributes.has_key?(:'billingTerms')
        self.billing_terms = attributes[:'billingTerms']
      end

      if attributes.has_key?(:'billProducts')
        self.bill_products = attributes[:'billProducts']
      end

      if attributes.has_key?(:'billProjectAfterClosedFlag')
        self.bill_project_after_closed_flag = attributes[:'billProjectAfterClosedFlag']
      end

      if attributes.has_key?(:'billTime')
        self.bill_time = attributes[:'billTime']
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

      if attributes.has_key?(:'billUnapprovedTimeAndExpense')
        self.bill_unapproved_time_and_expense = attributes[:'billUnapprovedTimeAndExpense']
      end

      if attributes.has_key?(:'board')
        self.board = attributes[:'board']
      end

      if attributes.has_key?(:'budgetAnalysis')
        self.budget_analysis = attributes[:'budgetAnalysis']
      end

      if attributes.has_key?(:'budgetFlag')
        self.budget_flag = attributes[:'budgetFlag']
      end

      if attributes.has_key?(:'budgetHours')
        self.budget_hours = attributes[:'budgetHours']
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

      if attributes.has_key?(:'customerPO')
        self.customer_po = attributes[:'customerPO']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'downpayment')
        self.downpayment = attributes[:'downpayment']
      end

      if attributes.has_key?(:'estimatedEnd')
        self.estimated_end = attributes[:'estimatedEnd']
      end

      if attributes.has_key?(:'estimatedExpenseRevenue')
        self.estimated_expense_revenue = attributes[:'estimatedExpenseRevenue']
      end

      if attributes.has_key?(:'estimatedHours')
        self.estimated_hours = attributes[:'estimatedHours']
      end

      if attributes.has_key?(:'estimatedProductRevenue')
        self.estimated_product_revenue = attributes[:'estimatedProductRevenue']
      end

      if attributes.has_key?(:'estimatedStart')
        self.estimated_start = attributes[:'estimatedStart']
      end

      if attributes.has_key?(:'estimatedTimeRevenue')
        self.estimated_time_revenue = attributes[:'estimatedTimeRevenue']
      end

      if attributes.has_key?(:'expenseApprover')
        self.expense_approver = attributes[:'expenseApprover']
      end

      if attributes.has_key?(:'includeDependenciesFlag')
        self.include_dependencies_flag = attributes[:'includeDependenciesFlag']
      end

      if attributes.has_key?(:'includeEstimatesFlag')
        self.include_estimates_flag = attributes[:'includeEstimatesFlag']
      end

      if attributes.has_key?(:'locationId')
        self.location_id = attributes[:'locationId']
      end

      if attributes.has_key?(:'manager')
        self.manager = attributes[:'manager']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'opportunity')
        self.opportunity = attributes[:'opportunity']
      end

      if attributes.has_key?(:'projectTemplateId')
        self.project_template_id = attributes[:'projectTemplateId']
      end

      if attributes.has_key?(:'restrictDownPaymentFlag')
        self.restrict_down_payment_flag = attributes[:'restrictDownPaymentFlag']
      end

      if attributes.has_key?(:'scheduledEnd')
        self.scheduled_end = attributes[:'scheduledEnd']
      end

      if attributes.has_key?(:'scheduledHours')
        self.scheduled_hours = attributes[:'scheduledHours']
      end

      if attributes.has_key?(:'scheduledStart')
        self.scheduled_start = attributes[:'scheduledStart']
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

      if attributes.has_key?(:'site')
        self.site = attributes[:'site']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'timeApprover')
        self.time_approver = attributes[:'timeApprover']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'doNotDisplayInPortalFlag')
        self.do_not_display_in_portal_flag = attributes[:'doNotDisplayInPortalFlag']
      end

      if attributes.has_key?(:'billingStartDate')
        self.billing_start_date = attributes[:'billingStartDate']
      end

      if attributes.has_key?(:'estimatedTimeCost')
        self.estimated_time_cost = attributes[:'estimatedTimeCost']
      end

      if attributes.has_key?(:'estimatedExpenseCost')
        self.estimated_expense_cost = attributes[:'estimatedExpenseCost']
      end

      if attributes.has_key?(:'estimatedProductCost')
        self.estimated_product_cost = attributes[:'estimatedProductCost']
      end

      if attributes.has_key?(:'taxCode')
        self.tax_code = attributes[:'taxCode']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@billing_attention.nil? && @billing_attention.to_s.length > 50
        invalid_properties.push("invalid value for 'billing_attention', the character length must be smaller than or equal to 50.")
      end

      if @billing_method.nil?
        invalid_properties.push("invalid value for 'billing_method', billing_method cannot be nil.")
      end

      if @board.nil?
        invalid_properties.push("invalid value for 'board', board cannot be nil.")
      end

      if @company.nil?
        invalid_properties.push("invalid value for 'company', company cannot be nil.")
      end

      if !@customer_po.nil? && @customer_po.to_s.length > 50
        invalid_properties.push("invalid value for 'customer_po', the character length must be smaller than or equal to 50.")
      end

      if @estimated_end.nil?
        invalid_properties.push("invalid value for 'estimated_end', estimated_end cannot be nil.")
      end

      if @estimated_start.nil?
        invalid_properties.push("invalid value for 'estimated_start', estimated_start cannot be nil.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @name.to_s.length > 100
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 100.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      bill_expenses_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      return false unless bill_expenses_validator.valid?(@bill_expenses)
      return false if !@billing_attention.nil? && @billing_attention.to_s.length > 50
      return false if @billing_method.nil?
      billing_method_validator = EnumAttributeValidator.new('String', ["ActualRates", "FixedFee", "NotToExceed", "OverrideRate"])
      return false unless billing_method_validator.valid?(@billing_method)
      billing_rate_type_validator = EnumAttributeValidator.new('String', ["WorkRole", "StaffMember"])
      return false unless billing_rate_type_validator.valid?(@billing_rate_type)
      bill_products_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      return false unless bill_products_validator.valid?(@bill_products)
      bill_time_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      return false unless bill_time_validator.valid?(@bill_time)
      return false if @board.nil?
      budget_analysis_validator = EnumAttributeValidator.new('String', ["ActualHours", "BillableHours"])
      return false unless budget_analysis_validator.valid?(@budget_analysis)
      return false if @company.nil?
      return false if !@customer_po.nil? && @customer_po.to_s.length > 50
      return false if @estimated_end.nil?
      return false if @estimated_start.nil?
      return false if @name.nil?
      return false if @name.to_s.length > 100
      return true
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

    # Custom attribute writer method with validation
    # @param [Object] billing_attention Value to be assigned
    def billing_attention=(billing_attention)

      if !billing_attention.nil? && billing_attention.to_s.length > 50
        fail ArgumentError, "invalid value for 'billing_attention', the character length must be smaller than or equal to 50."
      end

      @billing_attention = billing_attention
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_method Object to be assigned
    def billing_method=(billing_method)
      validator = EnumAttributeValidator.new('String', ["ActualRates", "FixedFee", "NotToExceed", "OverrideRate"])
      unless validator.valid?(billing_method)
        fail ArgumentError, "invalid value for 'billing_method', must be one of #{validator.allowable_values}."
      end
      @billing_method = billing_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_rate_type Object to be assigned
    def billing_rate_type=(billing_rate_type)
      validator = EnumAttributeValidator.new('String', ["WorkRole", "StaffMember"])
      unless validator.valid?(billing_rate_type)
        fail ArgumentError, "invalid value for 'billing_rate_type', must be one of #{validator.allowable_values}."
      end
      @billing_rate_type = billing_rate_type
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
    # @param [Object] bill_time Object to be assigned
    def bill_time=(bill_time)
      validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      unless validator.valid?(bill_time)
        fail ArgumentError, "invalid value for 'bill_time', must be one of #{validator.allowable_values}."
      end
      @bill_time = bill_time
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] budget_analysis Object to be assigned
    def budget_analysis=(budget_analysis)
      validator = EnumAttributeValidator.new('String', ["ActualHours", "BillableHours"])
      unless validator.valid?(budget_analysis)
        fail ArgumentError, "invalid value for 'budget_analysis', must be one of #{validator.allowable_values}."
      end
      @budget_analysis = budget_analysis
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_po Value to be assigned
    def customer_po=(customer_po)

      if !customer_po.nil? && customer_po.to_s.length > 50
        fail ArgumentError, "invalid value for 'customer_po', the character length must be smaller than or equal to 50."
      end

      @customer_po = customer_po
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          _info == o._info &&
          actual_end == o.actual_end &&
          actual_hours == o.actual_hours &&
          actual_start == o.actual_start &&
          agreement == o.agreement &&
          bill_expenses == o.bill_expenses &&
          billing_amount == o.billing_amount &&
          billing_attention == o.billing_attention &&
          billing_method == o.billing_method &&
          billing_rate_type == o.billing_rate_type &&
          billing_terms == o.billing_terms &&
          bill_products == o.bill_products &&
          bill_project_after_closed_flag == o.bill_project_after_closed_flag &&
          bill_time == o.bill_time &&
          bill_to_company == o.bill_to_company &&
          bill_to_contact == o.bill_to_contact &&
          bill_to_site == o.bill_to_site &&
          bill_unapproved_time_and_expense == o.bill_unapproved_time_and_expense &&
          board == o.board &&
          budget_analysis == o.budget_analysis &&
          budget_flag == o.budget_flag &&
          budget_hours == o.budget_hours &&
          business_unit_id == o.business_unit_id &&
          company == o.company &&
          contact == o.contact &&
          customer_po == o.customer_po &&
          description == o.description &&
          currency == o.currency &&
          downpayment == o.downpayment &&
          estimated_end == o.estimated_end &&
          estimated_expense_revenue == o.estimated_expense_revenue &&
          estimated_hours == o.estimated_hours &&
          estimated_product_revenue == o.estimated_product_revenue &&
          estimated_start == o.estimated_start &&
          estimated_time_revenue == o.estimated_time_revenue &&
          expense_approver == o.expense_approver &&
          include_dependencies_flag == o.include_dependencies_flag &&
          include_estimates_flag == o.include_estimates_flag &&
          location_id == o.location_id &&
          manager == o.manager &&
          name == o.name &&
          opportunity == o.opportunity &&
          project_template_id == o.project_template_id &&
          restrict_down_payment_flag == o.restrict_down_payment_flag &&
          scheduled_end == o.scheduled_end &&
          scheduled_hours == o.scheduled_hours &&
          scheduled_start == o.scheduled_start &&
          ship_to_company == o.ship_to_company &&
          ship_to_contact == o.ship_to_contact &&
          ship_to_site == o.ship_to_site &&
          site == o.site &&
          status == o.status &&
          time_approver == o.time_approver &&
          type == o.type &&
          do_not_display_in_portal_flag == o.do_not_display_in_portal_flag &&
          billing_start_date == o.billing_start_date &&
          estimated_time_cost == o.estimated_time_cost &&
          estimated_expense_cost == o.estimated_expense_cost &&
          estimated_product_cost == o.estimated_product_cost &&
          tax_code == o.tax_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, _info, actual_end, actual_hours, actual_start, agreement, bill_expenses, billing_amount, billing_attention, billing_method, billing_rate_type, billing_terms, bill_products, bill_project_after_closed_flag, bill_time, bill_to_company, bill_to_contact, bill_to_site, bill_unapproved_time_and_expense, board, budget_analysis, budget_flag, budget_hours, business_unit_id, company, contact, customer_po, description, currency, downpayment, estimated_end, estimated_expense_revenue, estimated_hours, estimated_product_revenue, estimated_start, estimated_time_revenue, expense_approver, include_dependencies_flag, include_estimates_flag, location_id, manager, name, opportunity, project_template_id, restrict_down_payment_flag, scheduled_end, scheduled_hours, scheduled_start, ship_to_company, ship_to_contact, ship_to_site, site, status, time_approver, type, do_not_display_in_portal_flag, billing_start_date, estimated_time_cost, estimated_expense_cost, estimated_product_cost, tax_code].hash
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
