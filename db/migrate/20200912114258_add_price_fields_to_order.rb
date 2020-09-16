class AddPriceFieldsToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :handling_and_shipping, :decimal
    add_column :orders, :subtotal, :decimal
    add_column :orders, :taxes, :decimal
    add_column :orders, :total, :decimal
  end
end
