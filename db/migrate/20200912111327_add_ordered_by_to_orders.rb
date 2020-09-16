class AddOrderedByToOrders < ActiveRecord::Migration[6.0]
  def change
      add_column :orders, :ordered_by, :integer

  end
end
