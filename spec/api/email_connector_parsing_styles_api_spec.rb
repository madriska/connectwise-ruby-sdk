
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::EmailConnectorParsingStylesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EmailConnectorParsingStylesApi' do
  before do
    # run before each test
    @instance = ConnectWise::EmailConnectorParsingStylesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EmailConnectorParsingStylesApi' do
    it 'should create an instance of EmailConnectorParsingStylesApi' do
      expect(@instance).to be_instance_of(ConnectWise::EmailConnectorParsingStylesApi)
    end
  end

  # unit tests for system_email_connectors_id_parsing_styles_count_get
  # 
  # Get Email Connector Parsing Style Count
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @return [Count]
  describe 'system_email_connectors_id_parsing_styles_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_email_connectors_id_parsing_styles_get
  # 
  # Get Email Connector Parsing Styles
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :order_by 
  # @option opts [String] :childconditions 
  # @option opts [String] :customfieldconditions 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @return [Array<EmailConnectorParsingStyle>]
  describe 'system_email_connectors_id_parsing_styles_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_email_connectors_id_parsing_styles_post
  # 
  # Create Email Connector Parsing Style
  # @param id 
  # @param email_connector_parsing_style 
  # @param [Hash] opts the optional parameters
  # @return [EmailConnectorParsingStyle]
  describe 'system_email_connectors_id_parsing_styles_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_email_connectors_id_parsing_styles_style_id_delete
  # 
  # Delete Email Connector Parsing Style By Id
  # @param id 
  # @param style_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'system_email_connectors_id_parsing_styles_style_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_email_connectors_id_parsing_styles_style_id_get
  # 
  # Get Email Connector Parsing Style By Id
  # @param id 
  # @param style_id 
  # @param [Hash] opts the optional parameters
  # @return [EmailConnectorParsingStyle]
  describe 'system_email_connectors_id_parsing_styles_style_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_email_connectors_id_parsing_styles_style_id_patch
  # 
  # Update Email Connector Parsing Style
  # @param id 
  # @param style_id 
  # @param operations 
  # @param [Hash] opts the optional parameters
  # @return [EmailConnectorParsingStyle]
  describe 'system_email_connectors_id_parsing_styles_style_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_email_connectors_id_parsing_styles_style_id_put
  # 
  # Replace Email Connector Parsing Style
  # @param id 
  # @param style_id 
  # @param email_connector_parsing_style 
  # @param [Hash] opts the optional parameters
  # @return [EmailConnectorParsingStyle]
  describe 'system_email_connectors_id_parsing_styles_style_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
