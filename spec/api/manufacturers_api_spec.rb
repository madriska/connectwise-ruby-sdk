
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::ManufacturersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ManufacturersApi' do
  before do
    # run before each test
    @instance = ConnectWise::ManufacturersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ManufacturersApi' do
    it 'should create an instance of ManufacturersApi' do
      expect(@instance).to be_instance_of(ConnectWise::ManufacturersApi)
    end
  end

  # unit tests for procurement_manufacturers_count_get
  # 
  # Get Manufacturers Count
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @return [Count]
  describe 'procurement_manufacturers_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_manufacturers_get
  # 
  # Get Manufacturers
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :order_by 
  # @option opts [String] :childconditions 
  # @option opts [String] :customfieldconditions 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @return [Array<Manufacturer>]
  describe 'procurement_manufacturers_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_manufacturers_id_delete
  # 
  # Delete Manufacturer By Id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'procurement_manufacturers_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_manufacturers_id_get
  # 
  # Get Manufacturer By Id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Manufacturer]
  describe 'procurement_manufacturers_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_manufacturers_id_patch
  # 
  # Update Manufacturer
  # @param id 
  # @param operations 
  # @param [Hash] opts the optional parameters
  # @return [Manufacturer]
  describe 'procurement_manufacturers_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_manufacturers_id_put
  # 
  # Replace Manufacturer
  # @param id 
  # @param manufacturer 
  # @param [Hash] opts the optional parameters
  # @return [Manufacturer]
  describe 'procurement_manufacturers_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_manufacturers_post
  # 
  # Create Manufacturer
  # @param manufacturer 
  # @param [Hash] opts the optional parameters
  # @return [Manufacturer]
  describe 'procurement_manufacturers_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
