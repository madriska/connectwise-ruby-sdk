
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::ManagementNetworksSecurityApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ManagementNetworksSecurityApi' do
  before do
    # run before each test
    @instance = ConnectWise::ManagementNetworksSecurityApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ManagementNetworksSecurityApi' do
    it 'should create an instance of ManagementNetworksSecurityApi' do
      expect(@instance).to be_instance_of(ConnectWise::ManagementNetworksSecurityApi)
    end
  end

  # unit tests for system_management_network_securities_count_get
  # 
  # Get Management Network Security Count
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @return [Count]
  describe 'system_management_network_securities_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_management_network_securities_get
  # 
  # Get Management Networks Security
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :order_by 
  # @option opts [String] :childconditions 
  # @option opts [String] :customfieldconditions 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @return [Array<ManagementNetworkSecurity>]
  describe 'system_management_network_securities_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_management_network_securities_id_delete
  # 
  # Delete Management Network Security By Id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'system_management_network_securities_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_management_network_securities_id_get
  # 
  # Get Management Network Security By Id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [ManagementNetworkSecurity]
  describe 'system_management_network_securities_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_management_network_securities_id_patch
  # 
  # Update Management Network Security
  # @param id 
  # @param operations 
  # @param [Hash] opts the optional parameters
  # @return [ManagementNetworkSecurity]
  describe 'system_management_network_securities_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_management_network_securities_id_put
  # 
  # Replace Management Network Security
  # @param id 
  # @param management_network_security 
  # @param [Hash] opts the optional parameters
  # @return [ManagementNetworkSecurity]
  describe 'system_management_network_securities_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_management_network_securities_post
  # 
  # Create Management Network Security
  # @param management_network_security 
  # @param [Hash] opts the optional parameters
  # @return [ManagementNetworkSecurity]
  describe 'system_management_network_securities_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_management_network_securities_test_credentials_get
  # 
  # Test Credentials
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :id 
  # @return [SuccessResponse]
  describe 'system_management_network_securities_test_credentials_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end