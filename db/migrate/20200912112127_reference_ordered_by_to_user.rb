class ReferenceOrderedByToUser < ActiveRecord::Migration[6.0]
  def change
        add_reference :orders, :ordered_by, foreign_key: { to_table: :users }
  end
end
