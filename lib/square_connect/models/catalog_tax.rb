=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SquareConnect
  # A tax in the Catalog object model.
  class CatalogTax
    # The tax's name. Searchable.
    attr_accessor :name

    # Whether the tax is calculated based on a payment's subtotal or total. See [TaxCalculationPhase](#type-taxcalculationphase) for all possible values.
    attr_accessor :calculation_phase

    # Whether the tax is `ADDITIVE` or `INCLUSIVE`. See [TaxInclusionType](#type-taxinclusiontype) for all possible values.
    attr_accessor :inclusion_type

    # The percentage of the tax in decimal form, using a '.' as the decimal separator and without a '%' sign. A value of `7.5` corresponds to 7.5%.
    attr_accessor :percentage

    # If `true`, the fee applies to custom amounts entered into the Square Point of Sale app that are not associated with a particular [CatalogItem](#type-catalogitem).
    attr_accessor :applies_to_custom_amounts

    # If `true`, the tax will be shown as enabled in the Square Point of Sale app.
    attr_accessor :enabled

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
        :'name' => :'name',
        :'calculation_phase' => :'calculation_phase',
        :'inclusion_type' => :'inclusion_type',
        :'percentage' => :'percentage',
        :'applies_to_custom_amounts' => :'applies_to_custom_amounts',
        :'enabled' => :'enabled'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'calculation_phase' => :'String',
        :'inclusion_type' => :'String',
        :'percentage' => :'String',
        :'applies_to_custom_amounts' => :'BOOLEAN',
        :'enabled' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'calculation_phase')
        self.calculation_phase = attributes[:'calculation_phase']
      end

      if attributes.has_key?(:'inclusion_type')
        self.inclusion_type = attributes[:'inclusion_type']
      end

      if attributes.has_key?(:'percentage')
        self.percentage = attributes[:'percentage']
      end

      if attributes.has_key?(:'applies_to_custom_amounts')
        self.applies_to_custom_amounts = attributes[:'applies_to_custom_amounts']
      end

      if attributes.has_key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @name.to_s.length < 1
        invalid_properties.push("invalid value for 'name', the character length must be great than or equal to 1.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length < 1
      calculation_phase_validator = EnumAttributeValidator.new('String', ["TAX_SUBTOTAL_PHASE", "TAX_TOTAL_PHASE"])
      return false unless calculation_phase_validator.valid?(@calculation_phase)
      inclusion_type_validator = EnumAttributeValidator.new('String', ["ADDITIVE", "INCLUSIVE"])
      return false unless inclusion_type_validator.valid?(@inclusion_type)
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, "name cannot be nil"
      end

      if name.to_s.length < 1
        fail ArgumentError, "invalid value for 'name', the character length must be great than or equal to 1."
      end

      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] calculation_phase Object to be assigned
    def calculation_phase=(calculation_phase)
      validator = EnumAttributeValidator.new('String', ["TAX_SUBTOTAL_PHASE", "TAX_TOTAL_PHASE"])
      unless validator.valid?(calculation_phase)
        fail ArgumentError, "invalid value for 'calculation_phase', must be one of #{validator.allowable_values}."
      end
      @calculation_phase = calculation_phase
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] inclusion_type Object to be assigned
    def inclusion_type=(inclusion_type)
      validator = EnumAttributeValidator.new('String', ["ADDITIVE", "INCLUSIVE"])
      unless validator.valid?(inclusion_type)
        fail ArgumentError, "invalid value for 'inclusion_type', must be one of #{validator.allowable_values}."
      end
      @inclusion_type = inclusion_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          calculation_phase == o.calculation_phase &&
          inclusion_type == o.inclusion_type &&
          percentage == o.percentage &&
          applies_to_custom_amounts == o.applies_to_custom_amounts &&
          enabled == o.enabled
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, calculation_phase, inclusion_type, percentage, applies_to_custom_amounts, enabled].hash
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
