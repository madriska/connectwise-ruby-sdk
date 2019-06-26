
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::PurchaseOrdersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
RSpec.describe 'PurchaseOrdersApi' do
  before do
    # run before each test
    @instance = ConnectWise::PurchaseOrdersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PurchaseOrdersApi' do
    it 'should create an instance of PurchaseOrdersApi' do
      expect(@instance).to be_instance_of(ConnectWise::PurchaseOrdersApi)
    end
  end

  # unit tests for procurement_purchaseorders_count_get
  #
  # Get Purchase Orders Count
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @return [Count]
  describe 'procurement_purchaseorders_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_purchaseorders_get
  #
  # Get Purchase Orders
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @option opts [String] :order_by
  # @option opts [String] :childconditions
  # @option opts [String] :customfieldconditions
  # @option opts [Integer] :page
  # @option opts [Integer] :page_size
  # @return [Array<PurchaseOrder>]
  describe 'procurement_purchaseorders_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_purchaseorders_id_delete
  #
  # Delete Purchase Order By Id
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'procurement_purchaseorders_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_purchaseorders_id_get
  #
  # Get Purchase Order By Id
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [PurchaseOrder]
  describe 'procurement_purchaseorders_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_purchaseorders_id_patch
  #
  # Update Purchase Order
  # @param id
  # @param operations
  # @param [Hash] opts the optional parameters
  # @return [PurchaseOrder]
  describe 'procurement_purchaseorders_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_purchaseorders_id_put
  #
  # Replace Purchase Order
  # @param id
  # @param purchase_order
  # @param [Hash] opts the optional parameters
  # @return [PurchaseOrder]
  describe 'procurement_purchaseorders_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_purchaseorders_post
  #
  # Create Purchase Order
  # @param purchase_order
  # @param [Hash] opts the optional parameters
  # @return [PurchaseOrder]
  describe 'procurement_purchaseorders_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
