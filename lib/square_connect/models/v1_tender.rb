=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SquareConnect

  class V1Tender
    # The tender's unique ID.
    attr_accessor :id

    # The type of tender.
    attr_accessor :type

    # A human-readable description of the tender.
    attr_accessor :name

    # The ID of the employee that processed the tender.
    attr_accessor :employee_id

    # The URL of the receipt for the tender.
    attr_accessor :receipt_url

    # The brand of credit card provided.
    attr_accessor :card_brand

    # The last four digits of the provided credit card's account number.
    attr_accessor :pan_suffix

    # The tender's unique ID.
    attr_accessor :entry_method

    # Notes entered by the merchant about the tender at the time of payment, if any. Typically only present for tender with the type: OTHER.
    attr_accessor :payment_note

    # The total amount of money provided in this form of tender.
    attr_accessor :total_money

    # The amount of total_money applied to the payment.
    attr_accessor :tendered_money

    # The amount of total_money returned to the buyer as change.
    attr_accessor :change_back_money

    # The total of all refunds applied to this tender. This amount is always negative or zero.
    attr_accessor :refunded_money

    # Indicates whether or not the tender is associated with an exchange. If is_exchange is true, the tender represents the value of goods returned in an exchange not the actual money paid. The exchange value reduces the tender amounts needed to pay for items purchased in the exchange.
    attr_accessor :is_exchange

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'type' => :'type',
        :'name' => :'name',
        :'employee_id' => :'employee_id',
        :'receipt_url' => :'receipt_url',
        :'card_brand' => :'card_brand',
        :'pan_suffix' => :'pan_suffix',
        :'entry_method' => :'entry_method',
        :'payment_note' => :'payment_note',
        :'total_money' => :'total_money',
        :'tendered_money' => :'tendered_money',
        :'change_back_money' => :'change_back_money',
        :'refunded_money' => :'refunded_money',
        :'is_exchange' => :'is_exchange'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'type' => :'String',
        :'name' => :'String',
        :'employee_id' => :'String',
        :'receipt_url' => :'String',
        :'card_brand' => :'String',
        :'pan_suffix' => :'String',
        :'entry_method' => :'String',
        :'payment_note' => :'String',
        :'total_money' => :'V1Money',
        :'tendered_money' => :'V1Money',
        :'change_back_money' => :'V1Money',
        :'refunded_money' => :'V1Money',
        :'is_exchange' => :'BOOLEAN'
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

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'employee_id')
        self.employee_id = attributes[:'employee_id']
      end

      if attributes.has_key?(:'receipt_url')
        self.receipt_url = attributes[:'receipt_url']
      end

      if attributes.has_key?(:'card_brand')
        self.card_brand = attributes[:'card_brand']
      end

      if attributes.has_key?(:'pan_suffix')
        self.pan_suffix = attributes[:'pan_suffix']
      end

      if attributes.has_key?(:'entry_method')
        self.entry_method = attributes[:'entry_method']
      end

      if attributes.has_key?(:'payment_note')
        self.payment_note = attributes[:'payment_note']
      end

      if attributes.has_key?(:'total_money')
        self.total_money = attributes[:'total_money']
      end

      if attributes.has_key?(:'tendered_money')
        self.tendered_money = attributes[:'tendered_money']
      end

      if attributes.has_key?(:'change_back_money')
        self.change_back_money = attributes[:'change_back_money']
      end

      if attributes.has_key?(:'refunded_money')
        self.refunded_money = attributes[:'refunded_money']
      end

      if attributes.has_key?(:'is_exchange')
        self.is_exchange = attributes[:'is_exchange']
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
      type_validator = EnumAttributeValidator.new('String', ["CREDIT_CARD", "CASH", "THIRD_PARTY_CARD", "NO_SALE", "SQUARE_WALLET", "SQUARE_GIFT_CARD", "UNKNOWN", "OTHER"])
      return false unless type_validator.valid?(@type)
      card_brand_validator = EnumAttributeValidator.new('String', ["OTHER_BRAND", "VISA", "MASTER_CARD", "AMERICAN_EXPRESS", "DISCOVER", "DISCOVER_DINERS", "JCB", "CHINA_UNIONPAY", "SQUARE_GIFT_CARD"])
      return false unless card_brand_validator.valid?(@card_brand)
      entry_method_validator = EnumAttributeValidator.new('String', ["MANUAL", "SCANNED", "SQUARE_CASH", "SQUARE_WALLET", "SWIPED", "WEB_FORM", "OTHER"])
      return false unless entry_method_validator.valid?(@entry_method)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["CREDIT_CARD", "CASH", "THIRD_PARTY_CARD", "NO_SALE", "SQUARE_WALLET", "SQUARE_GIFT_CARD", "UNKNOWN", "OTHER"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card_brand Object to be assigned
    def card_brand=(card_brand)
      validator = EnumAttributeValidator.new('String', ["OTHER_BRAND", "VISA", "MASTER_CARD", "AMERICAN_EXPRESS", "DISCOVER", "DISCOVER_DINERS", "JCB", "CHINA_UNIONPAY", "SQUARE_GIFT_CARD"])
      unless validator.valid?(card_brand)
        fail ArgumentError, "invalid value for 'card_brand', must be one of #{validator.allowable_values}."
      end
      @card_brand = card_brand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] entry_method Object to be assigned
    def entry_method=(entry_method)
      validator = EnumAttributeValidator.new('String', ["MANUAL", "SCANNED", "SQUARE_CASH", "SQUARE_WALLET", "SWIPED", "WEB_FORM", "OTHER"])
      unless validator.valid?(entry_method)
        fail ArgumentError, "invalid value for 'entry_method', must be one of #{validator.allowable_values}."
      end
      @entry_method = entry_method
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          type == o.type &&
          name == o.name &&
          employee_id == o.employee_id &&
          receipt_url == o.receipt_url &&
          card_brand == o.card_brand &&
          pan_suffix == o.pan_suffix &&
          entry_method == o.entry_method &&
          payment_note == o.payment_note &&
          total_money == o.total_money &&
          tendered_money == o.tendered_money &&
          change_back_money == o.change_back_money &&
          refunded_money == o.refunded_money &&
          is_exchange == o.is_exchange
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, type, name, employee_id, receipt_url, card_brand, pan_suffix, entry_method, payment_note, total_money, tendered_money, change_back_money, refunded_money, is_exchange].hash
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
        temp_model = SquareConnect.const_get(type).new
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
