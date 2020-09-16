class AddOrderedByToOrders2 < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :ordered_by_id, :integer, index: true
    add_foreign_key :orders, :users, column: :ordered_by_id
end
end
