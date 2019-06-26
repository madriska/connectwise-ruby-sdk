
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::TimeSheetsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
RSpec.describe 'TimeSheetsApi' do
  before do
    # run before each test
    @instance = ConnectWise::TimeSheetsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TimeSheetsApi' do
    it 'should create an instance of TimeSheetsApi' do
      expect(@instance).to be_instance_of(ConnectWise::TimeSheetsApi)
    end
  end

  # unit tests for time_sheets_count_get
  #
  # Get Time Sheet Count
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @return [Count]
  describe 'time_sheets_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for time_sheets_get
  #
  # Get Time Sheet
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @option opts [String] :order_by
  # @option opts [String] :childconditions
  # @option opts [String] :customfieldconditions
  # @option opts [Integer] :page
  # @option opts [Integer] :page_size
  # @return [Array<TimeSheet>]
  describe 'time_sheets_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for time_sheets_id_get
  #
  # Get Time Sheet By Id
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [TimeSheet]
  describe 'time_sheets_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for time_sheets_id_reverse_post
  #
  # Reverse Time Sheet
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [SuccessResponse]
  describe 'time_sheets_id_reverse_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for time_sheets_id_submit_post
  #
  # Submit Time Sheet
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [SuccessResponse]
  describe 'time_sheets_id_submit_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
