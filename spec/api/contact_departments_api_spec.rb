
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::ContactDepartmentsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ContactDepartmentsApi' do
  before do
    # run before each test
    @instance = ConnectWise::ContactDepartmentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContactDepartmentsApi' do
    it 'should create an instance of ContactDepartmentsApi' do
      expect(@instance).to be_instance_of(ConnectWise::ContactDepartmentsApi)
    end
  end

  # unit tests for company_contacts_departments_count_get
  # 
  # Get Contact Departments Count
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @return [Count]
  describe 'company_contacts_departments_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_contacts_departments_get
  # 
  # Get Contact Departments
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :order_by 
  # @option opts [String] :childconditions 
  # @option opts [String] :customfieldconditions 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @return [Array<ContactDepartment>]
  describe 'company_contacts_departments_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_contacts_departments_id_delete
  # 
  # Delete Contact Department By Id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'company_contacts_departments_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_contacts_departments_id_get
  # 
  # Get Contact Department By Id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [ContactDepartment]
  describe 'company_contacts_departments_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_contacts_departments_id_patch
  # 
  # Update Contact Department
  # @param id 
  # @param operations 
  # @param [Hash] opts the optional parameters
  # @return [ContactDepartment]
  describe 'company_contacts_departments_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_contacts_departments_id_put
  # 
  # Replace Contact Department
  # @param id 
  # @param contact_department 
  # @param [Hash] opts the optional parameters
  # @return [ContactDepartment]
  describe 'company_contacts_departments_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_contacts_departments_post
  # 
  # Create Contact Department
  # @param contact_department 
  # @param [Hash] opts the optional parameters
  # @return [ContactDepartment]
  describe 'company_contacts_departments_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
