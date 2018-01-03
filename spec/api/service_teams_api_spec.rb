
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::ServiceTeamsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ServiceTeamsApi' do
  before do
    # run before each test
    @instance = ConnectWise::ServiceTeamsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ServiceTeamsApi' do
    it 'should create an instance of ServiceTeamsApi' do
      expect(@instance).to be_instance_of(ConnectWise::ServiceTeamsApi)
    end
  end

  # unit tests for service_teams_count_get
  # 
  # Get Service Teams Count
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @return [Count]
  describe 'service_teams_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_teams_get
  # 
  # Get Service Teams
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :order_by 
  # @option opts [String] :childconditions 
  # @option opts [String] :customfieldconditions 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @return [Array<ServiceTeam>]
  describe 'service_teams_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_teams_id_get
  # 
  # Get Service Team By Id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [ServiceTeam]
  describe 'service_teams_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
