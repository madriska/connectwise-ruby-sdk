
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::ProductsItemApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProductsItemApi' do
  before do
    # run before each test
    @instance = ConnectWise::ProductsItemApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProductsItemApi' do
    it 'should create an instance of ProductsItemApi' do
      expect(@instance).to be_instance_of(ConnectWise::ProductsItemApi)
    end
  end

  # unit tests for procurement_products_count_get
  # 
  # Get Products Count
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @return [Count]
  describe 'procurement_products_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_products_get
  # 
  # Get Products
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :order_by 
  # @option opts [String] :childconditions 
  # @option opts [String] :customfieldconditions 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @return [Array<ProductItem>]
  describe 'procurement_products_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_products_id_delete
  # 
  # Delete Product By Id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'procurement_products_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_products_id_get
  # 
  # Get Product By Id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [ProductItem]
  describe 'procurement_products_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_products_id_patch
  # 
  # Update Product
  # @param id 
  # @param operations 
  # @param [Hash] opts the optional parameters
  # @return [ProductItem]
  describe 'procurement_products_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_products_id_put
  # 
  # Replace Product
  # @param id 
  # @param product_item 
  # @param [Hash] opts the optional parameters
  # @return [ProductItem]
  describe 'procurement_products_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_products_post
  # 
  # Create Product
  # @param product_item 
  # @param [Hash] opts the optional parameters
  # @return [ProductItem]
  describe 'procurement_products_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
