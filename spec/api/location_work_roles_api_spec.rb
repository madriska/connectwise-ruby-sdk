
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::LocationWorkRolesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LocationWorkRolesApi' do
  before do
    # run before each test
    @instance = ConnectWise::LocationWorkRolesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LocationWorkRolesApi' do
    it 'should create an instance of LocationWorkRolesApi' do
      expect(@instance).to be_instance_of(ConnectWise::LocationWorkRolesApi)
    end
  end

  # unit tests for system_locations_id_work_roles_count_get
  # 
  # Get Location Work Role Count
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @return [Count]
  describe 'system_locations_id_work_roles_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_locations_id_work_roles_get
  # 
  # Get Location Work Role
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :order_by 
  # @option opts [String] :childconditions 
  # @option opts [String] :customfieldconditions 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @return [Array<LocationWorkRole>]
  describe 'system_locations_id_work_roles_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_locations_parent_id_work_roles_id_get
  # 
  # Get Location Work Role By Id
  # @param parent_id 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [LocationWorkRole]
  describe 'system_locations_parent_id_work_roles_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
