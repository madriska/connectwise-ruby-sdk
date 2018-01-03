
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::PortalConfigurationPasswordEmailSetupsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PortalConfigurationPasswordEmailSetupsApi' do
  before do
    # run before each test
    @instance = ConnectWise::PortalConfigurationPasswordEmailSetupsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PortalConfigurationPasswordEmailSetupsApi' do
    it 'should create an instance of PortalConfigurationPasswordEmailSetupsApi' do
      expect(@instance).to be_instance_of(ConnectWise::PortalConfigurationPasswordEmailSetupsApi)
    end
  end

  # unit tests for system_portal_configurations_id_password_email_setups_get
  # 
  # Get Portal Configuration Password Email Setup
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :order_by 
  # @option opts [String] :childconditions 
  # @option opts [String] :customfieldconditions 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @return [Array<PortalConfigurationPasswordEmailSetup>]
  describe 'system_portal_configurations_id_password_email_setups_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_portal_configurations_id_password_email_setups_password_email_setup_id_get
  # 
  # Get Portal Configuration Password Email Setup
  # @param id 
  # @param password_email_setup_id 
  # @param [Hash] opts the optional parameters
  # @return [PortalConfigurationPasswordEmailSetup]
  describe 'system_portal_configurations_id_password_email_setups_password_email_setup_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_portal_configurations_id_password_email_setups_password_email_setup_id_patch
  # 
  # Update Portal Configuration Password Email Setup
  # @param id 
  # @param password_email_setup_id 
  # @param operations 
  # @param [Hash] opts the optional parameters
  # @return [PortalConfigurationPasswordEmailSetup]
  describe 'system_portal_configurations_id_password_email_setups_password_email_setup_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_portal_configurations_id_password_email_setups_password_email_setup_id_put
  # 
  # Replace Portal Configuration Password Email Setup
  # @param id 
  # @param password_email_setup_id 
  # @param password_email_setup 
  # @param [Hash] opts the optional parameters
  # @return [PortalConfigurationPasswordEmailSetup]
  describe 'system_portal_configurations_id_password_email_setups_password_email_setup_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
