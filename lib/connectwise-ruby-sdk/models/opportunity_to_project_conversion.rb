
require 'date'

module ConnectWise

  class OpportunityToProjectConversion
    attr_accessor :project_id

    attr_accessor :name

    attr_accessor :status

    attr_accessor :location_id

    attr_accessor :business_unit_id

    attr_accessor :board

    attr_accessor :manager

    attr_accessor :estimated_start

    attr_accessor :estimated_end

    attr_accessor :include_all_notes_flag

    attr_accessor :include_all_documents_flag

    attr_accessor :include_all_products_flag

    attr_accessor :include_note_ids

    attr_accessor :include_document_ids

    attr_accessor :include_product_ids


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'project_id' => :'projectId',
        :'name' => :'name',
        :'status' => :'status',
        :'location_id' => :'locationId',
        :'business_unit_id' => :'businessUnitId',
        :'board' => :'board',
        :'manager' => :'manager',
        :'estimated_start' => :'estimatedStart',
        :'estimated_end' => :'estimatedEnd',
        :'include_all_notes_flag' => :'includeAllNotesFlag',
        :'include_all_documents_flag' => :'includeAllDocumentsFlag',
        :'include_all_products_flag' => :'includeAllProductsFlag',
        :'include_note_ids' => :'includeNoteIds',
        :'include_document_ids' => :'includeDocumentIds',
        :'include_product_ids' => :'includeProductIds'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'project_id' => :'Integer',
        :'name' => :'String',
        :'status' => :'ProjectStatusReference',
        :'location_id' => :'Integer',
        :'business_unit_id' => :'Integer',
        :'board' => :'ProjectBoardReference',
        :'manager' => :'MemberReference',
        :'estimated_start' => :'String',
        :'estimated_end' => :'String',
        :'include_all_notes_flag' => :'BOOLEAN',
        :'include_all_documents_flag' => :'BOOLEAN',
        :'include_all_products_flag' => :'BOOLEAN',
        :'include_note_ids' => :'Array<Integer>',
        :'include_document_ids' => :'Array<Integer>',
        :'include_product_ids' => :'Array<Integer>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'projectId')
        self.project_id = attributes[:'projectId']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'locationId')
        self.location_id = attributes[:'locationId']
      end

      if attributes.has_key?(:'businessUnitId')
        self.business_unit_id = attributes[:'businessUnitId']
      end

      if attributes.has_key?(:'board')
        self.board = attributes[:'board']
      end

      if attributes.has_key?(:'manager')
        self.manager = attributes[:'manager']
      end

      if attributes.has_key?(:'estimatedStart')
        self.estimated_start = attributes[:'estimatedStart']
      end

      if attributes.has_key?(:'estimatedEnd')
        self.estimated_end = attributes[:'estimatedEnd']
      end

      if attributes.has_key?(:'includeAllNotesFlag')
        self.include_all_notes_flag = attributes[:'includeAllNotesFlag']
      end

      if attributes.has_key?(:'includeAllDocumentsFlag')
        self.include_all_documents_flag = attributes[:'includeAllDocumentsFlag']
      end

      if attributes.has_key?(:'includeAllProductsFlag')
        self.include_all_products_flag = attributes[:'includeAllProductsFlag']
      end

      if attributes.has_key?(:'includeNoteIds')
        if (value = attributes[:'includeNoteIds']).is_a?(Array)
          self.include_note_ids = value
        end
      end

      if attributes.has_key?(:'includeDocumentIds')
        if (value = attributes[:'includeDocumentIds']).is_a?(Array)
          self.include_document_ids = value
        end
      end

      if attributes.has_key?(:'includeProductIds')
        if (value = attributes[:'includeProductIds']).is_a?(Array)
          self.include_product_ids = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          project_id == o.project_id &&
          name == o.name &&
          status == o.status &&
          location_id == o.location_id &&
          business_unit_id == o.business_unit_id &&
          board == o.board &&
          manager == o.manager &&
          estimated_start == o.estimated_start &&
          estimated_end == o.estimated_end &&
          include_all_notes_flag == o.include_all_notes_flag &&
          include_all_documents_flag == o.include_all_documents_flag &&
          include_all_products_flag == o.include_all_products_flag &&
          include_note_ids == o.include_note_ids &&
          include_document_ids == o.include_document_ids &&
          include_product_ids == o.include_product_ids
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [project_id, name, status, location_id, business_unit_id, board, manager, estimated_start, estimated_end, include_all_notes_flag, include_all_documents_flag, include_all_products_flag, include_note_ids, include_document_ids, include_product_ids].hash
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
