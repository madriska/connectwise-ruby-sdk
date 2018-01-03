
require 'date'

module ConnectWise

  class Configuration
    attr_accessor :id

    attr_accessor :name

    attr_accessor :type

    attr_accessor :status

    attr_accessor :company

    attr_accessor :contact

    attr_accessor :site

    attr_accessor :location_id

    attr_accessor :business_unit_id

    attr_accessor :device_identifier

    attr_accessor :serial_number

    attr_accessor :model_number

    attr_accessor :tag_number

    attr_accessor :purchase_date

    attr_accessor :installation_date

    attr_accessor :installed_by

    attr_accessor :warranty_expiration_date

    attr_accessor :vendor_notes

    attr_accessor :notes

    attr_accessor :mac_address

    attr_accessor :last_login_name

    attr_accessor :bill_flag

    attr_accessor :backup_successes

    attr_accessor :backup_incomplete

    attr_accessor :backup_failed

    attr_accessor :backup_restores

    attr_accessor :last_backup_date

    attr_accessor :backup_server_name

    attr_accessor :backup_billable_space_gb

    attr_accessor :backup_protected_device_list

    attr_accessor :backup_year

    attr_accessor :backup_month

    attr_accessor :ip_address

    attr_accessor :default_gateway

    attr_accessor :os_type

    attr_accessor :os_info

    attr_accessor :cpu_speed

    attr_accessor :ram

    attr_accessor :local_hard_drives

    attr_accessor :parent_configuration_id

    attr_accessor :vendor

    attr_accessor :manufacturer

    attr_accessor :questions

    attr_accessor :active_flag

    attr_accessor :management_link

    attr_accessor :remote_link

    attr_accessor :sla

    attr_accessor :mobile_guid

    # Metadata of the entity
    attr_accessor :_info

    attr_accessor :display_vendor_flag

    attr_accessor :custom_fields


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'type' => :'type',
        :'status' => :'status',
        :'company' => :'company',
        :'contact' => :'contact',
        :'site' => :'site',
        :'location_id' => :'locationId',
        :'business_unit_id' => :'businessUnitId',
        :'device_identifier' => :'deviceIdentifier',
        :'serial_number' => :'serialNumber',
        :'model_number' => :'modelNumber',
        :'tag_number' => :'tagNumber',
        :'purchase_date' => :'purchaseDate',
        :'installation_date' => :'installationDate',
        :'installed_by' => :'installedBy',
        :'warranty_expiration_date' => :'warrantyExpirationDate',
        :'vendor_notes' => :'vendorNotes',
        :'notes' => :'notes',
        :'mac_address' => :'macAddress',
        :'last_login_name' => :'lastLoginName',
        :'bill_flag' => :'billFlag',
        :'backup_successes' => :'backupSuccesses',
        :'backup_incomplete' => :'backupIncomplete',
        :'backup_failed' => :'backupFailed',
        :'backup_restores' => :'backupRestores',
        :'last_backup_date' => :'lastBackupDate',
        :'backup_server_name' => :'backupServerName',
        :'backup_billable_space_gb' => :'backupBillableSpaceGb',
        :'backup_protected_device_list' => :'backupProtectedDeviceList',
        :'backup_year' => :'backupYear',
        :'backup_month' => :'backupMonth',
        :'ip_address' => :'ipAddress',
        :'default_gateway' => :'defaultGateway',
        :'os_type' => :'osType',
        :'os_info' => :'osInfo',
        :'cpu_speed' => :'cpuSpeed',
        :'ram' => :'ram',
        :'local_hard_drives' => :'localHardDrives',
        :'parent_configuration_id' => :'parentConfigurationId',
        :'vendor' => :'vendor',
        :'manufacturer' => :'manufacturer',
        :'questions' => :'questions',
        :'active_flag' => :'activeFlag',
        :'management_link' => :'managementLink',
        :'remote_link' => :'remoteLink',
        :'sla' => :'sla',
        :'mobile_guid' => :'mobileGuid',
        :'_info' => :'_info',
        :'display_vendor_flag' => :'displayVendorFlag',
        :'custom_fields' => :'customFields'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'type' => :'ConfigurationTypeReference',
        :'status' => :'ConfigurationStatusReference',
        :'company' => :'CompanyReference',
        :'contact' => :'ContactReference',
        :'site' => :'SiteReference',
        :'location_id' => :'Integer',
        :'business_unit_id' => :'Integer',
        :'device_identifier' => :'String',
        :'serial_number' => :'String',
        :'model_number' => :'String',
        :'tag_number' => :'String',
        :'purchase_date' => :'DateTime',
        :'installation_date' => :'DateTime',
        :'installed_by' => :'MemberReference',
        :'warranty_expiration_date' => :'DateTime',
        :'vendor_notes' => :'String',
        :'notes' => :'String',
        :'mac_address' => :'String',
        :'last_login_name' => :'String',
        :'bill_flag' => :'BOOLEAN',
        :'backup_successes' => :'Integer',
        :'backup_incomplete' => :'Integer',
        :'backup_failed' => :'Integer',
        :'backup_restores' => :'Integer',
        :'last_backup_date' => :'DateTime',
        :'backup_server_name' => :'String',
        :'backup_billable_space_gb' => :'Float',
        :'backup_protected_device_list' => :'String',
        :'backup_year' => :'Integer',
        :'backup_month' => :'Integer',
        :'ip_address' => :'String',
        :'default_gateway' => :'String',
        :'os_type' => :'String',
        :'os_info' => :'String',
        :'cpu_speed' => :'String',
        :'ram' => :'String',
        :'local_hard_drives' => :'String',
        :'parent_configuration_id' => :'Integer',
        :'vendor' => :'CompanyReference',
        :'manufacturer' => :'ManufacturerReference',
        :'questions' => :'Array<ConfigurationQuestion>',
        :'active_flag' => :'BOOLEAN',
        :'management_link' => :'String',
        :'remote_link' => :'String',
        :'sla' => :'SLAReference',
        :'mobile_guid' => :'Guid',
        :'_info' => :'Metadata',
        :'display_vendor_flag' => :'BOOLEAN',
        :'custom_fields' => :'Array<CustomFieldValue>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'contact')
        self.contact = attributes[:'contact']
      end

      if attributes.has_key?(:'site')
        self.site = attributes[:'site']
      end

      if attributes.has_key?(:'locationId')
        self.location_id = attributes[:'locationId']
      end

      if attributes.has_key?(:'businessUnitId')
        self.business_unit_id = attributes[:'businessUnitId']
      end

      if attributes.has_key?(:'deviceIdentifier')
        self.device_identifier = attributes[:'deviceIdentifier']
      end

      if attributes.has_key?(:'serialNumber')
        self.serial_number = attributes[:'serialNumber']
      end

      if attributes.has_key?(:'modelNumber')
        self.model_number = attributes[:'modelNumber']
      end

      if attributes.has_key?(:'tagNumber')
        self.tag_number = attributes[:'tagNumber']
      end

      if attributes.has_key?(:'purchaseDate')
        self.purchase_date = attributes[:'purchaseDate']
      end

      if attributes.has_key?(:'installationDate')
        self.installation_date = attributes[:'installationDate']
      end

      if attributes.has_key?(:'installedBy')
        self.installed_by = attributes[:'installedBy']
      end

      if attributes.has_key?(:'warrantyExpirationDate')
        self.warranty_expiration_date = attributes[:'warrantyExpirationDate']
      end

      if attributes.has_key?(:'vendorNotes')
        self.vendor_notes = attributes[:'vendorNotes']
      end

      if attributes.has_key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.has_key?(:'macAddress')
        self.mac_address = attributes[:'macAddress']
      end

      if attributes.has_key?(:'lastLoginName')
        self.last_login_name = attributes[:'lastLoginName']
      end

      if attributes.has_key?(:'billFlag')
        self.bill_flag = attributes[:'billFlag']
      end

      if attributes.has_key?(:'backupSuccesses')
        self.backup_successes = attributes[:'backupSuccesses']
      end

      if attributes.has_key?(:'backupIncomplete')
        self.backup_incomplete = attributes[:'backupIncomplete']
      end

      if attributes.has_key?(:'backupFailed')
        self.backup_failed = attributes[:'backupFailed']
      end

      if attributes.has_key?(:'backupRestores')
        self.backup_restores = attributes[:'backupRestores']
      end

      if attributes.has_key?(:'lastBackupDate')
        self.last_backup_date = attributes[:'lastBackupDate']
      end

      if attributes.has_key?(:'backupServerName')
        self.backup_server_name = attributes[:'backupServerName']
      end

      if attributes.has_key?(:'backupBillableSpaceGb')
        self.backup_billable_space_gb = attributes[:'backupBillableSpaceGb']
      end

      if attributes.has_key?(:'backupProtectedDeviceList')
        self.backup_protected_device_list = attributes[:'backupProtectedDeviceList']
      end

      if attributes.has_key?(:'backupYear')
        self.backup_year = attributes[:'backupYear']
      end

      if attributes.has_key?(:'backupMonth')
        self.backup_month = attributes[:'backupMonth']
      end

      if attributes.has_key?(:'ipAddress')
        self.ip_address = attributes[:'ipAddress']
      end

      if attributes.has_key?(:'defaultGateway')
        self.default_gateway = attributes[:'defaultGateway']
      end

      if attributes.has_key?(:'osType')
        self.os_type = attributes[:'osType']
      end

      if attributes.has_key?(:'osInfo')
        self.os_info = attributes[:'osInfo']
      end

      if attributes.has_key?(:'cpuSpeed')
        self.cpu_speed = attributes[:'cpuSpeed']
      end

      if attributes.has_key?(:'ram')
        self.ram = attributes[:'ram']
      end

      if attributes.has_key?(:'localHardDrives')
        self.local_hard_drives = attributes[:'localHardDrives']
      end

      if attributes.has_key?(:'parentConfigurationId')
        self.parent_configuration_id = attributes[:'parentConfigurationId']
      end

      if attributes.has_key?(:'vendor')
        self.vendor = attributes[:'vendor']
      end

      if attributes.has_key?(:'manufacturer')
        self.manufacturer = attributes[:'manufacturer']
      end

      if attributes.has_key?(:'questions')
        if (value = attributes[:'questions']).is_a?(Array)
          self.questions = value
        end
      end

      if attributes.has_key?(:'activeFlag')
        self.active_flag = attributes[:'activeFlag']
      end

      if attributes.has_key?(:'managementLink')
        self.management_link = attributes[:'managementLink']
      end

      if attributes.has_key?(:'remoteLink')
        self.remote_link = attributes[:'remoteLink']
      end

      if attributes.has_key?(:'sla')
        self.sla = attributes[:'sla']
      end

      if attributes.has_key?(:'mobileGuid')
        self.mobile_guid = attributes[:'mobileGuid']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

      if attributes.has_key?(:'displayVendorFlag')
        self.display_vendor_flag = attributes[:'displayVendorFlag']
      end

      if attributes.has_key?(:'customFields')
        if (value = attributes[:'customFields']).is_a?(Array)
          self.custom_fields = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @name.to_s.length > 100
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 100.")
      end

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if @company.nil?
        invalid_properties.push("invalid value for 'company', company cannot be nil.")
      end

      if !@device_identifier.nil? && @device_identifier.to_s.length > 100
        invalid_properties.push("invalid value for 'device_identifier', the character length must be smaller than or equal to 100.")
      end

      if !@serial_number.nil? && @serial_number.to_s.length > 250
        invalid_properties.push("invalid value for 'serial_number', the character length must be smaller than or equal to 250.")
      end

      if !@model_number.nil? && @model_number.to_s.length > 50
        invalid_properties.push("invalid value for 'model_number', the character length must be smaller than or equal to 50.")
      end

      if !@tag_number.nil? && @tag_number.to_s.length > 50
        invalid_properties.push("invalid value for 'tag_number', the character length must be smaller than or equal to 50.")
      end

      if !@mac_address.nil? && @mac_address.to_s.length > 25
        invalid_properties.push("invalid value for 'mac_address', the character length must be smaller than or equal to 25.")
      end

      if !@last_login_name.nil? && @last_login_name.to_s.length > 100
        invalid_properties.push("invalid value for 'last_login_name', the character length must be smaller than or equal to 100.")
      end

      if !@backup_server_name.nil? && @backup_server_name.to_s.length > 50
        invalid_properties.push("invalid value for 'backup_server_name', the character length must be smaller than or equal to 50.")
      end

      if !@ip_address.nil? && @ip_address.to_s.length > 50
        invalid_properties.push("invalid value for 'ip_address', the character length must be smaller than or equal to 50.")
      end

      if !@default_gateway.nil? && @default_gateway.to_s.length > 50
        invalid_properties.push("invalid value for 'default_gateway', the character length must be smaller than or equal to 50.")
      end

      if !@os_type.nil? && @os_type.to_s.length > 250
        invalid_properties.push("invalid value for 'os_type', the character length must be smaller than or equal to 250.")
      end

      if !@os_info.nil? && @os_info.to_s.length > 250
        invalid_properties.push("invalid value for 'os_info', the character length must be smaller than or equal to 250.")
      end

      if !@cpu_speed.nil? && @cpu_speed.to_s.length > 100
        invalid_properties.push("invalid value for 'cpu_speed', the character length must be smaller than or equal to 100.")
      end

      if !@ram.nil? && @ram.to_s.length > 25
        invalid_properties.push("invalid value for 'ram', the character length must be smaller than or equal to 25.")
      end

      if !@management_link.nil? && @management_link.to_s.length > 200
        invalid_properties.push("invalid value for 'management_link', the character length must be smaller than or equal to 200.")
      end

      if !@remote_link.nil? && @remote_link.to_s.length > 200
        invalid_properties.push("invalid value for 'remote_link', the character length must be smaller than or equal to 200.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 100
      return false if @type.nil?
      return false if @company.nil?
      return false if !@device_identifier.nil? && @device_identifier.to_s.length > 100
      return false if !@serial_number.nil? && @serial_number.to_s.length > 250
      return false if !@model_number.nil? && @model_number.to_s.length > 50
      return false if !@tag_number.nil? && @tag_number.to_s.length > 50
      return false if !@mac_address.nil? && @mac_address.to_s.length > 25
      return false if !@last_login_name.nil? && @last_login_name.to_s.length > 100
      return false if !@backup_server_name.nil? && @backup_server_name.to_s.length > 50
      return false if !@ip_address.nil? && @ip_address.to_s.length > 50
      return false if !@default_gateway.nil? && @default_gateway.to_s.length > 50
      return false if !@os_type.nil? && @os_type.to_s.length > 250
      return false if !@os_info.nil? && @os_info.to_s.length > 250
      return false if !@cpu_speed.nil? && @cpu_speed.to_s.length > 100
      return false if !@ram.nil? && @ram.to_s.length > 25
      return false if !@management_link.nil? && @management_link.to_s.length > 200
      return false if !@remote_link.nil? && @remote_link.to_s.length > 200
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, "name cannot be nil"
      end

      if name.to_s.length > 100
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 100."
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] device_identifier Value to be assigned
    def device_identifier=(device_identifier)

      if !device_identifier.nil? && device_identifier.to_s.length > 100
        fail ArgumentError, "invalid value for 'device_identifier', the character length must be smaller than or equal to 100."
      end

      @device_identifier = device_identifier
    end

    # Custom attribute writer method with validation
    # @param [Object] serial_number Value to be assigned
    def serial_number=(serial_number)

      if !serial_number.nil? && serial_number.to_s.length > 250
        fail ArgumentError, "invalid value for 'serial_number', the character length must be smaller than or equal to 250."
      end

      @serial_number = serial_number
    end

    # Custom attribute writer method with validation
    # @param [Object] model_number Value to be assigned
    def model_number=(model_number)

      if !model_number.nil? && model_number.to_s.length > 50
        fail ArgumentError, "invalid value for 'model_number', the character length must be smaller than or equal to 50."
      end

      @model_number = model_number
    end

    # Custom attribute writer method with validation
    # @param [Object] tag_number Value to be assigned
    def tag_number=(tag_number)

      if !tag_number.nil? && tag_number.to_s.length > 50
        fail ArgumentError, "invalid value for 'tag_number', the character length must be smaller than or equal to 50."
      end

      @tag_number = tag_number
    end

    # Custom attribute writer method with validation
    # @param [Object] mac_address Value to be assigned
    def mac_address=(mac_address)

      if !mac_address.nil? && mac_address.to_s.length > 25
        fail ArgumentError, "invalid value for 'mac_address', the character length must be smaller than or equal to 25."
      end

      @mac_address = mac_address
    end

    # Custom attribute writer method with validation
    # @param [Object] last_login_name Value to be assigned
    def last_login_name=(last_login_name)

      if !last_login_name.nil? && last_login_name.to_s.length > 100
        fail ArgumentError, "invalid value for 'last_login_name', the character length must be smaller than or equal to 100."
      end

      @last_login_name = last_login_name
    end

    # Custom attribute writer method with validation
    # @param [Object] backup_server_name Value to be assigned
    def backup_server_name=(backup_server_name)

      if !backup_server_name.nil? && backup_server_name.to_s.length > 50
        fail ArgumentError, "invalid value for 'backup_server_name', the character length must be smaller than or equal to 50."
      end

      @backup_server_name = backup_server_name
    end

    # Custom attribute writer method with validation
    # @param [Object] ip_address Value to be assigned
    def ip_address=(ip_address)

      if !ip_address.nil? && ip_address.to_s.length > 50
        fail ArgumentError, "invalid value for 'ip_address', the character length must be smaller than or equal to 50."
      end

      @ip_address = ip_address
    end

    # Custom attribute writer method with validation
    # @param [Object] default_gateway Value to be assigned
    def default_gateway=(default_gateway)

      if !default_gateway.nil? && default_gateway.to_s.length > 50
        fail ArgumentError, "invalid value for 'default_gateway', the character length must be smaller than or equal to 50."
      end

      @default_gateway = default_gateway
    end

    # Custom attribute writer method with validation
    # @param [Object] os_type Value to be assigned
    def os_type=(os_type)

      if !os_type.nil? && os_type.to_s.length > 250
        fail ArgumentError, "invalid value for 'os_type', the character length must be smaller than or equal to 250."
      end

      @os_type = os_type
    end

    # Custom attribute writer method with validation
    # @param [Object] os_info Value to be assigned
    def os_info=(os_info)

      if !os_info.nil? && os_info.to_s.length > 250
        fail ArgumentError, "invalid value for 'os_info', the character length must be smaller than or equal to 250."
      end

      @os_info = os_info
    end

    # Custom attribute writer method with validation
    # @param [Object] cpu_speed Value to be assigned
    def cpu_speed=(cpu_speed)

      if !cpu_speed.nil? && cpu_speed.to_s.length > 100
        fail ArgumentError, "invalid value for 'cpu_speed', the character length must be smaller than or equal to 100."
      end

      @cpu_speed = cpu_speed
    end

    # Custom attribute writer method with validation
    # @param [Object] ram Value to be assigned
    def ram=(ram)

      if !ram.nil? && ram.to_s.length > 25
        fail ArgumentError, "invalid value for 'ram', the character length must be smaller than or equal to 25."
      end

      @ram = ram
    end

    # Custom attribute writer method with validation
    # @param [Object] management_link Value to be assigned
    def management_link=(management_link)

      if !management_link.nil? && management_link.to_s.length > 200
        fail ArgumentError, "invalid value for 'management_link', the character length must be smaller than or equal to 200."
      end

      @management_link = management_link
    end

    # Custom attribute writer method with validation
    # @param [Object] remote_link Value to be assigned
    def remote_link=(remote_link)

      if !remote_link.nil? && remote_link.to_s.length > 200
        fail ArgumentError, "invalid value for 'remote_link', the character length must be smaller than or equal to 200."
      end

      @remote_link = remote_link
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          type == o.type &&
          status == o.status &&
          company == o.company &&
          contact == o.contact &&
          site == o.site &&
          location_id == o.location_id &&
          business_unit_id == o.business_unit_id &&
          device_identifier == o.device_identifier &&
          serial_number == o.serial_number &&
          model_number == o.model_number &&
          tag_number == o.tag_number &&
          purchase_date == o.purchase_date &&
          installation_date == o.installation_date &&
          installed_by == o.installed_by &&
          warranty_expiration_date == o.warranty_expiration_date &&
          vendor_notes == o.vendor_notes &&
          notes == o.notes &&
          mac_address == o.mac_address &&
          last_login_name == o.last_login_name &&
          bill_flag == o.bill_flag &&
          backup_successes == o.backup_successes &&
          backup_incomplete == o.backup_incomplete &&
          backup_failed == o.backup_failed &&
          backup_restores == o.backup_restores &&
          last_backup_date == o.last_backup_date &&
          backup_server_name == o.backup_server_name &&
          backup_billable_space_gb == o.backup_billable_space_gb &&
          backup_protected_device_list == o.backup_protected_device_list &&
          backup_year == o.backup_year &&
          backup_month == o.backup_month &&
          ip_address == o.ip_address &&
          default_gateway == o.default_gateway &&
          os_type == o.os_type &&
          os_info == o.os_info &&
          cpu_speed == o.cpu_speed &&
          ram == o.ram &&
          local_hard_drives == o.local_hard_drives &&
          parent_configuration_id == o.parent_configuration_id &&
          vendor == o.vendor &&
          manufacturer == o.manufacturer &&
          questions == o.questions &&
          active_flag == o.active_flag &&
          management_link == o.management_link &&
          remote_link == o.remote_link &&
          sla == o.sla &&
          mobile_guid == o.mobile_guid &&
          _info == o._info &&
          display_vendor_flag == o.display_vendor_flag &&
          custom_fields == o.custom_fields
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, type, status, company, contact, site, location_id, business_unit_id, device_identifier, serial_number, model_number, tag_number, purchase_date, installation_date, installed_by, warranty_expiration_date, vendor_notes, notes, mac_address, last_login_name, bill_flag, backup_successes, backup_incomplete, backup_failed, backup_restores, last_backup_date, backup_server_name, backup_billable_space_gb, backup_protected_device_list, backup_year, backup_month, ip_address, default_gateway, os_type, os_info, cpu_speed, ram, local_hard_drives, parent_configuration_id, vendor, manufacturer, questions, active_flag, management_link, remote_link, sla, mobile_guid, _info, display_vendor_flag, custom_fields].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = ConnectWise.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
