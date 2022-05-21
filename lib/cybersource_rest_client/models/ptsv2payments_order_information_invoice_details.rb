=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2paymentsOrderInformationInvoiceDetails
    # Invoice Number.
    attr_accessor :invoice_number

    # Barcode Number.
    attr_accessor :barcode_number

    # Expiration Date.
    attr_accessor :expiration_date

    # Value used by your customer to identify the order. This value is typically a purchase order number. CyberSource recommends that you do not populate the field with all zeros or nines.  For processor-specific information, see the `user_po` field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html) 
    attr_accessor :purchase_order_number

    # Date the order was processed. `Format: YYYY-MM-DD`.  For processor-specific information, see the `purchaser_order_date` field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html) 
    attr_accessor :purchase_order_date

    # The name of the individual or the company contacted for company authorized purchases.  For processor-specific information, see the `authorized_contact_name` field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html) 
    attr_accessor :purchase_contact_name

    # Flag that indicates whether an order is taxable. This value must be true if the sum of all _lineItems[].taxAmount_ values > 0.  If you do not include any `lineItems[].taxAmount` values in your request, CyberSource does not include `invoiceDetails.taxable` in the data it sends to the processor.  For processor-specific information, see the `tax_indicator` field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html)  Possible values:  - **true**  - **false** 
    attr_accessor :taxable

    # VAT invoice number associated with the transaction.  For processor-specific information, see the `vat_invoice_ref_number` field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html) 
    attr_accessor :vat_invoice_reference_number

    # International description code of the overall order’s goods or services or the Categorizes purchases for VAT reporting. Contact your acquirer for a list of codes.  For processor-specific information, see the `summary_commodity_code` field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html) 
    attr_accessor :commodity_code

    # Identifier for the merchandise. This field is supported only on the processors listed in this field description.  #### American Express Direct Possible value: - 1000: Gift card  #### CyberSource through VisaNet This value must be right justified. In Japan, this value is called a _goods code_.  #### JCN Gateway This value must be right justified. In Japan, this value is called a _goods code_. 
    attr_accessor :merchandise_code

    attr_accessor :transaction_advice_addendum

    # Code that identifies the value of the `referenceDataNumber` field.  For the possible values, see \"Reference Data Codes\" in [Level II and Level III Processing Using the SCMP API.](https://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html/).  This field is a pass-through, which means that CyberSource does not verify the value or modify it in any way before sending it to the processor. 
    attr_accessor :reference_data_code

    # Reference number. The meaning of this value is identified by the value of the `referenceDataCode` field.  This field is a pass-through, which means that CyberSource does not verify the value or modify it in any way before sending it to the processor. 
    attr_accessor :reference_data_number

    # Transaction identifier that is generated. You have the option of printing the sales slip number on the receipt. This field is supported only on Cybersource through Visanet and JCN gateway.  Optional field.  #### Card Present processing message If you included this field in the request, the returned value is the value that you sent in the request. If you did not include this field in the request, the system generated this value for you.  The difference between this reply field and the `processorInformation.systemTraceAuditNumber` field is that the system generates the system trace audit number (STAN), and you must print the receipt number on the receipt; whereas you can generate the sales slip number, and you can choose to print the sales slip number on the receipt. 
    attr_accessor :sales_slip_number

    # Date of the tax calculation. Use format YYYYMMDD. You can provide a date in the past if you are calculating tax for a refund and want to know what the tax was on the date the order was placed. You can provide a date in the future if you are calculating the tax for a future date, such as an upcoming tax holiday.  The default is the date, in Pacific time, that the bank receives the request. Keep this in mind if you are in a different time zone and want the tax calculated with the rates that are applicable on a specific date.  #### Tax Calculation Optional field for U.S., Canadian, international tax, and value added taxes. 
    attr_accessor :invoice_date

    # Cost centre of the merchant
    attr_accessor :cost_center

    # Text message from the issuer. If you give the customer a receipt, display this value on the receipt.
    attr_accessor :issuer_message

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'invoice_number' => :'invoiceNumber',
        :'barcode_number' => :'barcodeNumber',
        :'expiration_date' => :'expirationDate',
        :'purchase_order_number' => :'purchaseOrderNumber',
        :'purchase_order_date' => :'purchaseOrderDate',
        :'purchase_contact_name' => :'purchaseContactName',
        :'taxable' => :'taxable',
        :'vat_invoice_reference_number' => :'vatInvoiceReferenceNumber',
        :'commodity_code' => :'commodityCode',
        :'merchandise_code' => :'merchandiseCode',
        :'transaction_advice_addendum' => :'transactionAdviceAddendum',
        :'reference_data_code' => :'referenceDataCode',
        :'reference_data_number' => :'referenceDataNumber',
        :'sales_slip_number' => :'salesSlipNumber',
        :'invoice_date' => :'invoiceDate',
        :'cost_center' => :'costCenter',
        :'issuer_message' => :'issuerMessage'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'invoice_number' => :'String',
        :'barcode_number' => :'String',
        :'expiration_date' => :'String',
        :'purchase_order_number' => :'String',
        :'purchase_order_date' => :'String',
        :'purchase_contact_name' => :'String',
        :'taxable' => :'BOOLEAN',
        :'vat_invoice_reference_number' => :'String',
        :'commodity_code' => :'String',
        :'merchandise_code' => :'Integer',
        :'transaction_advice_addendum' => :'Array<Ptsv2paymentsOrderInformationInvoiceDetailsTransactionAdviceAddendum>',
        :'reference_data_code' => :'String',
        :'reference_data_number' => :'String',
        :'sales_slip_number' => :'Integer',
        :'invoice_date' => :'String',
        :'cost_center' => :'String',
        :'issuer_message' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'invoiceNumber')
        self.invoice_number = attributes[:'invoiceNumber']
      end

      if attributes.has_key?(:'barcodeNumber')
        self.barcode_number = attributes[:'barcodeNumber']
      end

      if attributes.has_key?(:'expirationDate')
        self.expiration_date = attributes[:'expirationDate']
      end

      if attributes.has_key?(:'purchaseOrderNumber')
        self.purchase_order_number = attributes[:'purchaseOrderNumber']
      end

      if attributes.has_key?(:'purchaseOrderDate')
        self.purchase_order_date = attributes[:'purchaseOrderDate']
      end

      if attributes.has_key?(:'purchaseContactName')
        self.purchase_contact_name = attributes[:'purchaseContactName']
      end

      if attributes.has_key?(:'taxable')
        self.taxable = attributes[:'taxable']
      end

      if attributes.has_key?(:'vatInvoiceReferenceNumber')
        self.vat_invoice_reference_number = attributes[:'vatInvoiceReferenceNumber']
      end

      if attributes.has_key?(:'commodityCode')
        self.commodity_code = attributes[:'commodityCode']
      end

      if attributes.has_key?(:'merchandiseCode')
        self.merchandise_code = attributes[:'merchandiseCode']
      end

      if attributes.has_key?(:'transactionAdviceAddendum')
        if (value = attributes[:'transactionAdviceAddendum']).is_a?(Array)
          self.transaction_advice_addendum = value
        end
      end

      if attributes.has_key?(:'referenceDataCode')
        self.reference_data_code = attributes[:'referenceDataCode']
      end

      if attributes.has_key?(:'referenceDataNumber')
        self.reference_data_number = attributes[:'referenceDataNumber']
      end

      if attributes.has_key?(:'salesSlipNumber')
        self.sales_slip_number = attributes[:'salesSlipNumber']
      end

      if attributes.has_key?(:'invoiceDate')
        self.invoice_date = attributes[:'invoiceDate']
      end

      if attributes.has_key?(:'costCenter')
        self.cost_center = attributes[:'costCenter']
      end

      if attributes.has_key?(:'issuerMessage')
        self.issuer_message = attributes[:'issuerMessage']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@sales_slip_number.nil? && @sales_slip_number > 99999
        invalid_properties.push('invalid value for "sales_slip_number", must be smaller than or equal to 99999.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@sales_slip_number.nil? && @sales_slip_number > 99999
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] purchase_order_number Value to be assigned
    def purchase_order_number=(purchase_order_number)
      @purchase_order_number = purchase_order_number
    end

    # Custom attribute writer method with validation
    # @param [Object] purchase_order_date Value to be assigned
    def purchase_order_date=(purchase_order_date)
      @purchase_order_date = purchase_order_date
    end

    # Custom attribute writer method with validation
    # @param [Object] purchase_contact_name Value to be assigned
    def purchase_contact_name=(purchase_contact_name)
      @purchase_contact_name = purchase_contact_name
    end

    # Custom attribute writer method with validation
    # @param [Object] vat_invoice_reference_number Value to be assigned
    def vat_invoice_reference_number=(vat_invoice_reference_number)
      @vat_invoice_reference_number = vat_invoice_reference_number
    end

    # Custom attribute writer method with validation
    # @param [Object] commodity_code Value to be assigned
    def commodity_code=(commodity_code)
      @commodity_code = commodity_code
    end

    # Custom attribute writer method with validation
    # @param [Object] reference_data_code Value to be assigned
    def reference_data_code=(reference_data_code)
      @reference_data_code = reference_data_code
    end

    # Custom attribute writer method with validation
    # @param [Object] reference_data_number Value to be assigned
    def reference_data_number=(reference_data_number)
      @reference_data_number = reference_data_number
    end

    # Custom attribute writer method with validation
    # @param [Object] sales_slip_number Value to be assigned
    def sales_slip_number=(sales_slip_number)
      if !sales_slip_number.nil? && sales_slip_number > 99999
        fail ArgumentError, 'invalid value for "sales_slip_number", must be smaller than or equal to 99999.'
      end

      @sales_slip_number = sales_slip_number
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice_date Value to be assigned
    def invoice_date=(invoice_date)
      @invoice_date = invoice_date
    end

    # Custom attribute writer method with validation
    # @param [Object] cost_center Value to be assigned
    def cost_center=(cost_center)
      @cost_center = cost_center
    end

    # Custom attribute writer method with validation
    # @param [Object] issuer_message Value to be assigned
    def issuer_message=(issuer_message)
      @issuer_message = issuer_message
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          invoice_number == o.invoice_number &&
          barcode_number == o.barcode_number &&
          expiration_date == o.expiration_date &&
          purchase_order_number == o.purchase_order_number &&
          purchase_order_date == o.purchase_order_date &&
          purchase_contact_name == o.purchase_contact_name &&
          taxable == o.taxable &&
          vat_invoice_reference_number == o.vat_invoice_reference_number &&
          commodity_code == o.commodity_code &&
          merchandise_code == o.merchandise_code &&
          transaction_advice_addendum == o.transaction_advice_addendum &&
          reference_data_code == o.reference_data_code &&
          reference_data_number == o.reference_data_number &&
          sales_slip_number == o.sales_slip_number &&
          invoice_date == o.invoice_date &&
          cost_center == o.cost_center &&
          issuer_message == o.issuer_message
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [invoice_number, barcode_number, expiration_date, purchase_order_number, purchase_order_date, purchase_contact_name, taxable, vat_invoice_reference_number, commodity_code, merchandise_code, transaction_advice_addendum, reference_data_code, reference_data_number, sales_slip_number, invoice_date, cost_center, issuer_message].hash
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
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
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
