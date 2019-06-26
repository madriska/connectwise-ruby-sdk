
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::WorkflowTriggersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
RSpec.describe 'WorkflowTriggersApi' do
  before do
    # run before each test
    @instance = ConnectWise::WorkflowTriggersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WorkflowTriggersApi' do
    it 'should create an instance of WorkflowTriggersApi' do
      expect(@instance).to be_instance_of(ConnectWise::WorkflowTriggersApi)
    end
  end

  # unit tests for system_workflows_id_triggers_count_get
  #
  # Get Workflow Triggers Count
  # @param id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @return [Count]
  describe 'system_workflows_id_triggers_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_workflows_id_triggers_get
  #
  # Get Workflow Triggers
  # @param id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @option opts [String] :order_by
  # @option opts [String] :childconditions
  # @option opts [String] :customfieldconditions
  # @option opts [Integer] :page
  # @option opts [Integer] :page_size
  # @return [Array<WorkflowTrigger>]
  describe 'system_workflows_id_triggers_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
