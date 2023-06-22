=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class PtsV2PaymentsReversalsPost201ResponseProcessorInformation
    # Processor transaction ID.  This value identifies the transaction on a host system. This value is supported only for Moneris. It contains this information:   - Terminal used to process the transaction  - Shift during which the transaction took place  - Batch number  - Transaction number within the batch  You must store this value. If you give the customer a receipt, display this value on the receipt.  Example For the value 66012345001069003:   - Terminal ID = 66012345  - Shift number = 001  - Batch number = 069  - Transaction number = 003 
    attr_accessor :transaction_id

    # For most processors, this is the error message sent directly from the bank. Returned only when the processor returns this value.  **Important** Do not use this field to evaluate the result of the authorization.  #### PIN debit Response value that is returned by the processor or bank. **Important** Do not use this field to evaluate the results of the transaction request.  Returned by PIN debit credit, PIN debit purchase, and PIN debit reversal.  #### AIBMS If this value is `08`, you can accept the transaction if the customer provides you with identification.  #### Atos This value is the response code sent from Atos and it might also include the response code from the bank. Format: `aa,bb` with the two values separated by a comma and where: - `aa` is the two-digit error message from Atos. - `bb` is the optional two-digit error message from the bank.  #### Comercio Latino This value is the status code and the error or response code received from the processor separated by a colon. Format: [status code]:E[error code] or [status code]:R[response code] Example `2:R06`  #### JCN Gateway Processor-defined detail error code. The associated response category code is in the `processorInformation.responseCategoryCode` field. String (3) 
    attr_accessor :response_code

    # Processor-defined response category code. The associated detail error code is in the `processorInformation.responseCode` or `issuerInformation.responseCode` field of the service you requested.  This field is supported only for:   - Japanese issuers  - Domestic transactions in Japan  - Comercio Latino—processor transaction ID required for troubleshooting  #### Maximum length for processors   - Comercio Latino: 36  - All other processors: 3 
    attr_accessor :response_category_code

    # Name of the Japanese acquirer that processed the transaction. Returned only for JCN Gateway. Please contact the CyberSource Japan Support Group for more information. 
    attr_accessor :forwarded_acquirer_code

    # Mastercard service that was used for the transaction. Mastercard provides this value to CyberSource.  Possible value:  - 53: Mastercard card-on-file token service  #### CyberSource through VisaNet The value for this field corresponds to the following data in the TC 33 capture file: - Record: CP01 TCR6 - Position: 133-134 - Field: Mastercard Merchant on-behalf service. **Note** This field is returned only for CyberSource through VisaNet. 
    attr_accessor :master_card_service_code

    # Result of the Mastercard card-on-file token service. Mastercard provides this value to CyberSource.  Possible values:   - `C`: Service completed successfully.  - `F`: One of the following:    - Incorrect Mastercard POS entry mode. The Mastercard POS entry mode should be 81 for an authorization or      authorization reversal.    - Incorrect Mastercard POS entry mode. The Mastercard POS entry mode should be 01 for a tokenized request.    - Token requestor ID is missing or formatted incorrectly.  - `I`: One of the following:    - Invalid token requestor ID.    - Suspended or deactivated token.    - Invalid token (not in mapping table).  - `T`: Invalid combination of token requestor ID and token.  - `U`: Expired token.  - `W`: Primary account number (PAN) listed in electronic warning bulletin.  **Note** This field is returned only for **CyberSource through VisaNet**. 
    attr_accessor :master_card_service_reply_code

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'transaction_id' => :'transactionId',
        :'response_code' => :'responseCode',
        :'response_category_code' => :'responseCategoryCode',
        :'forwarded_acquirer_code' => :'forwardedAcquirerCode',
        :'master_card_service_code' => :'masterCardServiceCode',
        :'master_card_service_reply_code' => :'masterCardServiceReplyCode'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'transaction_id' => :'transaction_id',
        :'response_code' => :'response_code',
        :'response_category_code' => :'response_category_code',
        :'forwarded_acquirer_code' => :'forwarded_acquirer_code',
        :'master_card_service_code' => :'master_card_service_code',
        :'master_card_service_reply_code' => :'master_card_service_reply_code'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'transaction_id' => :'String',
        :'response_code' => :'String',
        :'response_category_code' => :'String',
        :'forwarded_acquirer_code' => :'String',
        :'master_card_service_code' => :'String',
        :'master_card_service_reply_code' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'transactionId')
        self.transaction_id = attributes[:'transactionId']
      end

      if attributes.has_key?(:'responseCode')
        self.response_code = attributes[:'responseCode']
      end

      if attributes.has_key?(:'responseCategoryCode')
        self.response_category_code = attributes[:'responseCategoryCode']
      end

      if attributes.has_key?(:'forwardedAcquirerCode')
        self.forwarded_acquirer_code = attributes[:'forwardedAcquirerCode']
      end

      if attributes.has_key?(:'masterCardServiceCode')
        self.master_card_service_code = attributes[:'masterCardServiceCode']
      end

      if attributes.has_key?(:'masterCardServiceReplyCode')
        self.master_card_service_reply_code = attributes[:'masterCardServiceReplyCode']
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
    # @param [Object] transaction_id Value to be assigned
    def transaction_id=(transaction_id)
      @transaction_id = transaction_id
    end

    # Custom attribute writer method with validation
    # @param [Object] response_code Value to be assigned
    def response_code=(response_code)
      @response_code = response_code
    end

    # Custom attribute writer method with validation
    # @param [Object] response_category_code Value to be assigned
    def response_category_code=(response_category_code)
      @response_category_code = response_category_code
    end

    # Custom attribute writer method with validation
    # @param [Object] forwarded_acquirer_code Value to be assigned
    def forwarded_acquirer_code=(forwarded_acquirer_code)
      @forwarded_acquirer_code = forwarded_acquirer_code
    end

    # Custom attribute writer method with validation
    # @param [Object] master_card_service_code Value to be assigned
    def master_card_service_code=(master_card_service_code)
      @master_card_service_code = master_card_service_code
    end

    # Custom attribute writer method with validation
    # @param [Object] master_card_service_reply_code Value to be assigned
    def master_card_service_reply_code=(master_card_service_reply_code)
      @master_card_service_reply_code = master_card_service_reply_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          transaction_id == o.transaction_id &&
          response_code == o.response_code &&
          response_category_code == o.response_category_code &&
          forwarded_acquirer_code == o.forwarded_acquirer_code &&
          master_card_service_code == o.master_card_service_code &&
          master_card_service_reply_code == o.master_card_service_reply_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [transaction_id, response_code, response_category_code, forwarded_acquirer_code, master_card_service_code, master_card_service_reply_code].hash
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
