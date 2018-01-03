
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::AgreementWorkRolesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AgreementWorkRolesApi' do
  before do
    # run before each test
    @instance = ConnectWise::AgreementWorkRolesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AgreementWorkRolesApi' do
    it 'should create an instance of AgreementWorkRolesApi' do
      expect(@instance).to be_instance_of(ConnectWise::AgreementWorkRolesApi)
    end
  end

  # unit tests for finance_agreements_id_workroles_count_get
  # 
  # Get Work Roles Count
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @return [Count]
  describe 'finance_agreements_id_workroles_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for finance_agreements_id_workroles_get
  # 
  # Get Work Roles
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :order_by 
  # @option opts [String] :childconditions 
  # @option opts [String] :customfieldconditions 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @return [Array<AgreementWorkRole>]
  describe 'finance_agreements_id_workroles_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for finance_agreements_id_workroles_post
  # 
  # Create Work Role
  # @param id 
  # @param work_role 
  # @param [Hash] opts the optional parameters
  # @return [AgreementWorkRole]
  describe 'finance_agreements_id_workroles_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for finance_agreements_id_workroles_work_role_id_delete
  # 
  # Delete Work Role By Id
  # @param id 
  # @param work_role_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'finance_agreements_id_workroles_work_role_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for finance_agreements_id_workroles_work_role_id_get
  # 
  # Get Work Role By Id
  # @param id 
  # @param work_role_id 
  # @param [Hash] opts the optional parameters
  # @return [AgreementWorkRole]
  describe 'finance_agreements_id_workroles_work_role_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for finance_agreements_id_workroles_work_role_id_patch
  # 
  # Update Work Role
  # @param id 
  # @param work_role_id 
  # @param operations 
  # @param [Hash] opts the optional parameters
  # @return [AgreementWorkRole]
  describe 'finance_agreements_id_workroles_work_role_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for finance_agreements_id_workroles_work_role_id_put
  # 
  # Replace Work Role
  # @param id 
  # @param work_role_id 
  # @param work_role 
  # @param [Hash] opts the optional parameters
  # @return [AgreementWorkRole]
  describe 'finance_agreements_id_workroles_work_role_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
