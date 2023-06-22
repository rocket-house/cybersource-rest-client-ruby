=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2paymentsidrefundsClientReferenceInformation
    # Merchant-generated order reference or tracking number. It is recommended that you send a unique value for each transaction so that you can perform meaningful searches for the transaction.  #### Used by **Authorization** Required field.  #### PIN Debit Requests for PIN debit reversals need to use the same merchant reference number that was used in the transaction that is being reversed.  Required field for all PIN Debit requests (purchase, credit, and reversal).  #### FDC Nashville Global Certain circumstances can cause the processor to truncate this value to 15 or 17 characters for Level II and Level III processing, which can cause a discrepancy between the value you submit and the value included in some processor reports. 
    attr_accessor :code

    # Reference number for the transaction. Depending on how your Cybersource account is configured, this value could either be provided in the API request or generated by CyberSource. The actual value used in the request to the processor is provided back to you by Cybersource in the response. 
    attr_accessor :reconciliation_id

    # A new ID which is created for refund
    attr_accessor :return_reconciliation_id

    # Used to resume a transaction that was paused for an order modification rule to allow for payer authentication to complete. To resume and continue with the authorization/decision service flow, call the services and include the request id from the prior decision call. 
    attr_accessor :paused_request_id

    # Identifier that you assign to the transaction. Normally generated by a client server to identify a unique API request.  **Note** Use this field only if you want to support merchant-initiated reversal and void operations.  #### Used by **Authorization, Authorization Reversal, Capture, Credit, and Void** Optional field.  #### PIN Debit For a PIN debit reversal, your request must include a request ID or a merchant transaction identifier. Optional field for PIN debit purchase or credit requests. 
    attr_accessor :transaction_id

    # Comments
    attr_accessor :comments

    attr_accessor :partner

    # The name of the Connection Method client (such as Virtual Terminal or SOAP Toolkit API) that the merchant uses to send a transaction request to CyberSource. 
    attr_accessor :application_name

    # Version of the CyberSource application or integration used for a transaction. 
    attr_accessor :application_version

    # The entity that is responsible for running the transaction and submitting the processing request to CyberSource. This could be a person, a system, or a connection method. 
    attr_accessor :application_user

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'code' => :'code',
        :'reconciliation_id' => :'reconciliationId',
        :'return_reconciliation_id' => :'returnReconciliationId',
        :'paused_request_id' => :'pausedRequestId',
        :'transaction_id' => :'transactionId',
        :'comments' => :'comments',
        :'partner' => :'partner',
        :'application_name' => :'applicationName',
        :'application_version' => :'applicationVersion',
        :'application_user' => :'applicationUser'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'code' => :'code',
        :'reconciliation_id' => :'reconciliation_id',
        :'return_reconciliation_id' => :'return_reconciliation_id',
        :'paused_request_id' => :'paused_request_id',
        :'transaction_id' => :'transaction_id',
        :'comments' => :'comments',
        :'partner' => :'partner',
        :'application_name' => :'application_name',
        :'application_version' => :'application_version',
        :'application_user' => :'application_user'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'code' => :'String',
        :'reconciliation_id' => :'String',
        :'return_reconciliation_id' => :'String',
        :'paused_request_id' => :'String',
        :'transaction_id' => :'String',
        :'comments' => :'String',
        :'partner' => :'Ptsv2paymentsClientReferenceInformationPartner',
        :'application_name' => :'String',
        :'application_version' => :'String',
        :'application_user' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.has_key?(:'reconciliationId')
        self.reconciliation_id = attributes[:'reconciliationId']
      end

      if attributes.has_key?(:'returnReconciliationId')
        self.return_reconciliation_id = attributes[:'returnReconciliationId']
      end

      if attributes.has_key?(:'pausedRequestId')
        self.paused_request_id = attributes[:'pausedRequestId']
      end

      if attributes.has_key?(:'transactionId')
        self.transaction_id = attributes[:'transactionId']
      end

      if attributes.has_key?(:'comments')
        self.comments = attributes[:'comments']
      end

      if attributes.has_key?(:'partner')
        self.partner = attributes[:'partner']
      end

      if attributes.has_key?(:'applicationName')
        self.application_name = attributes[:'applicationName']
      end

      if attributes.has_key?(:'applicationVersion')
        self.application_version = attributes[:'applicationVersion']
      end

      if attributes.has_key?(:'applicationUser')
        self.application_user = attributes[:'applicationUser']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] code Value to be assigned
    def code=(code)
      @code = code
    end

    # Custom attribute writer method with validation
    # @param [Object] reconciliation_id Value to be assigned
    def reconciliation_id=(reconciliation_id)
      @reconciliation_id = reconciliation_id
    end

    # Custom attribute writer method with validation
    # @param [Object] paused_request_id Value to be assigned
    def paused_request_id=(paused_request_id)
      @paused_request_id = paused_request_id
    end

    # Custom attribute writer method with validation
    # @param [Object] transaction_id Value to be assigned
    def transaction_id=(transaction_id)
      @transaction_id = transaction_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          code == o.code &&
          reconciliation_id == o.reconciliation_id &&
          return_reconciliation_id == o.return_reconciliation_id &&
          paused_request_id == o.paused_request_id &&
          transaction_id == o.transaction_id &&
          comments == o.comments &&
          partner == o.partner &&
          application_name == o.application_name &&
          application_version == o.application_version &&
          application_user == o.application_user
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [code, reconciliation_id, return_reconciliation_id, paused_request_id, transaction_id, comments, partner, application_name, application_version, application_user].hash
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
            self.send("#{self.class.json_map[key]}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{self.class.json_map[key]}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
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
        temp_model = CyberSource.const_get(type).new
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
        value.compact.map { |v| _to_hash(v) }
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
