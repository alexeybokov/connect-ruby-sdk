=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

# Common files
require 'square_connect/api_client'
require 'square_connect/api_error'
require 'square_connect/version'
require 'square_connect/configuration'

# Models
require 'square_connect/models/additional_recipient'
require 'square_connect/models/additional_recipient_receivable'
require 'square_connect/models/additional_recipient_receivable_refund'
require 'square_connect/models/address'
require 'square_connect/models/batch_delete_catalog_objects_request'
require 'square_connect/models/batch_delete_catalog_objects_response'
require 'square_connect/models/batch_retrieve_catalog_objects_request'
require 'square_connect/models/batch_retrieve_catalog_objects_response'
require 'square_connect/models/batch_retrieve_orders_request'
require 'square_connect/models/batch_retrieve_orders_response'
require 'square_connect/models/batch_upsert_catalog_objects_request'
require 'square_connect/models/batch_upsert_catalog_objects_response'
require 'square_connect/models/capture_transaction_request'
require 'square_connect/models/capture_transaction_response'
require 'square_connect/models/card'
require 'square_connect/models/card_brand'
require 'square_connect/models/catalog_category'
require 'square_connect/models/catalog_discount'
require 'square_connect/models/catalog_discount_type'
require 'square_connect/models/catalog_id_mapping'
require 'square_connect/models/catalog_info_request'
require 'square_connect/models/catalog_info_response'
require 'square_connect/models/catalog_info_response_limits'
require 'square_connect/models/catalog_item'
require 'square_connect/models/catalog_item_modifier_list_info'
require 'square_connect/models/catalog_item_product_type'
require 'square_connect/models/catalog_item_variation'
require 'square_connect/models/catalog_modifier'
require 'square_connect/models/catalog_modifier_list'
require 'square_connect/models/catalog_modifier_list_selection_type'
require 'square_connect/models/catalog_modifier_override'
require 'square_connect/models/catalog_object'
require 'square_connect/models/catalog_object_batch'
require 'square_connect/models/catalog_object_type'
require 'square_connect/models/catalog_pricing_type'
require 'square_connect/models/catalog_query'
require 'square_connect/models/catalog_query_exact'
require 'square_connect/models/catalog_query_items_for_modifier_list'
require 'square_connect/models/catalog_query_items_for_tax'
require 'square_connect/models/catalog_query_prefix'
require 'square_connect/models/catalog_query_range'
require 'square_connect/models/catalog_query_sorted_attribute'
require 'square_connect/models/catalog_query_text'
require 'square_connect/models/catalog_tax'
require 'square_connect/models/catalog_v1_id'
require 'square_connect/models/charge_request'
require 'square_connect/models/charge_request_additional_recipient'
require 'square_connect/models/charge_response'
require 'square_connect/models/checkout'
require 'square_connect/models/country'
require 'square_connect/models/create_checkout_request'
require 'square_connect/models/create_checkout_response'
require 'square_connect/models/create_customer_card_request'
require 'square_connect/models/create_customer_card_response'
require 'square_connect/models/create_customer_request'
require 'square_connect/models/create_customer_response'
require 'square_connect/models/create_order_request'
require 'square_connect/models/create_order_request_discount'
require 'square_connect/models/create_order_request_line_item'
require 'square_connect/models/create_order_request_modifier'
require 'square_connect/models/create_order_request_tax'
require 'square_connect/models/create_order_response'
require 'square_connect/models/create_refund_request'
require 'square_connect/models/create_refund_response'
require 'square_connect/models/currency'
require 'square_connect/models/customer'
require 'square_connect/models/customer_group_info'
require 'square_connect/models/customer_preferences'
require 'square_connect/models/customer_sort_field'
require 'square_connect/models/delete_catalog_object_request'
require 'square_connect/models/delete_catalog_object_response'
require 'square_connect/models/delete_customer_card_request'
require 'square_connect/models/delete_customer_card_response'
require 'square_connect/models/delete_customer_request'
require 'square_connect/models/delete_customer_response'
require 'square_connect/models/device'
require 'square_connect/models/error'
require 'square_connect/models/error_category'
require 'square_connect/models/error_code'
require 'square_connect/models/inventory_alert_type'
require 'square_connect/models/item_variation_location_overrides'
require 'square_connect/models/list_additional_recipient_receivable_refunds_request'
require 'square_connect/models/list_additional_recipient_receivable_refunds_response'
require 'square_connect/models/list_additional_recipient_receivables_request'
require 'square_connect/models/list_additional_recipient_receivables_response'
require 'square_connect/models/list_catalog_request'
require 'square_connect/models/list_catalog_response'
require 'square_connect/models/list_customers_request'
require 'square_connect/models/list_customers_response'
require 'square_connect/models/list_locations_request'
require 'square_connect/models/list_locations_response'
require 'square_connect/models/list_refunds_request'
require 'square_connect/models/list_refunds_response'
require 'square_connect/models/list_transactions_request'
require 'square_connect/models/list_transactions_response'
require 'square_connect/models/location'
require 'square_connect/models/location_capability'
require 'square_connect/models/location_status'
require 'square_connect/models/location_type'
require 'square_connect/models/money'
require 'square_connect/models/order'
require 'square_connect/models/order_line_item'
require 'square_connect/models/order_line_item_discount'
require 'square_connect/models/order_line_item_discount_scope'
require 'square_connect/models/order_line_item_discount_type'
require 'square_connect/models/order_line_item_modifier'
require 'square_connect/models/order_line_item_tax'
require 'square_connect/models/order_line_item_tax_type'
require 'square_connect/models/refund'
require 'square_connect/models/refund_status'
require 'square_connect/models/register_domain_request'
require 'square_connect/models/register_domain_response'
require 'square_connect/models/register_domain_response_status'
require 'square_connect/models/retrieve_catalog_object_request'
require 'square_connect/models/retrieve_catalog_object_response'
require 'square_connect/models/retrieve_customer_request'
require 'square_connect/models/retrieve_customer_response'
require 'square_connect/models/retrieve_transaction_request'
require 'square_connect/models/retrieve_transaction_response'
require 'square_connect/models/search_catalog_objects_request'
require 'square_connect/models/search_catalog_objects_response'
require 'square_connect/models/sort_order'
require 'square_connect/models/tax_calculation_phase'
require 'square_connect/models/tax_inclusion_type'
require 'square_connect/models/tender'
require 'square_connect/models/tender_card_details'
require 'square_connect/models/tender_card_details_entry_method'
require 'square_connect/models/tender_card_details_status'
require 'square_connect/models/tender_cash_details'
require 'square_connect/models/tender_type'
require 'square_connect/models/transaction'
require 'square_connect/models/transaction_product'
require 'square_connect/models/update_customer_request'
require 'square_connect/models/update_customer_response'
require 'square_connect/models/update_item_modifier_lists_request'
require 'square_connect/models/update_item_modifier_lists_response'
require 'square_connect/models/update_item_taxes_request'
require 'square_connect/models/update_item_taxes_response'
require 'square_connect/models/upsert_catalog_object_request'
require 'square_connect/models/upsert_catalog_object_response'
require 'square_connect/models/v1_adjust_inventory_request'
require 'square_connect/models/v1_bank_account'
require 'square_connect/models/v1_cash_drawer_event'
require 'square_connect/models/v1_cash_drawer_shift'
require 'square_connect/models/v1_category'
require 'square_connect/models/v1_create_refund_request'
require 'square_connect/models/v1_discount'
require 'square_connect/models/v1_employee'
require 'square_connect/models/v1_employee_role'
require 'square_connect/models/v1_fee'
require 'square_connect/models/v1_inventory_entry'
require 'square_connect/models/v1_item'
require 'square_connect/models/v1_item_image'
require 'square_connect/models/v1_merchant'
require 'square_connect/models/v1_merchant_location_details'
require 'square_connect/models/v1_modifier_list'
require 'square_connect/models/v1_modifier_option'
require 'square_connect/models/v1_money'
require 'square_connect/models/v1_order'
require 'square_connect/models/v1_order_history_entry'
require 'square_connect/models/v1_page'
require 'square_connect/models/v1_page_cell'
require 'square_connect/models/v1_payment'
require 'square_connect/models/v1_payment_discount'
require 'square_connect/models/v1_payment_item_detail'
require 'square_connect/models/v1_payment_itemization'
require 'square_connect/models/v1_payment_modifier'
require 'square_connect/models/v1_payment_surcharge'
require 'square_connect/models/v1_payment_tax'
require 'square_connect/models/v1_phone_number'
require 'square_connect/models/v1_refund'
require 'square_connect/models/v1_settlement'
require 'square_connect/models/v1_settlement_entry'
require 'square_connect/models/v1_tender'
require 'square_connect/models/v1_timecard'
require 'square_connect/models/v1_timecard_event'
require 'square_connect/models/v1_update_modifier_list_request'
require 'square_connect/models/v1_update_order_request'
require 'square_connect/models/v1_variation'
require 'square_connect/models/void_transaction_request'
require 'square_connect/models/void_transaction_response'

# APIs
require 'square_connect/api/apple_pay_api'
require 'square_connect/api/catalog_api'
require 'square_connect/api/checkout_api'
require 'square_connect/api/customers_api'
require 'square_connect/api/locations_api'
require 'square_connect/api/orders_api'
require 'square_connect/api/reporting_api'
require 'square_connect/api/transactions_api'
require 'square_connect/api/v1_employees_api'
require 'square_connect/api/v1_items_api'
require 'square_connect/api/v1_locations_api'
require 'square_connect/api/v1_transactions_api'

module SquareConnect
  class << self
    # Customize default settings for the SDK using block.
    #   SquareConnect.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
