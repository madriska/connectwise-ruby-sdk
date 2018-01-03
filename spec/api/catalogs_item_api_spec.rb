
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::CatalogsItemApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CatalogsItemApi' do
  before do
    # run before each test
    @instance = ConnectWise::CatalogsItemApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CatalogsItemApi' do
    it 'should create an instance of CatalogsItemApi' do
      expect(@instance).to be_instance_of(ConnectWise::CatalogsItemApi)
    end
  end

  # unit tests for procurement_catalog_catalog_item_identifier_quantity_on_hand_get
  # 
  # Get Inventory Quantity On Hand
  # @param catalog_item_identifier 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :warehouse_bin_id 
  # @return [Count]
  describe 'procurement_catalog_catalog_item_identifier_quantity_on_hand_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_catalog_count_get
  # 
  # Get Catalogs Count
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @return [Count]
  describe 'procurement_catalog_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_catalog_get
  # 
  # Get Catalogs
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :order_by 
  # @option opts [String] :childconditions 
  # @option opts [String] :customfieldconditions 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @return [Array<CatalogItem>]
  describe 'procurement_catalog_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_catalog_id_delete
  # 
  # Delete Catalog By Id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'procurement_catalog_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_catalog_id_get
  # 
  # Get Catalog By Id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [CatalogItem]
  describe 'procurement_catalog_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_catalog_id_patch
  # 
  # Update Catalog
  # @param id 
  # @param operations 
  # @param [Hash] opts the optional parameters
  # @return [CatalogItem]
  describe 'procurement_catalog_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_catalog_id_put
  # 
  # Replace Catalog
  # @param id 
  # @param catalog_item 
  # @param [Hash] opts the optional parameters
  # @return [CatalogItem]
  describe 'procurement_catalog_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_catalog_post
  # 
  # Create Catalog
  # @param catalog_item 
  # @param [Hash] opts the optional parameters
  # @return [CatalogItem]
  describe 'procurement_catalog_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
