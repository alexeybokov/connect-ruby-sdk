=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SquareConnect
  class CustomerCardApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # CreateCustomerCard
    # Adds a card on file to an existing customer.
    # @param customer_id The ID of the customer to link the card on file to.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [CreateCustomerCardResponse]
    def create_customer_card(customer_id, body, opts = {})
      data, _status_code, _headers = create_customer_card_with_http_info(customer_id, body, opts)
      return data
    end

    # CreateCustomerCard
    # Adds a card on file to an existing customer.
    # @param customer_id The ID of the customer to link the card on file to.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateCustomerCardResponse, Fixnum, Hash)>] CreateCustomerCardResponse data, response status code and response headers
    def create_customer_card_with_http_info(customer_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomerCardApi.create_customer_card ..."
      end
      # verify the required parameter 'customer_id' is set
      fail ArgumentError, "Missing the required parameter 'customer_id' when calling CustomerCardApi.create_customer_card" if customer_id.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling CustomerCardApi.create_customer_card" if body.nil?
      # resource path
      local_var_path = "/v2/customers/{customer_id}/cards".sub('{format}','json').sub('{' + 'customer_id' + '}', customer_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreateCustomerCardResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerCardApi#create_customer_card\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # DeleteCustomerCard
    # Removes a card on file from a customer.
    # @param customer_id The ID of the customer that the card on file belongs to.
    # @param card_id The ID of the card on file to delete.
    # @param [Hash] opts the optional parameters
    # @return [DeleteCustomerCardResponse]
    def delete_customer_card(customer_id, card_id, opts = {})
      data, _status_code, _headers = delete_customer_card_with_http_info(customer_id, card_id, opts)
      return data
    end

    # DeleteCustomerCard
    # Removes a card on file from a customer.
    # @param customer_id The ID of the customer that the card on file belongs to.
    # @param card_id The ID of the card on file to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteCustomerCardResponse, Fixnum, Hash)>] DeleteCustomerCardResponse data, response status code and response headers
    def delete_customer_card_with_http_info(customer_id, card_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomerCardApi.delete_customer_card ..."
      end
      # verify the required parameter 'customer_id' is set
      fail ArgumentError, "Missing the required parameter 'customer_id' when calling CustomerCardApi.delete_customer_card" if customer_id.nil?
      # verify the required parameter 'card_id' is set
      fail ArgumentError, "Missing the required parameter 'card_id' when calling CustomerCardApi.delete_customer_card" if card_id.nil?
      # resource path
      local_var_path = "/v2/customers/{customer_id}/cards/{card_id}".sub('{format}','json').sub('{' + 'customer_id' + '}', customer_id.to_s).sub('{' + 'card_id' + '}', card_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DeleteCustomerCardResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerCardApi#delete_customer_card\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
