
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::ExpenseTypeExternalIntegrationReferencesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
RSpec.describe 'ExpenseTypeExternalIntegrationReferencesApi' do
  before do
    # run before each test
    @instance = ConnectWise::ExpenseTypeExternalIntegrationReferencesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ExpenseTypeExternalIntegrationReferencesApi' do
    it 'should create an instance of ExpenseTypeExternalIntegrationReferencesApi' do
      expect(@instance).to be_instance_of(ConnectWise::ExpenseTypeExternalIntegrationReferencesApi)
    end
  end

  # unit tests for expense_expense_type_external_integration_references_count_get
  #
  # Get External Integration Reference Count
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @return [Count]
  describe 'expense_expense_type_external_integration_references_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for expense_expense_type_external_integration_references_get
  #
  # Get External Integration Referencet
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @option opts [String] :order_by
  # @option opts [String] :childconditions
  # @option opts [String] :customfieldconditions
  # @option opts [Integer] :page
  # @option opts [Integer] :page_size
  # @return [Array<ExpenseTypeExternalIntegrationReference>]
  describe 'expense_expense_type_external_integration_references_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for expense_expense_type_external_integration_references_id_get
  #
  # Get External Integration Reference By Id
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [ExpenseTypeExternalIntegrationReference]
  describe 'expense_expense_type_external_integration_references_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
