
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::RMAActionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
RSpec.describe 'RMAActionsApi' do
  before do
    # run before each test
    @instance = ConnectWise::RMAActionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RMAActionsApi' do
    it 'should create an instance of RMAActionsApi' do
      expect(@instance).to be_instance_of(ConnectWise::RMAActionsApi)
    end
  end

  # unit tests for procurement_rma_actions_count_get
  #
  # Get R M A Action Count
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @return [Count]
  describe 'procurement_rma_actions_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_rma_actions_get
  #
  # Get R M A Action
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @option opts [String] :order_by
  # @option opts [String] :childconditions
  # @option opts [String] :customfieldconditions
  # @option opts [Integer] :page
  # @option opts [Integer] :page_size
  # @return [Array<RMAAction>]
  describe 'procurement_rma_actions_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_rma_actions_id_delete
  #
  # Delete R M A Action By Id
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'procurement_rma_actions_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_rma_actions_id_get
  #
  # Get R M A Action By Id
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [RMAAction]
  describe 'procurement_rma_actions_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_rma_actions_id_patch
  #
  # Update R M A Action
  # @param id
  # @param operations
  # @param [Hash] opts the optional parameters
  # @return [RMAAction]
  describe 'procurement_rma_actions_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_rma_actions_id_put
  #
  # Replace R M A Action
  # @param id
  # @param rma_action
  # @param [Hash] opts the optional parameters
  # @return [RMAAction]
  describe 'procurement_rma_actions_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_rma_actions_post
  #
  # Create R M A Action
  # @param rma_action
  # @param [Hash] opts the optional parameters
  # @return [RMAAction]
  describe 'procurement_rma_actions_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
