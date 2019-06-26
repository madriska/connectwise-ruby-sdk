
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::ManagementBackupsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
RSpec.describe 'ManagementBackupsApi' do
  before do
    # run before each test
    @instance = ConnectWise::ManagementBackupsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ManagementBackupsApi' do
    it 'should create an instance of ManagementBackupsApi' do
      expect(@instance).to be_instance_of(ConnectWise::ManagementBackupsApi)
    end
  end

  # unit tests for company_management_backups_count_get
  #
  # Get Management Backup Count
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @return [Count]
  describe 'company_management_backups_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_management_backups_get
  #
  # Get Management Backup
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @option opts [String] :order_by
  # @option opts [String] :childconditions
  # @option opts [String] :customfieldconditions
  # @option opts [Integer] :page
  # @option opts [Integer] :page_size
  # @return [Array<ManagementBackup>]
  describe 'company_management_backups_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_management_backups_id_delete
  #
  # Delete Management Backup By Id
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'company_management_backups_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_management_backups_id_get
  #
  # Get Management Backup By Id
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [ManagementBackup]
  describe 'company_management_backups_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_management_backups_id_patch
  #
  # Update Management Backup
  # @param id
  # @param operations
  # @param [Hash] opts the optional parameters
  # @return [ManagementBackup]
  describe 'company_management_backups_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_management_backups_id_put
  #
  # Replace Management Backup
  # @param id
  # @param management_backup
  # @param [Hash] opts the optional parameters
  # @return [ManagementBackup]
  describe 'company_management_backups_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_management_backups_post
  #
  # Create Management Backup
  # @param management_backup
  # @param [Hash] opts the optional parameters
  # @return [ManagementBackup]
  describe 'company_management_backups_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
