
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::WorkRolesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'WorkRolesApi' do
  before do
    # run before each test
    @instance = ConnectWise::WorkRolesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WorkRolesApi' do
    it 'should create an instance of WorkRolesApi' do
      expect(@instance).to be_instance_of(ConnectWise::WorkRolesApi)
    end
  end

  # unit tests for time_work_roles_count_get
  # 
  # Get Work Role Count
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @return [Count]
  describe 'time_work_roles_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for time_work_roles_get
  # 
  # Get Work Role
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :order_by 
  # @option opts [String] :childconditions 
  # @option opts [String] :customfieldconditions 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @return [Array<WorkRole>]
  describe 'time_work_roles_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for time_work_roles_id_delete
  # 
  # Delete Work Role By Id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'time_work_roles_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for time_work_roles_id_get
  # 
  # Get Work Role By Id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [WorkRole]
  describe 'time_work_roles_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for time_work_roles_id_patch
  # 
  # Update Work Role
  # @param id 
  # @param operations 
  # @param [Hash] opts the optional parameters
  # @return [WorkRole]
  describe 'time_work_roles_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for time_work_roles_id_put
  # 
  # Replace Work Role
  # @param id 
  # @param work_role 
  # @param [Hash] opts the optional parameters
  # @return [WorkRole]
  describe 'time_work_roles_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for time_work_roles_post
  # 
  # Create Work Role
  # @param work_role 
  # @param [Hash] opts the optional parameters
  # @return [WorkRole]
  describe 'time_work_roles_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
