
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::WorkflowTriggerOptionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
RSpec.describe 'WorkflowTriggerOptionsApi' do
  before do
    # run before each test
    @instance = ConnectWise::WorkflowTriggerOptionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WorkflowTriggerOptionsApi' do
    it 'should create an instance of WorkflowTriggerOptionsApi' do
      expect(@instance).to be_instance_of(ConnectWise::WorkflowTriggerOptionsApi)
    end
  end

  # unit tests for system_workflows_workflow_id_triggers_trigger_id_options_count_get
  #
  # Get Workflow Triggers Count
  # @param workflow_id
  # @param trigger_id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @return [Count]
  describe 'system_workflows_workflow_id_triggers_trigger_id_options_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_workflows_workflow_id_triggers_trigger_id_options_get
  #
  # Get Trigger Options
  # @param workflow_id
  # @param trigger_id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @option opts [String] :order_by
  # @option opts [String] :childconditions
  # @option opts [String] :customfieldconditions
  # @option opts [Integer] :page
  # @option opts [Integer] :page_size
  # @return [Array<WorkflowTriggerOption>]
  describe 'system_workflows_workflow_id_triggers_trigger_id_options_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
