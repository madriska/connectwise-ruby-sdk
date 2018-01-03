
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::InvoicesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InvoicesApi' do
  before do
    # run before each test
    @instance = ConnectWise::InvoicesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InvoicesApi' do
    it 'should create an instance of InvoicesApi' do
      expect(@instance).to be_instance_of(ConnectWise::InvoicesApi)
    end
  end

  # unit tests for finance_invoices_count_get
  # 
  # Get Invoices Count
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :custom_field_conditions 
  # @return [Count]
  describe 'finance_invoices_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for finance_invoices_get
  # 
  # Get Invoices
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :order_by 
  # @option opts [String] :childconditions 
  # @option opts [String] :customfieldconditions 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @return [Array<Invoice>]
  describe 'finance_invoices_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for finance_invoices_id_delete
  # 
  # Delete Invoice By Id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'finance_invoices_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for finance_invoices_id_get
  # 
  # Get Invoice By Id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Invoice]
  describe 'finance_invoices_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for finance_invoices_id_patch
  # 
  # Update Invoice
  # @param id 
  # @param operations 
  # @param [Hash] opts the optional parameters
  # @return [Invoice]
  describe 'finance_invoices_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for finance_invoices_id_pdf_get
  # 
  # Get Invoice Pdf
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'finance_invoices_id_pdf_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for finance_invoices_id_put
  # 
  # Replace Invoice
  # @param id 
  # @param invoice 
  # @param [Hash] opts the optional parameters
  # @return [Invoice]
  describe 'finance_invoices_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for finance_invoices_post
  # 
  # Create Invoice
  # @param invoice 
  # @param [Hash] opts the optional parameters
  # @return [Invoice]
  describe 'finance_invoices_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
