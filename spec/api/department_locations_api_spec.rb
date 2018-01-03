
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::DepartmentLocationsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DepartmentLocationsApi' do
  before do
    # run before each test
    @instance = ConnectWise::DepartmentLocationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DepartmentLocationsApi' do
    it 'should create an instance of DepartmentLocationsApi' do
      expect(@instance).to be_instance_of(ConnectWise::DepartmentLocationsApi)
    end
  end

  # unit tests for system_departments_id_locations_count_get
  # 
  # Get Department Location Count
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @return [Count]
  describe 'system_departments_id_locations_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_departments_id_locations_get
  # 
  # Get Department Location
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :order_by 
  # @option opts [String] :childconditions 
  # @option opts [String] :customfieldconditions 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @return [Array<DepartmentLocation>]
  describe 'system_departments_id_locations_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_departments_id_locations_location_id_delete
  # 
  # Delete Department Location By Id
  # @param id 
  # @param location_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'system_departments_id_locations_location_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_departments_id_locations_location_id_get
  # 
  # Get Department Location By Id
  # @param id 
  # @param location_id 
  # @param [Hash] opts the optional parameters
  # @return [DepartmentLocation]
  describe 'system_departments_id_locations_location_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_departments_id_locations_location_id_patch
  # 
  # Update Department Location
  # @param id 
  # @param location_id 
  # @param operations 
  # @param [Hash] opts the optional parameters
  # @return [DepartmentLocation]
  describe 'system_departments_id_locations_location_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_departments_id_locations_location_id_put
  # 
  # Replace Company Team
  # @param id 
  # @param location_id 
  # @param department_location 
  # @param [Hash] opts the optional parameters
  # @return [DepartmentLocation]
  describe 'system_departments_id_locations_location_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_departments_id_locations_post
  # 
  # Create Department Location
  # @param id 
  # @param department_location 
  # @param [Hash] opts the optional parameters
  # @return [DepartmentLocation]
  describe 'system_departments_id_locations_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
