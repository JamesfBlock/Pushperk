json.extract! order, :id, :campaign_id, :order_date, :status, :title, :first_name, :last_name, :address_line_1, :address_line_2, :address_line_3, :city, :county, :country, :postcode, :created_at, :updated_at, :ordered_by_id, :total, :subtotal, :taxes, :handling_and_shipping
json.url order_url(order, format: :json)
