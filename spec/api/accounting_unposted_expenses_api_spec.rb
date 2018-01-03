
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::AccountingUnpostedExpensesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AccountingUnpostedExpensesApi' do
  before do
    # run before each test
    @instance = ConnectWise::AccountingUnpostedExpensesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountingUnpostedExpensesApi' do
    it 'should create an instance of AccountingUnpostedExpensesApi' do
      expect(@instance).to be_instance_of(ConnectWise::AccountingUnpostedExpensesApi)
    end
  end

  # unit tests for finance_accounting_unpostedexpenses_count_get
  # 
  # Get Unposted Expenses Count
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @return [Count]
  describe 'finance_accounting_unpostedexpenses_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for finance_accounting_unpostedexpenses_get
  # 
  # Get Unposted Expenses
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :order_by 
  # @option opts [String] :childconditions 
  # @option opts [String] :customfieldconditions 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @return [Array<UnpostedExpense>]
  describe 'finance_accounting_unpostedexpenses_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for finance_accounting_unpostedexpenses_id_get
  # 
  # Get Unposted Expense By Id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [UnpostedExpense]
  describe 'finance_accounting_unpostedexpenses_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
