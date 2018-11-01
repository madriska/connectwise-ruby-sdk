
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::LegacyCampaignSubTypesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LegacyCampaignSubTypesApi' do
  before do
    # run before each test
    @instance = ConnectWise::LegacyCampaignSubTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LegacyCampaignSubTypesApi' do
    it 'should create an instance of LegacyCampaignSubTypesApi' do
      expect(@instance).to be_instance_of(ConnectWise::LegacyCampaignSubTypesApi)
    end
  end

  # unit tests for marketing_campaigns_types_id_sub_types_count_get
  # 
  # Get Campaign Sub Types Count
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @return [Count]
  describe 'marketing_campaigns_types_id_sub_types_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for marketing_campaigns_types_id_sub_types_get
  # 
  # Get Campaign Sub Types
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :order_by 
  # @option opts [String] :childconditions 
  # @option opts [String] :customfieldconditions 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @return [Array<CampaignSubType>]
  describe 'marketing_campaigns_types_id_sub_types_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for marketing_campaigns_types_id_sub_types_sub_type_id_get
  # 
  # Get Campaign Sub Type By Id
  # @param id 
  # @param sub_type_id 
  # @param [Hash] opts the optional parameters
  # @return [CampaignSubType]
  describe 'marketing_campaigns_types_id_sub_types_sub_type_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end