
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::TicketsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
RSpec.describe 'TicketsApi' do
  before do
    # run before each test
    @instance = ConnectWise::TicketsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TicketsApi' do
    it 'should create an instance of TicketsApi' do
      expect(@instance).to be_instance_of(ConnectWise::TicketsApi)
    end
  end

  # unit tests for service_tickets_count_get
  #
  # Get Tickets Count
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @option opts [String] :custom_field_conditions
  # @return [Count]
  describe 'service_tickets_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_tickets_get
  #
  # Get Tickets
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @option opts [String] :order_by
  # @option opts [String] :childconditions
  # @option opts [String] :customfieldconditions
  # @option opts [Integer] :page
  # @option opts [Integer] :page_size
  # @return [Array<Ticket>]
  describe 'service_tickets_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_tickets_id_activities_count_get
  #
  # Gets count of activities associated to the ticket          /// Please use the /sales/activities/count?conditions&#x3D;ticket/id&#x3D;{id} endpoint
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [Count]
  describe 'service_tickets_id_activities_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_tickets_id_activities_get
  #
  # Gets activities associated to the ticket          /// Please use the /sales/activities?conditions&#x3D;ticket/id&#x3D;{id} endpoint
  # @param id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page
  # @option opts [Integer] :page_size
  # @return [Array<ActivityReference>]
  describe 'service_tickets_id_activities_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_tickets_id_configurations_config_id_delete
  #
  # Delete Configuration Association
  # @param id
  # @param config_id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'service_tickets_id_configurations_config_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_tickets_id_configurations_config_id_get
  #
  # Get Configuration Association
  # @param id
  # @param config_id
  # @param [Hash] opts the optional parameters
  # @return [ConfigurationReference]
  describe 'service_tickets_id_configurations_config_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_tickets_id_configurations_count_get
  #
  # Get Ticket Configurations Count
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [Count]
  describe 'service_tickets_id_configurations_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_tickets_id_configurations_get
  #
  # Get Ticket Configurations
  # @param id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page
  # @option opts [Integer] :page_size
  # @return [Array<ConfigurationReference>]
  describe 'service_tickets_id_configurations_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_tickets_id_configurations_post
  #
  # Create Configuration Association
  # @param id
  # @param configuration
  # @param [Hash] opts the optional parameters
  # @return [ConfigurationReference]
  describe 'service_tickets_id_configurations_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_tickets_id_delete
  #
  # Delete Ticket By Id
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'service_tickets_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_tickets_id_documents_count_get
  #
  # Get Ticket Documents Count
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [Count]
  describe 'service_tickets_id_documents_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_tickets_id_documents_get
  #
  # Gets the documents associated to the ticket          /// Please use the /system/documents?recordType&#x3D;Ticket&amp;amp;recordId&#x3D;{id} endpoint
  # @param id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page
  # @option opts [Integer] :page_size
  # @return [Array<DocumentReference>]
  describe 'service_tickets_id_documents_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_tickets_id_get
  #
  # Get Ticket By Id
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [Ticket]
  describe 'service_tickets_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_tickets_id_merge_post
  #
  # Merge Company
  # @param id
  # @param merge
  # @param [Hash] opts the optional parameters
  # @return [SuccessResponse]
  describe 'service_tickets_id_merge_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_tickets_id_patch
  #
  # Update Ticket
  # @param id
  # @param operations
  # @param [Hash] opts the optional parameters
  # @return [Ticket]
  describe 'service_tickets_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_tickets_id_products_count_get
  #
  # Gets the products associated to the ticket          /// Please use the /procurement/products/count?conditions&#x3D;chargeToType&#x3D;&#39;Ticket&#39; AND chargeToId&#x3D;{id} endpoint
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [Count]
  describe 'service_tickets_id_products_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_tickets_id_products_get
  #
  # Gets the products associated to the ticket          /// Please use the /procurement/products?conditions&#x3D;chargeToType&#x3D;&#39;Ticket&#39; AND chargeToId&#x3D;{id} endpoint
  # @param id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page
  # @option opts [Integer] :page_size
  # @return [Array<ProductReference>]
  describe 'service_tickets_id_products_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_tickets_id_put
  #
  # Replace Ticket
  # @param id
  # @param ticket
  # @param [Hash] opts the optional parameters
  # @return [Ticket]
  describe 'service_tickets_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_tickets_id_scheduleentries_count_get
  #
  # Gets the schedule entries count associated to the ticket          /// Please use the /schedule/entries/count?conditions&#x3D;type/id&#x3D;4 AND objectId&#x3D;{id} endpoint
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [Count]
  describe 'service_tickets_id_scheduleentries_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_tickets_id_scheduleentries_get
  #
  # Gets the schedule entries associated to the ticket          /// Please use the /schedule/entries?conditions&#x3D;type/id&#x3D;4 AND objectId&#x3D;{id} endpoint
  # @param id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page
  # @option opts [Integer] :page_size
  # @return [Array<ScheduleEntryReference>]
  describe 'service_tickets_id_scheduleentries_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_tickets_id_timeentries_count_get
  #
  # Gets time entries count associated to the ticket          /// Please use the /time/entries/count?conditions&#x3D;(chargeToType&#x3D;\&quot;ServiceTicket\&quot; OR chargeToType&#x3D;\&quot;ProjectTicket\&quot;) AND chargeToId&#x3D;{id} endpoint
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [Count]
  describe 'service_tickets_id_timeentries_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_tickets_id_timeentries_get
  #
  # Gets time entries associated to the ticket          /// Please use the /time/entries?conditions&#x3D;(chargeToType&#x3D;\&quot;ServiceTicket\&quot; OR chargeToType&#x3D;\&quot;ProjectTicket\&quot;) AND chargeToId&#x3D;{id} endpoint
  # @param id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page
  # @option opts [Integer] :page_size
  # @return [Array<TimeEntryReference>]
  describe 'service_tickets_id_timeentries_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_tickets_post
  #
  # Create Ticket
  # @param ticket
  # @param [Hash] opts the optional parameters
  # @return [Ticket]
  describe 'service_tickets_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_tickets_search_post
  #
  # Ticket Search
  # @param filter_values
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page
  # @option opts [Integer] :page_size
  # @return [Array<Ticket>]
  describe 'service_tickets_search_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
