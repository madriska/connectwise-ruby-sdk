=begin
#Connectwise REST API

#ConnectWise API

OpenAPI spec version: 1.0.0
Contact: platform@connectwise.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'spec_helper'
require 'json'

# Unit tests for Connectwise::ContactTracksApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ContactTracksApi' do
  before do
    # run before each test
    @instance = Connectwise::ContactTracksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContactTracksApi' do
    it 'should create an instact of ContactTracksApi' do
      expect(@instance).to be_instance_of(Connectwise::ContactTracksApi)
    end
  end

  # unit tests for company_contacts_id_tracks_count_get
  # 
  # Get Tracks Count
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @return [Count]
  describe 'company_contacts_id_tracks_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_contacts_id_tracks_get
  # 
  # Get Tracks
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :order_by 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @return [Array<Track>]
  describe 'company_contacts_id_tracks_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_contacts_id_tracks_post
  # 
  # Create Track
  # @param id 
  # @param track 
  # @param [Hash] opts the optional parameters
  # @return [Track]
  describe 'company_contacts_id_tracks_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_contacts_id_tracks_track_id_delete
  # 
  # Delete Track By Id
  # @param id 
  # @param track_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'company_contacts_id_tracks_track_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_contacts_id_tracks_track_id_get
  # 
  # Get Track By Id
  # @param id 
  # @param track_id 
  # @param [Hash] opts the optional parameters
  # @return [Track]
  describe 'company_contacts_id_tracks_track_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
