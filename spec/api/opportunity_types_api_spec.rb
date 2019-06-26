
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::OpportunityTypesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
RSpec.describe 'OpportunityTypesApi' do
  before do
    # run before each test
    @instance = ConnectWise::OpportunityTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OpportunityTypesApi' do
    it 'should create an instance of OpportunityTypesApi' do
      expect(@instance).to be_instance_of(ConnectWise::OpportunityTypesApi)
    end
  end

  # unit tests for sales_opportunities_types_count_get
  #
  # Get Opportunity Types Count
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @return [Count]
  describe 'sales_opportunities_types_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for sales_opportunities_types_get
  #
  # Get Opportunity Types
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @option opts [String] :order_by
  # @option opts [String] :childconditions
  # @option opts [String] :customfieldconditions
  # @option opts [Integer] :page
  # @option opts [Integer] :page_size
  # @return [Array<OpportunityType>]
  describe 'sales_opportunities_types_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for sales_opportunities_types_id_delete
  #
  # Delete Opportunity Type By Id
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'sales_opportunities_types_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for sales_opportunities_types_id_get
  #
  # Get Opportunity Type By Id
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [OpportunityType]
  describe 'sales_opportunities_types_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for sales_opportunities_types_id_patch
  #
  # Update Opportunity Type
  # @param id
  # @param operations
  # @param [Hash] opts the optional parameters
  # @return [OpportunityType]
  describe 'sales_opportunities_types_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for sales_opportunities_types_id_put
  #
  # Replace Opportunity Type
  # @param id
  # @param opportunity_type
  # @param [Hash] opts the optional parameters
  # @return [OpportunityType]
  describe 'sales_opportunities_types_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for sales_opportunities_types_post
  #
  # Create Opportunity Type
  # @param opportunity_type
  # @param [Hash] opts the optional parameters
  # @return [OpportunityType]
  describe 'sales_opportunities_types_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
