=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class TssV2TransactionsGet200ResponsePaymentInformation
    attr_accessor :payment_type

    attr_accessor :customer

    attr_accessor :card

    # This array contains the supported brands. 
    attr_accessor :brands

    attr_accessor :features

    attr_accessor :invoice

    attr_accessor :network

    attr_accessor :issuer_information

    attr_accessor :bank

    attr_accessor :account_features

    attr_accessor :payment_instrument

    attr_accessor :instrument_identifier

    attr_accessor :shipping_address

    attr_accessor :fluid_data

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'payment_type' => :'paymentType',
        :'customer' => :'customer',
        :'card' => :'card',
        :'brands' => :'brands',
        :'features' => :'features',
        :'invoice' => :'invoice',
        :'network' => :'network',
        :'issuer_information' => :'issuerInformation',
        :'bank' => :'bank',
        :'account_features' => :'accountFeatures',
        :'payment_instrument' => :'paymentInstrument',
        :'instrument_identifier' => :'instrumentIdentifier',
        :'shipping_address' => :'shippingAddress',
        :'fluid_data' => :'fluidData'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'payment_type' => :'payment_type',
        :'customer' => :'customer',
        :'card' => :'card',
        :'invoice' => :'invoice',
        :'bank' => :'bank',
        :'account_features' => :'account_features',
        :'payment_instrument' => :'payment_instrument',
        :'instrument_identifier' => :'instrument_identifier',
        :'shipping_address' => :'shipping_address',
        :'fluid_data' => :'fluid_data'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'payment_type' => :'TssV2TransactionsGet200ResponsePaymentInformationPaymentType',
        :'customer' => :'TssV2TransactionsGet200ResponsePaymentInformationCustomer',
        :'card' => :'TssV2TransactionsGet200ResponsePaymentInformationCard',
        :'brands' => :'Array<TssV2TransactionsGet200ResponsePaymentInformationBrands>',
        :'features' => :'TssV2TransactionsGet200ResponsePaymentInformationFeatures',
        :'invoice' => :'TssV2TransactionsGet200ResponsePaymentInformationInvoice',
        :'network' => :'TssV2TransactionsGet200ResponsePaymentInformationNetwork',
        :'issuer_information' => :'TssV2TransactionsGet200ResponsePaymentInformationIssuerInformation',
        :'bank' => :'TssV2TransactionsGet200ResponsePaymentInformationBank',
        :'account_features' => :'TssV2TransactionsGet200ResponsePaymentInformationAccountFeatures',
        :'payment_instrument' => :'PtsV2PaymentsPost201ResponseTokenInformationPaymentInstrument',
        :'instrument_identifier' => :'TssV2TransactionsGet200ResponsePaymentInformationInstrumentIdentifier',
        :'shipping_address' => :'PtsV2PaymentsPost201ResponseTokenInformationShippingAddress',
        :'fluid_data' => :'TssV2TransactionsGet200ResponsePaymentInformationFluidData'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'paymentType')
        self.payment_type = attributes[:'paymentType']
      end

      if attributes.has_key?(:'customer')
        self.customer = attributes[:'customer']
      end

      if attributes.has_key?(:'card')
        self.card = attributes[:'card']
      end

      if attributes.has_key?(:'brands')
        if (value = attributes[:'brands']).is_a?(Array)
          self.brands = value
        end
      end

      if attributes.has_key?(:'features')
        self.features = attributes[:'features']
      end

      if attributes.has_key?(:'invoice')
        self.invoice = attributes[:'invoice']
      end

      if attributes.has_key?(:'network')
        self.network = attributes[:'network']
      end

      if attributes.has_key?(:'issuerInformation')
        self.issuer_information = attributes[:'issuerInformation']
      end

      if attributes.has_key?(:'bank')
        self.bank = attributes[:'bank']
      end

      if attributes.has_key?(:'accountFeatures')
        self.account_features = attributes[:'accountFeatures']
      end

      if attributes.has_key?(:'paymentInstrument')
        self.payment_instrument = attributes[:'paymentInstrument']
      end

      if attributes.has_key?(:'instrumentIdentifier')
        self.instrument_identifier = attributes[:'instrumentIdentifier']
      end

      if attributes.has_key?(:'shippingAddress')
        self.shipping_address = attributes[:'shippingAddress']
      end

      if attributes.has_key?(:'fluidData')
        self.fluid_data = attributes[:'fluidData']
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          payment_type == o.payment_type &&
          customer == o.customer &&
          card == o.card &&
          brands == o.brands &&
          features == o.features &&
          invoice == o.invoice &&
          network == o.network &&
          issuer_information == o.issuer_information &&
          bank == o.bank &&
          account_features == o.account_features &&
          payment_instrument == o.payment_instrument &&
          instrument_identifier == o.instrument_identifier &&
          shipping_address == o.shipping_address &&
          fluid_data == o.fluid_data
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [payment_type, customer, card, brands, features, invoice, network, issuer_information, bank, account_features, payment_instrument, instrument_identifier, shipping_address, fluid_data].hash
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
