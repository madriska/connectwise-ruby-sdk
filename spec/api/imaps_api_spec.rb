
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::ImapsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ImapsApi' do
  before do
    # run before each test
    @instance = ConnectWise::ImapsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ImapsApi' do
    it 'should create an instance of ImapsApi' do
      expect(@instance).to be_instance_of(ConnectWise::ImapsApi)
    end
  end

  # unit tests for system_imaps_count_get
  # 
  # Get Imap Count
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @return [Count]
  describe 'system_imaps_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_imaps_get
  # 
  # Get Imaps
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :order_by 
  # @option opts [String] :childconditions 
  # @option opts [String] :customfieldconditions 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @return [Array<Imap>]
  describe 'system_imaps_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_imaps_id_get
  # 
  # Get Imap By Id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Imap]
  describe 'system_imaps_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
