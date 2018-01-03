
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::AccountingUnpostedinvoicesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AccountingUnpostedinvoicesApi' do
  before do
    # run before each test
    @instance = ConnectWise::AccountingUnpostedinvoicesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountingUnpostedinvoicesApi' do
    it 'should create an instance of AccountingUnpostedinvoicesApi' do
      expect(@instance).to be_instance_of(ConnectWise::AccountingUnpostedinvoicesApi)
    end
  end

  # unit tests for finance_accounting_unpostedinvoices_count_get
  # 
  # Get Unposted Invoices Count
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @return [Count]
  describe 'finance_accounting_unpostedinvoices_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for finance_accounting_unpostedinvoices_get
  # 
  # Get Unposted Invoices
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :order_by 
  # @option opts [String] :childconditions 
  # @option opts [String] :customfieldconditions 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @return [Array<UnpostedInvoice>]
  describe 'finance_accounting_unpostedinvoices_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for finance_accounting_unpostedinvoices_id_get
  # 
  # Get Unposted Invoice By Id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [UnpostedInvoice]
  describe 'finance_accounting_unpostedinvoices_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
